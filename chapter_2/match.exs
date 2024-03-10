a = 1

a + 3
# 4

1 = a
# 1

2 = a
# ** (MatchError) no match of right hand side value: 1

list = [1, 2, 3]

[a, b, c] = list

a
# 1

b
# 2

c
# 3

[1, _, _] = [1, 2, 3]

[a, a] = [1, 1]

a
# 1

[b, b] = [1, 2]
# ** (MatchError) no match of right hand side value: [1, 2]

a = 1

a = 2

^a = 1
# ** (MatchError) no match of right hand side value: 1
