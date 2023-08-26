defmodule PhoenixKeygenHtmxTest do
  use ExUnit.Case
  doctest PhoenixKeygenHtmx

  # test prep, similaar to `let` and `before` in RSpec
  setup do
    options = %{
      "length" => 16,
      "numbers" => false,
      "uppercase" => false,
      "symbols" => false
    }

    options_type = %{
      lowercase: Enum.map(?a..?z, &<<&1>>),
      numbers: Enum.map(0..9, &Integer.to_string(&1)),
      uppercase: Enum.map(?A..?Z, &<<&1>>),
      symbols: String.split("!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~", "", trim: true)
    }

    # ===============
    # Assign a result
    {:ok, result} = PhoenixKeygenHtmx.generate(options)

    %{
      options_type: options_type,
      result: result
    }
  end

  test "returns a string", %{result: result} do
    assert is_bitstring(result)
  end

  test "returns error when no length is given" do
    options = %{
      "invalid" => false
    }

    assert {:error, "no length given"} = PhoenixKeygenHtmx.generate(options)
  end

  test "returns error when length is not an int" do
    options = %{
      "length" => "ab"
    }

    assert {:error, "invalid type, should be Integer"} = PhoenixKeygenHtmx.generate(options)
  end

  test "returns error when options are non-bool" do
    options = %{
      "length" => 12,
      "uppercase" => false,
      "numbers" => "not a bool",
      "symbols" => false
    }

    assert {:error, "invalid type, should be Bool"} = PhoenixKeygenHtmx.generate(options)
  end
end
