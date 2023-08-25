IO.puts("LAla

  Hello  \n'There'
")

IO.puts("""
  HERE
    doc
""")

piped_result = "Elixir" |> String.graphemes() |> Enum.frequencies()
IO.inspect(piped_result)

defmodule MyModule do
  def my_function(a, b) do
    %{values: a..b}
    |> Map.get(:values)
    |> Enum.map(&(&1 * 2))
    |> Enum.sum()
  end
end

IO.inspect(MyModule.my_function(1, 5))

# Lists

list = [2, 3, 4, 5]
IO.inspect( [1 | list] )
IO.inspect( list ++ [6, 7] )
IO.inspect( list -- [4, 7] )

# Tuples

IO.inspect(
  { 2, 1, 3, 3, :atom, true, 'string', [1, 2, 3] }
)

# Maps

map = %{
  :a => [1],
  "B"=> 2,
  :c => "String"
}

IO.inspect( map["B"] )
IO.inspect( map.c )

# Operators

true and true
true && false

1 === 1.0 # false
1 == 1.0 # true
1 !== 1.0 # true
1 != 1.0 # false

11 > 1

# Membership operators

1 in [1, 2, 3]
0 not in [1, 2, 3]

# PATTERN MATCHING

x = 1 # it will assign a value
1 = x # 1. compare right to left
# 0 = x # MatchError

# {a, b, c} = {1, 2, 3}

{:ok, result} = {:ok, "success"}
# {:ok, "failure"} = {:ok, result} # MatchError

## Pin operator

# x = 2 # reassigns
# ^x = 1 # MatchError

{:ok, ^result} = {:ok, "success"}
# {:ok, ^result} = {:ok, "failure"} # MatchError

## Underscore - discard

{_, c} = {1, 2}
IO.puts(c)
# {a, _, _ } = {1, 2} # MatchError

result = {1, 2, 3}
case result do
  {1, x, 3} -> IO.puts("Second element is #{x}")
  _ -> IO.puts("No match")
end

# CONDITIONALS

color = "red"
if color == "red", do: IO.puts("Red"), else: IO.puts("Not red")

cond do
  color == "red" -> IO.puts("Red cond")
  color == "blue" -> IO.puts("Blue cond")
  true -> IO.puts("Not red or blue") # default else
end

success = {:ok, "Success"}
error = {:error, "Error"}

with {:ok, _result } <- success, {:error, "Not Error" } <- error do
    IO.puts "This gets executed"
else
  {:error, _result } -> IO.puts "ELSE gets executed"
end
