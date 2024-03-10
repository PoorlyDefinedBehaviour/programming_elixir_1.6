Stream.map([1, 2, 3], &(&1 * 2))
# Stream<[enum: [1, 2, 3], funs: [#Function<48.53678557/1 in Stream.map/2>]]>

Stream.map([1, 2, 3], &(&1 * 2)) |> Enum.to_list()
# [2, 4, 6]
