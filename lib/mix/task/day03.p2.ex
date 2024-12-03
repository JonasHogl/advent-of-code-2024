defmodule Mix.Tasks.Day03.P2 do
  use Mix.Task

  import AdventOfCode.Day03

  def run(_args) do
    input = "inputs/day03.txt"

    File.stream!(input)
    |> Enum.to_list()
    |> Enum.map(&String.trim(&1))
    |> part2()
    |> IO.inspect(label: "Part 2 results", limit: :infinity, charlists: :as_lists)
  end
end
