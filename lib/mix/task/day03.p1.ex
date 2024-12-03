defmodule Mix.Tasks.Day03.P1 do
  use Mix.Task

  import AdventOfCode.Day03

  def run(_args) do
    input = "inputs/day03.txt"

    File.stream!(input)
    |> Enum.to_list()
    |> Enum.map(&String.trim(&1))
    |> part1()
    |> IO.inspect(label: "Part 1 results", limit: :infinity, charlists: :as_lists)
  end
end
