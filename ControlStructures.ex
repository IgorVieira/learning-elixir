# If and Unless

if String.valid?("Hello") do
  IO.puts "Valid string!"
else
  IO.puts "Invalid string."
end

# Unless

unless is_integer("Hell") do
  IO.puts "Not an Int"
end

# Case
pie = 3.14

case "cherry pie" do
  ^pie -> IO.puts "Not so tasty"
  pie -> IO.puts "I bet #{pie} is tasty"
end

# Cond

cond do
  2 + 2 == 5 ->
    IO.puts "This will not be true"
  2 * 2 == 3 ->
    IO.puts "Nor this"
  1 + 1 == 2 ->
    IO.puts "But this will"
end

# Structure with

user = %{first: "Sean", last: "Callan"}

with  {:ok, first} <- Map.fetch(user, :first),
      {:ok, last} <- Map.fetch(user, :last),
do: IO.puts last <> ", " <> first
