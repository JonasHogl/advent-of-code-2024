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

  test "part1" do
    expected_result = 2

    result = part1(@input)

    assert result == expected_result
  end

  @tag :skip
  test "part2" do
    expected_result = 31

    result = part2(@input)

    assert result == expected_result
  end
end
