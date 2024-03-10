list1 = Enum.to_list(1..5)
list1
# [1, 2, 3, 4, 5]

Enum.concat([1, 2, 3], [4, 5, 6])
# [1, 2, 3, 4, 5, 6]

Enum.concat([1, 2, 3], ~c"abc")
# [1, 2, 3, 97, 98, 99]

Enum.map(list1, &(&1 * 10))
# [10, 20, 30, 40, 50]
