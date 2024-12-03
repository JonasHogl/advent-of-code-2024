defmodule Mix.Tasks.DayXX.P1 do
  use Mix.Task

  import AdventOfCode.DayXX

  def run(_args) do
    input = "inputs/dayXX.txt"

    File.stream!(input)
    |> Enum.to_list()
    |> Enum.map(&String.trim(&1))
    |> part1()
    |> IO.inspect(label: "Part 1 results")
  end
end
