defmodule Spawn4 do
  def greet do
    receive do
      {sender, msg} ->
        send(sender, {:ok, "Hello, #{msg}"})
        greet()
    end
  end
end

pid = spawn(Spawn4, :greet, [])

send(pid, {self(), "World!"})

receive do
  {:ok, msg} ->
    IO.puts("received: #{msg}")
end

send(pid, {self(), "Kermit!"})

receive do
  {:ok, msg} ->
    IO.puts("received: #{msg}")
after
  500 ->
    IO.puts("The greeter has gone away")
end
