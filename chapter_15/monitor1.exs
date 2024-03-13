defmodule Monitor1 do
  def sad_function do
    :timer.sleep(500)
    exit(:boom)
  end

  def run do
    res = spawn_monitor(Monitor1, :sad_function, [])

    IO.puts(inspect(res))

    receive do
      msg ->
        IO.puts("Message received: #{inspect(msg)}")
    after
      1000 ->
        IO.puts("Nothing happenede")
    end
  end
end

Monitor1.run()
