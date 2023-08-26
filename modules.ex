defmodule Say do
  def hello(), do: "Hello"              # hello/0

  def hello(name), do: hello() <> " " <> name   # hello/1

  def hello(name, location), do: "Hello #{name} from #{location}"   # hello/2

  def hello(greeting, name, location), do: "#{greeting} #{name} from #{location}"   # hello/3
end

IO.puts Say.hello("Anton")
IO.puts Say.hello("Anton", "Melbourne")
IO.puts Say.hello("Buenos Dias", "Anton", "Melbourne")


defmodule Alphabet do
  def letter(:a), do: "a"
  def letter(:b), do: "b"
  def letter(:c), do: "c"
  def letter(letter) when letter == :d, do: "d"
  def letter(letter), do: letter
end

# Alphabet.letter(:letter) # error
IO.puts Alphabet.letter(:z)

# built in modules

Integer.to_string(123)
String.upcase("anton")
String.contains?("antoN", "T")
String.split("antoN", "t")
# ["an", "oN"]
String.split("fortuna favours the bold")
l = [1, 2, 3]
List.last l
List.to_string ["a", "b", "c"]

## Map

m = %{:a => "a", "b" => "B"}
Map.put(m, :c, "c")
# Map.put_new(m, :c, "c")

## Enum

Enum.each(l, fn x -> IO.puts x end)
Enum.all?(l, fn x -> is_integer(x) end)
Enum.any?(l, fn x -> is_integer(x) end)
Enum.filter(l, fn x -> x === 2 end)
Enum.to_list m
Enum.random 1..6
Enum.uniq [1,1,2,34,3,3,2]
Enum.take_random [1,1,2,34,3,3,2], 2
Enum.join [1,1,2,34,3,3,2], "-"

# Kernel

length [1,2,3] # list only
trunc 11.4
rem 7,2 # 1 (modulo?)
is_nil nil
is_atom :atom
### but
is_bitstring("string") # true

hd [2, "a", :last] # retuerns 2 # - head
ceil 1.2 # 2, altr to floor
div 7, 2 # 3

to_string :atom
