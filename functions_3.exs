fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, a) -> a
end

test_fizz_buzz = fn n -> fizz_buzz.( rem(n, 3), rem(n, 5), n ) end

Enum.map 10..16, fn n -> IO.puts "#{n} -> #{test_fizz_buzz.(n)}" end

