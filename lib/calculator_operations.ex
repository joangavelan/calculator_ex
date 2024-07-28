defmodule Calculator.Operations do
  @moduledoc """
  Functions for arithmetic operations.
  """

  @doc """
  Adds two numbers.

  ## Parameters

    - `a`: The first number (can be an integer or float).
    - `b`: The second number (can be an integer or float).

  ## Examples

      iex> Calculator.Operations.add(1, 2)
      3

      iex> Calculator.Operations.add(-1, -2)
      -3

      iex> Calculator.Operations.add(1.5, 2.5)
      4.0

      iex> Calculator.Operations.add(1, 2.5)
      3.5

  """
  @spec add(number, number) :: number
  def add(a, b) do
    a + b
  end
end
