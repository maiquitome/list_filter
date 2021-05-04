defmodule ListFilter do
  ####### ENUM ########
  def call_using_enum(list) do
    Enum.reduce(list, 0, &(&2 + (&1 |> Integer.parse() |> is_number? |> is_odd?)))
  end

  ####### RECURSIVITY ######
  def call_using_recursivity(list), do: list_filter(list, 0)

  defp list_filter([], acc), do: acc

  defp list_filter([head | tail], acc) do
    zero_or_one =
      head
      |> Integer.parse()
      |> is_number?()
      |> is_odd?()

    acc = acc + zero_or_one

    list_filter(tail, acc)
  end

  defp is_number?({number, _any}), do: number
  defp is_number?(:error), do: false

  defp is_odd?(false), do: 0
  defp is_odd?(number) when rem(number, 2) == 1, do: 1
  defp is_odd?(number) when rem(number, 2) == 0, do: 0
end
