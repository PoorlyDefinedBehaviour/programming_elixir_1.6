defmodule ResultsTest do
  use ExUnit.Case
  doctest Duper.Results

  test "can add entries to the results" do
    Duper.Results.add_hash_for("path1", 123)
    Duper.Results.add_hash_for("path2", 456)
    Duper.Results.add_hash_for("path3", 123)
    Duper.Results.add_hash_for("path4", 789)
    Duper.Results.add_hash_for("path5", 456)
    Duper.Results.add_hash_for("path6", 999)

    duplicates = Duper.Results.find_duplicates()

    assert length(duplicates) === 2

    IO.puts("duplicates=#{inspect(duplicates)}")
    assert ~w{path3 path1} in duplicates
    assert ~w{path5 path2} in duplicates
  end
end
