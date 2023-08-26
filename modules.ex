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
