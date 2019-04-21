defmodule MyList do

  def span(to, to), do: [to]

  def span(from, to) do
    [ from | span(from + 1, to) ]
  end

  def span_primes(n) do
    for num <- span(2, n), is_prime?(num), do: num
  end

  def is_prime?(num) do
    list = for x <- 1..num, rem(num, x) == 0, do: x
    length(list) == 2
  end
end

IO.inspect MyList.span_primes(100)


