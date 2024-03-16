defmodule Duper.Results do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, :no_args, name: __MODULE__)
  end

  def add_hash_for(path, hash) do
    GenServer.cast(__MODULE__, {:add, path, hash})
  end

  def find_duplicates() do
    GenServer.call(__MODULE__, :find_duplicates)
  end

  def init(:no_args) do
    {:ok, %{}}
  end

  def handle_cast({:add, path, hash}, results) do
    results = Map.update(results, hash, [path], fn paths -> [path | paths] end)
    {:noreply, results}
  end

  def handle_call(:find_duplicates, _from, results) do
    {:reply, hashes_with_more_than_one_path(results), results}
  end

  defp hashes_with_more_than_one_path(results) do
    for {_hash, paths} <- results, length(paths) > 1, do: paths
  end
end
