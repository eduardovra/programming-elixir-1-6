prefix = fn a -> (fn b -> "#{a} #{b}" end) end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")

IO.puts prefix.("Elixir").("Rocks")

