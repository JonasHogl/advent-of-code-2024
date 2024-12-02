defmodule Mix.Tasks.Day01.P1 do
  use Mix.Task

  import AdventOfCode.Day01

  def run(_args) do
    input = "inputs/day01.txt"

    File.stream!(input)
    |> Enum.to_list()
    |> Enum.map(&String.trim(&1))
    |> part1()
    |> IO.inspect(label: "Part 1 results")
  end
end
