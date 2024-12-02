defmodule AdventOfCode.Day02Test do
  use ExUnit.Case

  import AdventOfCode.Day02

  @input """
         7 6 4 2 1
         1 2 7 8 9
         9 7 6 2 1
         1 3 2 4 5
         8 6 4 4 1
         1 3 6 7 9\
         """
         |> String.split("\n")
         |> Enum.map(&String.trim/1)

  @input2 """
          48 46 47 49 51 54 56
          1 1 2 3 4 5
          1 2 3 4 5 5
          5 1 2 3 4 5
          1 4 3 2 1
          1 6 7 8 9
          1 2 3 4 3
          9 8 7 6 7
          7 10 8 10 11
          29 28 27 25 26 25 22 20\
          """
          |> String.split("\n")
          |> Enum.map(&String.trim/1)

  test "part1" do
    expected_result = 2

    result = part1(@input)

    assert result == expected_result
  end

  test "part2" do
    expected_result = 4
    result = part2(@input)

    assert result == expected_result
  end

  test "part2 edgecases" do
    expected_results = 10

    results = part2(@input2)

    assert results == expected_results
  end
end
