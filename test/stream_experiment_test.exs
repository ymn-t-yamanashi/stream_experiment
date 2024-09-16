defmodule StreamExperimentTest do
  use ExUnit.Case
  doctest StreamExperiment

  test "greets the world" do
    assert StreamExperiment.hello() == :world
  end
end
