defmodule InsideDebugAppWeb.Schema do
  use Absinthe.Schema

  alias InsideDebugAppWeb.Schema

  object :test do
    field(:id, :id)

    import_types(Schema.NewType)
  end

  query do
  end
end
