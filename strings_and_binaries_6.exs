defmodule MyString do
  def captalize_sentences(str) do
    str
    |> String.split(". ")
    |> Enum.map(&String.capitalize/1)
    |> Enum.join(". ")
  end
end

IO.puts MyString.captalize_sentences("oh. a DOG. woof. ")

