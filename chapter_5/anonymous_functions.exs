sum = fn a, b -> a + b end

sum.(2, 2)
# 4

greet = fn -> IO.puts("hello") end

greet.()
"hello"

swap = fn {a, b} -> {b, a} end

swap.({1, 2})
# {2, 1}

handle_open = fn
  {:ok, file} -> "Read data: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end
