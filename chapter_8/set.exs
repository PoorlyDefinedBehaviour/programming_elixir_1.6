set1 = 1..5 |> Enum.into(MapSet.new())
# MapSet.new([1, 2, 3, 4, 5])

MapSet.member?(set1, 1)
# true

MapSet.member?(set1, 6)
# false
