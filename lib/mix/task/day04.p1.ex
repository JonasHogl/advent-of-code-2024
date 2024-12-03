defmodule Mix.Tasks.Day04.P1 do
  use Mix.Task

  import AdventOfCode.Day04

  def run(_args) do
    input = "inputs/day04.txt"

    File.stream!(input)
    |> Enum.to_list()
    |> Enum.map(&String.trim(&1))
    |> part1()
    |> IO.inspect(label: "Part 1 results")
  end
end
