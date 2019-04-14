defmodule ModulesAndFunctions do
  def sum(0), do: 0
  def sum(n), do: n + sum(n - 1)
end

# sum(3) -> 1 + 2 + 3 => 6

# sum(3) -> 3 + sum(2) -> 6
# sum(2) -> 2 + sum(1) -> 3
# sum(1) -> 1 + sum(0) -> 1
# sum(0) -> 0

