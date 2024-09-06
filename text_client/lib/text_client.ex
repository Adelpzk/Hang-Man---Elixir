defmodule TextClient do

  alias TextClient.Impl.Player

  @spec start() :: :ok
  def start do
    TextClient.Runtime.RemoteHangman.connect()
    |> TextClient.Impl.Player.start()
  end
end
