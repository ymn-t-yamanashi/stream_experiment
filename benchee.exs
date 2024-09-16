Benchee.run(
  %{
    "stream" => fn -> StreamExperiment.stream() end,
    "enum" => fn -> StreamExperiment.enum() end
  },
  time: 1,
  memory_time: 2
)
