defmodule Blob do
  defstruct content: nil
end

b = %Blob{content: 123}

inspect(b, structs: false)
# "%{__struct__: Blob, content: 123}"
