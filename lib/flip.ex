defmodule Flip do
  @moduledoc """
  Documentation for Flip.
  """

  @doc """
  Meant to be used in a pipe in order to pipe the value into the second
  argument of the given function

  ## Examples

      iex> "foo" |> Flip.flip(Regex.scan(~r/foo/))
      [["foo"]]
  """
  defmacro flip(arg2, call) do
    Macro.pipe(arg2, call, 1)
  end
end
