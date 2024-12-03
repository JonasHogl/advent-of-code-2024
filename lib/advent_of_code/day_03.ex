defmodule AdventOfCode.Day03 do
  def part1(args) do
    args
    |> Enum.map(&Regex.scan(~r/mul\(\d*\,\d*\)/, &1))
    |> List.flatten()
    |> Enum.map(&convert_textform_to_numbers/1)
    |> Enum.reduce(0, fn val, acc -> val + acc end)
  end

  defp convert_textform_to_numbers("mul(" <> text) do
    text
    |> String.trim_trailing(")")
    |> String.split(",")
    |> multiply_numbers()
  end

  defp multiply_numbers(numbers) do
    product =
      numbers
      |> Enum.map(&String.to_integer/1)
      |> Enum.reduce(1, fn val, acc -> val * acc end)

    IO.inspect(product, label: "Product: ")

    product
  end

  def part2(args) do
    args |> step_through_lines(true)
  end

  defp step_through_lines([], _enabled) do
    0
  end

  defp step_through_lines(["" | rest], enabled) do
    step_through_lines(rest, enabled)
  end

  defp step_through_lines(["don't()" <> rest_line | rest], enabled) do
    step_through_lines([rest_line] ++ rest, false)
  end

  defp step_through_lines(["do()" <> rest_line | rest], enabled) do
    step_through_lines([rest_line] ++ rest, true)
  end

  defp step_through_lines(["mul(" <> rest_line | rest], enabled) do
    possible_numbers =
      rest_line
      |> String.split(")", parts: 2)
      |> List.first()

    IO.inspect(possible_numbers, label: "Försöker räkna mul: ")

    cond do
      enabled && String.match?(possible_numbers, ~r/^\d*,\d*$/) ->
        possible_numbers
        |> String.split(",")
        |> multiply_numbers()
        |> Kernel.+(step_through_lines([rest_line] ++ rest, enabled))

      true ->
        IO.inspect(possible_numbers, label: "Antingen ej giltiga värden: ")
        IO.inspect(enabled, label: "Eller ej enabled: ")
        step_through_lines([rest_line] ++ rest, enabled)
    end
  end

  defp step_through_lines([<<_::utf8, rest_line::binary>> | rest], enabled) do
    step_through_lines([rest_line] ++ rest, enabled)
  end
end
