defmodule Accent.Transformer.PascalCaseTest do
  use ExUnit.Case

  describe "call/2" do
    test "converts snake_case to camelCase" do
      assert Accent.Transformer.PascalCase.call("hello_world") == "helloWorld"
    end

    test "trims leading and trailing underscores from input" do
      assert Accent.Transformer.PascalCase.call("_hello_world_") == "helloWorld"
    end

    test "supports atom as an input" do
      assert Accent.Transformer.PascalCase.call(:hello_world) == :helloWorld
    end

    test "properly handles multiple consecutive underscores" do
      assert Accent.Transformer.PascalCase.call("hello__world") == "helloWorld"
    end
  end
end
