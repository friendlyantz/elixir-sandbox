require IEx

defmodule PhoenixKeygenHtmx do
  # specify that options is a map
  # specify specific keys and their types
  # this only works with code analysis tools
  @spec generate(options :: map()) :: {:ok, bitstring()} | {:error, bitstring()}

  def generate(options) do
    contains_length? = Map.has_key?(options, "length")
    validate_length(contains_length?, options)
  end

  defp validate_length(false, _options), do: {:error, "no length given"}

  defp validate_length(true, options) do
    is_length? = is_integer(options["length"])
    validate_int_type(is_length?, options)
  end

  defp validate_int_type(false, _options), do: {:error, "invalid type, should be Integer"}

  defp validate_int_type(true, _options) do

    IEx.pry()
    validate_options_type(values)
    {:ok, "Hey"}
  end
end
