defmodule Issues.CLI do
  @default_count 4

  @moduledoc """
  Handle the command line parsing and the dispatch to the various functions that
  end up generating a table of the last _n_ issues in a github project
  """

  def main(argv) do
    parse_args(argv)
    |> process
  end

  def parse_args(argv) do
    parse = OptionParser.parse(argv, switches: [help: :boolean], aliases: [:h, :help])

    case parse do
      {[help: true], _, _} -> :help
      {_, [user, project, count], _} -> {user, project, String.to_integer(count)}
      {_, [user, project], _} -> {user, project, @default_count}
      _ -> :help
    end
  end

  def process(:help) do
    IO.puts("""
    usage: issues <user> <project> [ count | #{@default_count} ]
    """)

    System.halt(0)
  end

  def process({user, project, count}) do
    Issues.GithubIssues.fetch(user, project)
    |> Enum.take(count)
    |> Enum.reverse()
  end
end
