# If you length is greater than one

Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end)
# false
Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) > 1 end)
# true

# If one of the element is greater then four
Enum.any?(["foo", "bar", "hello"], fn(s) -> String.length(s) > 4 end)

# Break the arrays with set values
Enum.chunk_every([1, 2, 3, 4, 5, 6], 2)

# Enum.chunk_every([1, 2, 3, 4, 5, 6], 2)
# [[1, 2], [3, 4], [5, 6]]
# Enum.chunk_every([1, 2, 3, 4, 5, 6], 3)
# [[1, 2, 3], [4, 5, 6]]
# Enum.chunk_every([1, 2, 3, 4, 5, 6], 4)
# [[1, 2, 3, 4], [5, 6]]
# Enum.chunk_every([1, 2, 3, 4, 5, 6], 5)
# [[1, 2, 3, 4, 5], [6]]

# It performs chunks, breaks for similar values
Enum.chunk_by(["one", "two", "three", "four", "five", "six"], fn(x) -> String.length(x) end)


# Every 3 times it iterates a value in x
Enum.map_every([1, 2, 3, 4, 5, 6, 7, 8], 3, fn x -> x + 1000 end)

# Iterate all itens presents in this collection
Enum.each([1,2,3], fn s -> IO.puts(s) end)

# 1
# 2
# 3
# :ok
# Map iterate values present in a collection
# and pass in another collection

Enum.map([0,1,2,3], fn x -> IO.puts(x) end)
# 0
# 1
# 2
# 3
# [:ok, :ok, :ok, :ok]

# Take the smallest value
Enum.min([5, 3, 0, -1])
# -1

# Grab the highest value
Enum.max([5, 3, 0, -1])


# Reduce
Enum.reduce([1, 2, 3], 10, fn(x, acc) -> x + acc end)
# 16

Enum.reduce([1, 2, 3], fn(x, acc) -> x + acc end)
# 6

Enum.reduce(["a","b","c"], "1", fn(x,acc)-> x <> acc end)
# "cba1"



#Sort

Enum.sort([5, 6, 1, 3, -1, 4])
# [-1, 1, 3, 4, 5, 6]

Enum.sort([:foo, "bar", Enum, -1, 4])
# [-1, 4, Enum, :foo, "bar"]

# with our function
Enum.sort([%{:val => 4}, %{:val => 1}], fn(x, y) -> x[:val] > y[:val] end)
[%{val: 4}, %{val: 1}]

# without
Enum.sort([%{:count => 4}, %{:count => 1}])
[%{count: 1}, %{count: 4}]


# uniq_by
Enum.uniq_by([1, 2, 3, 2, 1, 1, 1, 1, 1], fn x -> x end)
# [1, 2, 3]