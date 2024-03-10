if 1 === 1 do
  IO.puts("here 1")
else
  IO.puts("here 2")
end

unless 1 === 2 do
  IO.puts("here 1")
else
  IO.puts("here 2")
end

case File.open("path") do
  {:ok, file} -> IO.puts("first line: #{IO.read(file, :line)}")
  {:error, err} -> IO.puts("unable to open file: #{err}")
end
