defmodule Issues.GithubIssues do
  require Logger

  @user_agent [{"User-agent", "Programming Elixir"}]
  @github_url Application.get_env(:issues, :github_url)

  def fetch(user, project) do
    Logger.info("Fetching #{user}'s project #{project}")

    issues_url(user, project)
    |> HTTPoison.get(@user_agent)
    |> handle_response
  end

  defp issues_url(user, project) do
    "#{@github_url}/repos/#{user}/#{project}/issues"
  end

  defp handle_response({_, %{status_code: status_code, body: body}}) do
    Logger.info("Got response: status code=#{status_code}")
    {if(status_code === 200, do: :ok, else: :error), Poison.Parser.parse!(body)}
  end

  def sort_into_descending_order(issues) do
    Enum.sort(issues, fn issue_1, issue_2 ->
      issue_1["created_at"] >= issue_2["created_at"]
    end)
  end
end
