defmodule MyString do
  def center(str_list) do
    longest = find_longest(str_list)
    print_padded(str_list, longest)
  end

  def find_longest(str_list) do
    str_list |> Enum.sort_by(&String.length/1) |> List.last |> String.length
  end

  def print_padded(str_list, longest) do
    Enum.each(str_list, fn str ->
      len = String.length(str)
      pad_size = div(longest - len, 2)
      str |> String.pad_leading(len + pad_size) |> String.pad_trailing(longest) |> IO.puts
    end)
  end
end

