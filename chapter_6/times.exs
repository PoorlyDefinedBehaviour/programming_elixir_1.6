defmodule Times do
  def double(n) do
    n * 2
  end

  def double2(n), do: n * 2

  def greet(greeting, name),
    do:
      (
        IO.puts(greeting)
        IO.puts("How're you doing #{name}?")
      )
end
