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
end
