defmodule AppWeb.FeatureCase do
  defmacro __using__(opts) do
    quote do
      use Cabbage.Feature, unquote(opts)
      use Wallaby.DSL
      import Wallaby.Query

      setup tags do
        {:ok, session} = Wallaby.start_session()
        {:ok, session: session}
      end
    end
  end
end
