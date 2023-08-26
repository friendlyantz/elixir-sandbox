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

  defp validate_length(false, _options) do
    # IEx.pry()
    {:error, "no length given"}
  end

  defp validate_length(true, options) do
    unless is_integer(options["length"]) do
      {:error, "invalid type, should be Integer"}
    else
      {:ok, "Hey"}
    end
  end
end
