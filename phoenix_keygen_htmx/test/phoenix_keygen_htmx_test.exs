defmodule PhoenixKeygenHtmxTest do
  use ExUnit.Case
  doctest PhoenixKeygenHtmx

setup  do

  options = %{
    "length" => 16,
    "numbers" => false,
    "uppercase" => false,
    "symbols" => false,
  }

  options_type = %{
    lowercase: Enum.map(?a..?z, & <<&1>>),
    numbers: Enum.map(0..9, & Integer.to_string(&1)),
    uppercase: Enum.map(?A..?Z, & <<&1>>),
    symbols: String.split("!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~", "", trim: true)
  }

end
end
