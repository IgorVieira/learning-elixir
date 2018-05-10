# Pattern Matching is a way for using the equal opertator `=` for realize some expressions:

# A simple example:

# iex(1)> x = 1
# 1
# iex(2)> 2 = x
# ** (MatchError) no match of right hand side value: 1

# So in this example is possible see the diference between the value sevad on variable x and the argument
# type for equal a this variable
# Listas

# iex> list = [1, 2, 3]
# iex> [1, 2, 3] = list
# [1, 2, 3]
# iex> [] = list
# ** (MatchError) no match of right hand side value: [1, 2, 3]

# But is possible has a diferent value if you try pass two tupplas
# because you will receive a new value attribuited

# iex(2)> {:ok, value} = {:ok, "Successful!"}
# {:ok, "Successful!"}



# Operator Pin

# The Operator Pin show a new way for change a value atribuited
# and return in a second moment a match with two tupplas, just like
# in this example
# iex> x = 1
# 1
# iex> ^x = 2
# ** (MatchError) no match of right hand side value: 2
# iex> {x, ^x} = {2, 1}
# {2, 1}

# iex> greeting = "Hello"
# "Hello"
# iex> greet = fn
# ...>   (^greeting, name) -> "Hi #{name}"
# ...>   (greeting, name) -> "#{greeting}, #{name}"
# ...> end
# #Function<12.54118792/2 in :erl_eval.expr/5>
# iex> greet.("Hello", "Sean")
# "Hi Sean"
# iex> greet.("Mornin'", "Sean")
# "Mornin', Sean"
