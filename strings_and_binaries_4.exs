defmodule MyString do
  def calculate(formula) do
    formula |> parse |> do_reply
  end

  defp parse(formula) do
    [a, op, b] = ~w"#{formula}"
    [String.to_integer(a), op, String.to_integer(b)]
  end

  defp do_reply([a, "+", b]), do: a + b
  defp do_reply([a, "-", b]), do: a - b
  defp do_reply([a, "*", b]), do: a * b
  defp do_reply([a, "/", b]), do: a / b
end

