{:ok, count_agent} = Agent.start(fn -> 0 end)

IO.puts(Agent.get(count_agent, & &1))
# 0

Agent.update(count_agent, &(&1 + 1))
# :ok

IO.puts(Agent.get(count_agent, & &1))
# 1

Agent.update(count_agent, &(&1 + 1))
# :ok

IO.puts(Agent.get(count_agent, & &1))
# 2
