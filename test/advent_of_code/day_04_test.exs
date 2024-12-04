defmodule AdventOfCode.Day04Test do
  use ExUnit.Case

  import AdventOfCode.Day04

  @input """
         MMMSXXMASM
         MSAMXMSMSA
         AMXSXMAAMM
         MSAMASMSMX
         XMASAMXAMM
         XXAMMXXAMA
         SMSMSASXSS
         SAXAMASAAA
         MAMMMXMMMM
         MXMXAXMASX\
         """
         |> String.split("\n")

  test "part1" do
    expected_result = 18

    result = part1(@input)

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
