defmodule PhoenixKeygenHtmx do
  # specify that options is a map
  # specify specific keys and their types
  # this only works with code analysis tools
  @spec generate(options :: map()) :: {:ok, bitstring()} | {:error, bitstring()}

  def generate(options) do
    # require IEx
    # IEx.pry

    unless Map.has_key?(options, "length") do
      {:error, "no length given"}
    else
      {:ok, "Hey"}
    end
  end
end
