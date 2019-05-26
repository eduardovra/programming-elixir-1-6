defmodule Spawn do
  def process(pid) do
    send pid, "Pong!"
    raise "Exception"
  end

  def create_process() do
    spawn_link(Spawn, :process, [self()])

    :timer.sleep(500)

    receive_msgs()
  end

  def receive_msgs() do
    receive do
      msg ->
        IO.inspect msg
    end

    receive_msgs()
  end
end
