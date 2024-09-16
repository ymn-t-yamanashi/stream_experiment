defmodule StreamExperiment do
  alias Benchee
  def enum do
    IO.inspect("--------------- enum ---------------")

    1..10_000_000
    |> Enum.map(&(&1 * 2))
    |> Enum.map(&(&1 + 4))
    |> Enum.map(&(&1 - 1))
    |> Enum.sum()
    |> IO.inspect()

    :erlang.memory()
    |> IO.inspect()
  end

  def stream do
    IO.inspect("--------------- stream ---------------")

    1..10_000_000
    |> Stream.map(&(&1 * 2))
    |> Stream.map(&(&1 + 4))
    |> Stream.map(&(&1 - 1))
    |> Enum.sum()
    |> IO.inspect()

    :erlang.memory()
    |> IO.inspect()
  end
end
