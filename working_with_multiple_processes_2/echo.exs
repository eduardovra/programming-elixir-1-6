defmodule Echo do
  def echo(pid) do
    receive do
      msg ->
        send pid, msg
    end
  end

  def create_processes() do
    pid = spawn(Echo, :echo, [self()])
    send(pid, "fred")
    pid = spawn(Echo, :echo, [self()])
    send(pid, "betty")

    receive do
      msg ->
        IO.puts "Got message back: #{msg}"
    end

    receive do
      msg ->
        IO.puts "Got message back: #{msg}"
    end
  end
end
