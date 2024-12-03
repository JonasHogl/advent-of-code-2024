defmodule AdventOfCode.DayXXTest do
  use ExUnit.Case

  import AdventOfCode.DayXX

  test "part1" do
    input = [1, 2, 3]

    expected_result = 123

    result = part1(input)

    assert result == expected_result
  end

  @tag :skip
  test "part2" do
    input = [1, 2, 3]

    expected_result = 123

    result = part2(input)

    assert result == expected_result
  end
end
