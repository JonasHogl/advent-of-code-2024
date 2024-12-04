defmodule AdventOfCode.Day04 do
  def part1(args) do
    args
  end

  defp rotate_matrix_90_degrees(matrix) do
    matrix
    |> List.zip()
    |> Enum.map(&Tuple.to_list/1)
    |> Enum.reverse()
  end

  def part2(args) do
    args
  end
end
