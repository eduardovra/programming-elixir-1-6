defmodule MyString do
  def only_printable([]) do
    true
  end

  def only_printable([head | tail]) do
    only_printable(head) && only_printable(tail)
  end

  def only_printable(char) when char in 32..126 do
    true
  end

  def only_printable(_) do
    false
  end
end

