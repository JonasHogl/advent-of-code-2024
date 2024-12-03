defmodule AdventOfCode.Day04Test do
  use ExUnit.Case

  import AdventOfCode.Day04

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
