defmodule AdventOfCode.Day03Test do
  use ExUnit.Case

  import AdventOfCode.Day03

  @input """
         asdf\
         """
         |> String.split("\n")
         |> Enum.map(&String.trim/1)

  test "part1" do
    expected_result = 123

    result = part1(@input)

    assert result == expected_result
  end

  test "part2" do
    expected_result = 31

    result = part2(@input)

    assert result == expected_result
  end
end
