defmodule Calculator.OperationsTest do
  use ExUnit.Case
  doctest Calculator.Operations

  describe "add/2" do
    test "adds two positive numbers" do
      assert Calculator.Operations.add(1, 2) == 3
    end

    test "adds two negative numbers" do
      assert Calculator.Operations.add(-1, -2) == -3
    end

    test "adds a positive and a negative number" do
      assert Calculator.Operations.add(1, -2) == -1
    end

    test "adds two floating-point numbers" do
      assert Calculator.Operations.add(1.5, 2.5) == 4.0
    end

    test "adds a positive number and a floating-point number" do
      assert Calculator.Operations.add(1, 2.5) == 3.5
    end

    test "adds zero with a positive number" do
      assert Calculator.Operations.add(0, 5) == 5
    end

    test "adds zero with a negative number" do
      assert Calculator.Operations.add(0, -5) == -5
    end

    test "adds two very large positive numbers" do
      assert Calculator.Operations.add(1_000_000, 2_000_000) == 3_000_000
    end

    test "adds two very large negative numbers" do
      assert Calculator.Operations.add(-1_000_000, -2_000_000) == -3_000_000
    end

    test "adds a very large positive number with a very large negative number" do
      assert Calculator.Operations.add(1_000_000, -1_500_000) == -500_000
    end
  end

  describe "subtract/2" do
    test "subtracts two positive numbers" do
      assert Calculator.Operations.subtract(5, 3) == 2
    end

    test "subtracts two negative numbers" do
      assert Calculator.Operations.subtract(-5, -3) == -2
    end

    test "subtracts a positive and a negative number" do
      assert Calculator.Operations.subtract(5, -3) == 8
    end

    test "subtracts a negative number from a positive number" do
      assert Calculator.Operations.subtract(-5, 3) == -8
    end

    test "subtracts two floating-point numbers" do
      assert Calculator.Operations.subtract(5.5, 2.2) == 3.3
    end

    test "subtracts a floating-point number from a positive number" do
      assert Calculator.Operations.subtract(5, 2.5) == 2.5
    end

    test "subtracts a floating-point number from a negative number" do
      assert Calculator.Operations.subtract(-5, 2.5) == -7.5
    end

    test "subtracts zero from a number" do
      assert Calculator.Operations.subtract(5, 0) == 5
      assert Calculator.Operations.subtract(0, 5) == -5
    end

    test "subtracts very large numbers" do
      assert Calculator.Operations.subtract(1_000_000, 500_000) == 500_000
      assert Calculator.Operations.subtract(-1_000_000, -500_000) == -500_000
    end
  end

  describe "divide/2" do
    test "divides two positive numbers" do
      assert Calculator.Operations.divide(6, 3) == 2
    end

    test "divides two negative numbers" do
      assert Calculator.Operations.divide(-6, -3) == 2
    end

    test "divides a positive number by a negative number" do
      assert Calculator.Operations.divide(6, -3) == -2
    end

    test "divides a negative number by a positive number" do
      assert Calculator.Operations.divide(-6, 3) == -2
    end

    test "divides two floating-point numbers" do
      assert Calculator.Operations.divide(7.5, 2.5) == 3.0
    end

    test "divides a positive number by a floating-point number" do
      assert Calculator.Operations.divide(7, 2.5) == 2.8
    end

    test "divides a negative number by a floating-point number" do
      assert Calculator.Operations.divide(-7, 2.5) == -2.8
    end

    test "division by zero returns an error" do
      assert_raise ArithmeticError, fn ->
        Calculator.Operations.divide(7, 0)
      end
    end
  end

  describe "multiply/2" do
    test "multiplies two positive numbers" do
      assert Calculator.Operations.multiply(4, 5) == 20
    end

    test "multiplies two negative numbers" do
      assert Calculator.Operations.multiply(-4, -5) == 20
    end

    test "multiplies a positive number by a negative number" do
      assert Calculator.Operations.multiply(4, -5) == -20
    end

    test "multiplies a negative number by a positive number" do
      assert Calculator.Operations.multiply(-4, 5) == -20
    end

    test "multiplies two floating-point numbers" do
      assert Calculator.Operations.multiply(3.5, 2.0) == 7.0
    end

    test "multiplies a positive number by a floating-point number" do
      assert Calculator.Operations.multiply(3, 2.5) == 7.5
    end

    test "multiplies a negative number by a floating-point number" do
      assert Calculator.Operations.multiply(-3, 2.5) == -7.5
    end

    test "multiplies a number by zero" do
      assert Calculator.Operations.multiply(5, 0) == 0
      assert Calculator.Operations.multiply(0, 5) == 0
    end

    test "multiplies very large numbers" do
      assert Calculator.Operations.multiply(1_000_000, 2) == 2_000_000
      assert Calculator.Operations.multiply(-1_000_000, -2) == 2_000_000
    end
  end
end
