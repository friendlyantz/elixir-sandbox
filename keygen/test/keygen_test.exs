defmodule KeygenTest do
  use ExUnit.Case
  doctest Keygen

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
    {:ok, result} = Keygen.generate(options)

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

    assert {:error, "no length given"} = Keygen.generate(options)
  end

  test "returns error when length is not an int" do
    options = %{
      "length" => "ab"
    }

    assert {:error, "invalid type, should be Integer"} = Keygen.generate(options)
  end

  test "returns error when options are non-bool" do
    options = %{
      "length" => 12,
      "uppercase" => false,
      "numbers" => "not a bool",
      "symbols" => false
    }

    assert {:error, "invalid type, should be Bool"} = Keygen.generate(options)
  end
end
