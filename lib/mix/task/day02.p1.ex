defmodule Mix.Tasks.Day02.P1 do
  use Mix.Task

  import AdventOfCode.Day02

  def run(_args) do
    input = "inputs/day02/part1"

    File.stream!(input)
    |> Enum.to_list()
    |> Enum.map(&String.trim(&1))
    |> part1()
    |> IO.inspect(label: "Part 1 results", limit: :infinity, charlists: :as_lists)
  end
end
