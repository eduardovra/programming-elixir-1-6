fizz_buzz = fn(a, b, c) ->
  case [a, b, c] do
    [0, 0, _] -> "FizzBuzz"
    [0, _, _] -> "Fizz"
    [_, 0, _] -> "Buzz"
    [_, _, c] -> c
  end
end

IO.puts "(0, 0, 1) -> #{fizz_buzz.(0, 0, 1)}"
IO.puts "(0, 1, 1) -> #{fizz_buzz.(0, 1, 1)}"
IO.puts "(1, 0, 1) -> #{fizz_buzz.(1, 0, 1)}"
IO.puts "(1, 1, 1) -> #{fizz_buzz.(1, 1, 1)}"

