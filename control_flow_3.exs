defmodule ControlFlow do
  def ok!(param) do
    case param do
      {:ok, data} -> data
      {_, data} -> raise "Param was not ok! #{data}"
    end
  end
end

IO.puts ControlFlow.ok! {:ok, "Data returned successfully!"}
ControlFlow.ok! File.open("somefile")

