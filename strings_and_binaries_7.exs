defmodule Sales do
  def charge(tax_rates, orders) do
    for order = [_, ship_to: ship_to, net_amount: net_amount] <- orders do
      tax = net_amount * get_rate(tax_rates, ship_to)
      Keyword.put order, :total_amount, net_amount + tax
    end
  end

  defp get_rate(tax_rates, ship_to) do
    Keyword.get tax_rates, ship_to, 0
  end

  def read_orders(file_path) do
    {:ok, file} = File.open(file_path)
    _header = IO.read(file, :line)
    orders = Enum.map(IO.stream(file, :line), &read_order/1)
    File.close(file)
    orders
  end

  defp read_order(line) do
    [id, ship_to, net_amount] = line |> String.trim |> String.split(",")
    [
      id: String.to_integer(id),
      ship_to: String.to_atom(ship_to),
      net_amount: String.to_float(net_amount),
    ]
  end
end

tax_rates = [ NC: 0.075, TX: 0.08 ]

orders = Sales.read_orders("strings_and_binaries_7.txt")

IO.inspect Sales.charge tax_rates, orders

