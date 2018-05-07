## List

list = [1,2,3]
result = list ++ [4,5,6]

# with iex result -> [1,2,3,4,5,6]


# Is possible concat another values in this collection
# just like:
list = [1,2,3] ++ ['hey'] ++ [:pie]

# iex result: [1, 2, 3, 'hey', :pie]


# Subtraction of lists
list = [1, 2, 3, 'hey', :pie] -- [:pie]

# iex result: [1, 2, 3, 'hey']

# Head and Tail
# iex(8)> hd [1,2,3]
# 1
# iex(9)> tl [1,2,3]
# [2, 3]
# iex(10)>


# Keyword lists
# iex> [foo: "bar", hello: "world"]
# [foo: "bar", hello: "world"]
# iex> [{:foo, "bar"}, {:hello, "world"}]
# [foo: "bar", hello: "world"]

# Maps

# iex> map = %{:foo => "bar", "hello" => :world}
# %{:foo => "bar", "hello" => :world}
# iex> map[:foo]
# "bar"
# iex> map["hello"]
# :world

# Access with atoms
# iex> map = %{foo: "bar", hello: "world"}
# %{foo: "bar", hello: "world"}
# iex> map.hello
# "world"
