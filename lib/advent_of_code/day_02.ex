defmodule AdventOfCode.Day02 do
  def part1(args) do
    args
    |> Enum.map(&(String.split(&1, " ") |> Enum.map(fn str -> String.to_integer(str) end)))
    |> Enum.filter(&report_is_safe/1)
    |> Enum.count()
  end

  defp report_is_safe([first_val, second_val | rest]) do
    is_difference_safe(first_val, second_val) &&
      report_is_safe([second_val | rest], first_val < second_val)
  end

  defp report_is_safe([first_val, second_val | []], report_is_increasing) do
    cond do
      report_is_increasing && first_val > second_val -> false
      !report_is_increasing && first_val < second_val -> false
      !is_difference_safe(first_val, second_val) -> false
      true -> true
    end
  end

  defp report_is_safe([first_val, second_val | rest], report_is_increasing) do
    cond do
      report_is_increasing && first_val > second_val -> false
      !report_is_increasing && first_val < second_val -> false
      !is_difference_safe(first_val, second_val) -> false
      true -> report_is_safe([second_val | rest], report_is_increasing)
    end
  end

  defp is_difference_safe(val1, val2) do
    difference = calculate_difference(val1, val2)

    difference >= 1 && difference <= 3
  end

  defp calculate_difference(val1, val2) do
    cond do
      val1 > val2 -> val1 - val2
      val1 < val2 -> val2 - val1
      val1 == val2 -> 0
    end
  end

  def part2(args) do
    args
    |> Enum.map(&(String.split(&1, " ") |> Enum.map(fn str -> String.to_integer(str) end)))
    |> Enum.filter(&report_is_safe_with_dampener/1)
    |> Enum.count()
  end

  defp report_is_safe_with_dampener([first_val, second_val, third_val | rest]) do
    increase_between_first_and_second = first_val < second_val
    increase_between_second_and_third = second_val < third_val

    cond do
      !is_difference_safe(first_val, second_val) ->
        report_is_safe([second_val, third_val | rest]) ||
          report_is_safe([first_val, third_val | rest])

      increase_between_first_and_second != increase_between_second_and_third ->
        report_is_safe([second_val, third_val | rest]) ||
          report_is_safe([first_val, third_val | rest])

      true ->
        report_is_safe_with_dampener([second_val, third_val | rest], first_val < second_val, [
          first_val
        ])
    end
  end

  defp report_is_safe_with_dampener([_last_value | []], _is_increasing, _history) do
    true
  end

  defp report_is_safe_with_dampener([first_val, second_val | rest], is_increasing, history) do
    cond do
      is_increasing && first_val > second_val ->
        report_is_safe(history ++ [first_val | rest]) ||
          report_is_safe(history ++ [second_val | rest])

      !is_increasing && first_val < second_val ->
        report_is_safe(history ++ [first_val | rest]) ||
          report_is_safe(history ++ [second_val | rest])

      !is_difference_safe(first_val, second_val) ->
        report_is_safe(history ++ [first_val | rest]) ||
          report_is_safe(history ++ [second_val | rest])

      true ->
        report_is_safe_with_dampener([second_val | rest], is_increasing, history ++ [first_val])
    end
  end
end
