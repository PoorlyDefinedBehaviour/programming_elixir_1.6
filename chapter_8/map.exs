map = %{name: "Dave", likes: "Programming", where: "Dallas"}

Map.keys(map)
# [:name, :where, :likes]

Map.values(map)
# ["Dave", "Dallas", "Programming"]

map[:name]
# "Dave"

map.name
# "Dave"

map2 = Map.drop(map, [:likes, :where])
# %{name: "Dave"}

Map.has_key?(map2, :likes)
# false

Map.has_key?(map2, :name)
# true

person = %{name: "Dave", height: 1.88}

%{name: _, height: _} = person
# %{name: "Dave", height: 1.88}
