defmodule Sequence.Application do
  @moduledoc false

  use Application

  def start(_type, initial_number) do
    children = [
      {Sequence.Stash, initial_number},
      {Sequence.Server, nil}
    ]

    opts = [strategy: :rest_for_one, name: __MODULE__]
    Supervisor.start_link(children, opts)
  end
end
