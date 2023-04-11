defmodule InsideDebugApp.MixProject do
  use Mix.Project

  def project do
    [
      app: :inside_debug_app,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      ## Eebz typespecs & behaviours
      {:outside_app_1, path: "../../../outside_app_1"},
      {:outside_app_2, path: "../../../outside_app_2"}
      # ## Phoenix
      # {:phoenix, "~> 1.6"},
      # {:phoenix_pubsub, "~> 2.0"},
      # {:phoenix_ecto, "~> 4.0"},
      # {:plug, "== 1.10.0"},
      # {:plug_cowboy, "~> 2.4.1"},
      # {:cowboy, "~> 2.8.0"},
      # {:cors_plug, "~> 2.0"},
      # {:remote_ip, "~> 0.2.1"},
      # {:phoenix_live_view, "~> 0.18.2"},
      # ## GraphQL
      # {:absinthe, "~> 1.6.6"},
      # {:absinthe_phoenix, "~> 2.0.2"},
      # {:absinthe_plug, "~> 1.5.8"},
      # {:dataloader, "~> 1.0.5"},
      # ## DB
      # # JSON
      # {:phoenix_jiffy, "~> 0.2.0"},
      # {:jiffy, "~> 1.0.8", override: true},
      # {:poison, "~> 4.0"},
      # {:quantum, "~> 3.0"},
      # # Jason for postgres
      # {:jason, "~> 1.2"},
      # ## Auth
      # {:guardian, "~> 2.1.1"},
      # {:guardian_phoenix, "~> 2.0.1"},
      # {:guardian_db, "~> 2.1.0"},
      # {:argon2_elixir, "~> 2.4"},
      # ## Money
      # {:ex_cldr, "~> 2.24"},
      # {:ex_money, "~> 5.9.0"},
      # {:countriex, "~> 0.4"},
      # ## Utilities
      # {:decimal, "~> 1.9"},
      # {:timex, "~> 3.5"},
      # {:recase, "0.7.0"},
      # {:codepagex, "~> 0.1.4"},
      # ## Scraping
      # {:floki, "~> 0.26"},
      # {:httpoison, "~> 1.6"},
      # ## Email sending
      # {:bamboo, "~> 1.2"},
      # {:bamboo_postmark, "~> 0.5"},
      # ## Encoding
      # {:iconv, "~> 1.0.10"},
      # {:p1_utils, "~> 1.0"},
      # ## Static analysis
      # {:dialyxir, "~> 1.0-rc.6", only: [:dev], runtime: false},
      # ## Documentation
      # {:ex_doc, "~> 0.19", only: [:dev], runtime: false},
      # ## Benchmarking
      # {:bmark, "~> 1.0.0", only: [:dev], runtime: false},
      # ## Tracing
      # # tap is a lightweight wrapper around recon_trace
      # {:tap, "~> 0.1.5", only: [:dev], runtime: false},
      # ## Error reporting
      # {:google_api_cloud_error_reporting, "~> 0.18"},
      # ## Testing
      # {:mox, "~> 1.0", only: :test},
      # ## Elastic
      # {:elasticsearch, "~> 1.0.0"},
      # ## Genserver testing
      # {:liveness, "~> 1.0.0", only: :test},
      # {:observer_cli, "~> 1.5"},
      # ## Security-focused static analysis
      # {:sobelow, "~> 0.8", only: :dev},
      # {:ecto, "~> 3.7.1", override: true},
      # {:libcluster, "~> 3.3"},
      # {:number, "~> 1.0"},
      # # Bootstrap
      # {:bootstrap_icons, "~> 0.3.0"}
    ]
  end
end
