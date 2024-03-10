# Tuples

{1, 2}

{:ok, 42, "next"}

{:error, :enoent}

{status, count, action} = {:ok, 42, "next"}

status
# :ok

count
# 42

action
# "next"

{status, file} = File.open("file-that-doesnt-exist")
{:error, :enoent}

{:ok, file} = File.open("file-that-doesnt-exist")
# ** (MatchError) no match of right hand side value: {:error, :enoent}

# Lists

[1, 2, 3] ++ [4, 5, 6]
# [1, 2, 3, 4, 5, 6]

[1, 2, 3, 4] -- [2, 4]
# [1, 3]

1 in [1, 2, 3, 4]
# true

5 in [1, 2, 3, 4]
# false

"wombat" in [1, 2, 3, 4]
# false

# Keyword lists

[name: "Dave", city: "Dallas", likes: "Programming"]
# Syntax sugar for:
[{:name, "Dave"}, {:city, "Dallas"}, {:likes, "Programming"}]

# Maps
states = %{"AL" => "Alabama", "WI" => "Wisconsin"}
states["AL"]
# "Alabama"

colors = %{red: 0xFF0000, green: 0x00FF00, blue: 0x0000FF}
colors.red
# 0xff0000

colors[:red]
# 0xff0000

# Binaries

bin = <<1, 2>>
byte_size(bin)
# 2
