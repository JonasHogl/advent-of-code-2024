defmodule AdventOfCode.DayXXTest do
  use ExUnit.Case

  import AdventOfCode.DayXX

  @input """
         hej
         haj
         hoj
         """
         |> String.split("\n")

  @tag :skip
  test "part1" do
    expected_result = 123

    result = part1(@input)

    assert result == expected_result
  end

  @tag :skip
  test "part2" do
    expected_result = 123

    result = part2(@input)

    assert result == expected_result
  end
end
