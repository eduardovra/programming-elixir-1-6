defmodule Spawn do
  def process_exit(pid) do
    send pid, "Pong!"
    exit(:boom)
  end

  def process_exception(pid) do
    send pid, "Pong!"
    raise "Exception!"
  end

  def create_process_spawn_monitor(process) do
    spawn_monitor(Spawn, process, [self()])
    sleep_and_receive_msgs()
  end

  def create_process_spawn_link(process) do
    spawn_link(Spawn, process, [self()])
    sleep_and_receive_msgs()
  end

  defp sleep_and_receive_msgs() do
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
