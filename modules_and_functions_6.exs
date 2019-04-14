defmodule Chop do
  def guess(actual, first..last) do
    guessed = div(first + last, 2)
    IO.puts "Is it #{guessed}"
    try_guess(actual, first..last, guessed)
  end

  def try_guess(actual, first.._, guessed) when (guessed > actual) do
    guess(actual, first..(guessed - 1))
  end

  def try_guess(actual, _..last, guessed) when (guessed < actual) do
    guess(actual, (guessed + 1)..last)
  end

  def try_guess(actual, _, actual), do: IO.puts "#{actual}"
end

