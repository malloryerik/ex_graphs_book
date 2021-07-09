defmodule GraphCommons do
  @moduledoc """
  Documentation for `GraphCommons`.
  """

  @typedoc "Types for storing graphs."
  @type base_type :: :dgraph | :native | :property | :rdf | :tinker
  @type graph_type :: base_type()
  @type query_type :: base_type()

  @typedoc "Type for testing file types."
  @type file_test :: :dir? | :regular? | :exists?

  @doc """
  Hello world.
  ## Examples

  iex> GraphCommons.hello()
  :world
  """
  def hello do
    :world
  end
end
