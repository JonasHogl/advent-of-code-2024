defmodule Mix.Tasks.Day04.P2 do
  use Mix.Task

  import AdventOfCode.Day04

  def run(_args) do
    input = "inputs/day04.txt"

    File.stream!(input)
    |> Enum.map(&String.trim/1)
    |> part2()
    |> IO.inspect(label: "Part 2 results")
  end
end
