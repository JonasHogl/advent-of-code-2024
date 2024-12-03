defmodule AdventOfCode.Day03Test do
  use ExUnit.Case

  import AdventOfCode.Day03

  @input """
         xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))\
         """
         |> String.split("\n")

  @input2 """
          xmul(2,4)&mul[3,7]!^don't()_mul(5,5)+mul(32,64](mul(11,8)undo()?mul(8,5))\
          """
          |> String.split("\n")

  test "part1" do
    expected_result = 161

    result = part1(@input)

    assert result == expected_result
  end

  test "part2" do
    expected_result = 48

    result = part2(@input2)

    assert result == expected_result
  end
end
