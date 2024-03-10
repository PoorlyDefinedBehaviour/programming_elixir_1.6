defmodule Canvas do
  @defaults [fg: "black", bg: "white", font: "Merriweather"]

  def draw_text(text, options \\ []) do
    options = Keyword.merge(@defaults, options)
    IO.puts("Drawing text #{inspect(text)}")
    IO.puts("Foreground: #{options[:fg]}")
    IO.puts("Background: #{Keyword.get(options, :bg)}")
  end
end

# Canvas.draw_text("hello", fg: "red", style: "italic", style: "bold")
