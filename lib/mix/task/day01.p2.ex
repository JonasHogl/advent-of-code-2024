defmodule Mix.Tasks.Day01.P2 do
  use Mix.Task

  import AdventOfCode.Day01

  def run(_args) do
    input = "inputs/day01.txt"

    File.stream!(input)
    |> Enum.map(&String.trim/1)
    |> part2()
    |> IO.inspect(label: "Part 2 results")
  end
end
