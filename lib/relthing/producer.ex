defmodule Relthing.Producer do
  use GenServer
  require KafkaEx
  require Logger

  def start_link() do
    IO.inspect Application.get_all_env(:relthing)
    IO.inspect Application.get_all_env(KafkaEx)
    Logger.info "starting #{__MODULE__}"
    GenServer.start_link(__MODULE__, [], name: {:global, __MODULE__})
  end

  def init([]) do
    KafkaEx.create_worker(:pr, [{"sf-jrotenb-mac", 9092}])
    Process.send_after(self, :produce, 2000)
    {:ok, {:msg, :random.uniform(20)}}
  end

  def handle_info(:produce, state) do
    {:msg, num} = state

    Logger.info "producing #{num}"
    KafkaEx.produce("test", 0, to_string(num), [worker_name: :pr])

    Process.send_after(self, :produce, 2000)
    {:noreply, {:msg, :random.uniform(20)}}
  end
  
  def handle_info(_msg, state) do
    IO.puts "huh?"
    {:noreply, state}
  end
end
