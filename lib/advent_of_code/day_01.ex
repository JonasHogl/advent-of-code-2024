defmodule AdventOfCode.Day01 do
  def part1(args) do
    {list1, list2} =
      args
      |> Enum.map(fn input ->
        [a, b] = String.split(input, "   ")
        {String.to_integer(a), String.to_integer(b)}
      end)
      |> Enum.unzip()

    calc_ranges_between_lists(Enum.sort(list1), Enum.sort(list2))
  end

  defp calc_ranges_between_lists([val1 | rest1], [val2 | rest2]) do
    range(val1, val2) + calc_ranges_between_lists(rest1, rest2)
  end

  defp calc_ranges_between_lists([], []), do: 0

  defp range(val1, val2) do
    cond do
      val1 > val2 -> val1 - val2
      val1 < val2 -> val2 - val1
      val1 == val2 -> 0
    end
  end

  def part2(args) do
    {list1, list2} =
      args
      |> Enum.map(fn input ->
        [a, b] = String.split(input, "   ")
        {String.to_integer(a), String.to_integer(b)}
      end)
      |> Enum.unzip()

    calculate_similarity_scores(list1, list2)
  end

  defp calculate_similarity_scores([val1 | rest], occurance_list) do
    count_of_occurances =
      occurance_list
      |> Enum.filter(&(&1 == val1))
      |> Enum.count()

    val1 * count_of_occurances + calculate_similarity_scores(rest, occurance_list)
  end

  defp calculate_similarity_scores([], _), do: 0
end
