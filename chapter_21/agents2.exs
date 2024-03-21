# Sum gets converted to :Elixir.Sum
Agent.start(fn -> 1 end, name: Sum)

# Interacting with the agent by name.
IO.puts(Agent.get(Sum, & &1))
# 1

Agent.update(Sum, &(&1 + 1))

IO.puts(Agent.get(Sum, & &1))
# 2
