defmodule Mix.Tasks.DayXX.P2 do
  use Mix.Task

  import AdventOfCode.DayXX

  def run(_args) do
    input = "inputs/dayXX.txt"

    File.stream!(input)
    |> Enum.map(&String.trim/1)
    |> part2()
    |> IO.inspect(label: "Part 2 results")
  end
end
