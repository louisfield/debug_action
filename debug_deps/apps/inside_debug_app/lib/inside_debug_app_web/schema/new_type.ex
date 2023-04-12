defmodule InsideDebugAppWeb.Schema.NewType do
  use Absinthe.Schema.Notation

  object :new_type do
    field(:num, :integer)
  end
end
