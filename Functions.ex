# Functions

sum = fn (a, b) -> a + b end
IO.puts sum.(2,2)


# The & Shorthand
sum = &(&1 + &2 + &3)
IO.puts sum.(2, 2, 2)

# Handle result

handle_result = fn
  {:ok, result} -> IO.puts "Handling result..."
  {:error} -> IO.puts "An error has occurred!"
end


handle_result.({:ok, some_result})
handle_result.({:error})


# Named functions

defmodule Greeter do
  def lets(res) do
    IO.puts "Let's " <> res
  end

  def hey(res) do
    IO.puts "Hey " <> res
  end
end

Greeter.hey("Ho!")
Greeter.lets("Go!")


# Function Naming and Arity

defmodule Greeter2 do
  def hey(), do: "Hey Jude, don't make it bad " # hello/0
  def hey(word1), do: "Take a, " <> word1 <> " sad song and make it better"
  def hey(word2, word3), do: "Remember to #{word2} her into your #{word3} " # hello/2
end


Greeter2.hey()
Greeter2.hey("sad")
Greeter2.hey("let", "heart")

#Private methods

defmodule Greeter do
  def hello(name), do: phrase() <> name
  defp phrase, do: "Hello, "
end

Greeter.hello("Sean")
"Hello, Sean"

Greeter.phrase
# ** (UndefinedFunctionError) function Greeter.phrase/0 is undefined or private
#     Greeter.phrase()


# Guards

defmodule Greeter do
  def hello(names) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello
  end

  def hello(name) when is_binary(name) do
    phrase() <> name
  end

  defp phrase, do: "Hello, "
end


Greeter.hello ["Sean", "Steve"]
# "Hello, Sean, Steve"
