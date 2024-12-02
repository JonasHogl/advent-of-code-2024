defmodule Mix.Tasks.Day02.P2 do
  use Mix.Task

  import AdventOfCode.Day02

  def run(_args) do
    input = "inputs/day02/part2"

    File.stream!(input)
    |> Enum.map(&String.trim/1)
    |> part2()
    |> IO.inspect(label: "Part 2 results")
  end
end
