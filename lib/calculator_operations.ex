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

  @doc """
  Subtracts the second number from the first number.

  ## Parameters

    - `a`: The first number (integer or float).
    - `b`: The second number (integer or float).

  ## Examples

      iex> Calculator.Operations.subtract(5, 3)
      2

      iex> Calculator.Operations.subtract(5.5, 2.2)
      3.3

  """
  @spec subtract(number, number) :: number
  def subtract(a, b) do
    a - b
  end

  @doc """
  Divides the first number by the second number.

  ## Parameters

    - `a`: The dividend (integer or float).
    - `b`: The divisor (integer or float).

  ## Examples

      iex> Calculator.Operations.divide(6, 3)
      2.0

      iex> Calculator.Operations.divide(7.5, 2.5)
      3.0

  ## Errors

  Raises an `ArithmeticError` if attempting to divide by zero.

  """
  @spec divide(number, number) :: number
  def divide(_a, 0) do
    raise ArithmeticError, message: "cannot divide by zero"
  end

  def divide(a, b) do
    a / b
  end

  @doc """
  Multiplies two numbers.

  ## Parameters

    - `a`: The first number (integer or float).
    - `b`: The second number (integer or float).

  ## Examples

      iex> Calculator.Operations.multiply(4, 5)
      20

      iex> Calculator.Operations.multiply(3.5, 2.0)
      7.0

  """
  @spec multiply(number, number) :: number
  def multiply(a, b) do
    a * b
  end
end
