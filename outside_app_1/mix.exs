defmodule OutsideApp1.MixProject do
  use Mix.Project

  def project do
    [
      app: :outside_app_1,
      version: "0.1.0",
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
      {:ecto, "~> 3.7.2"},
      {:ecto_sql, "~> 3.7.2"},
      {:postgrex, ">= 0.0.0"},
      {:ecto_enum, "~> 1.4"},
      # Jason for postgres
      {:jason, "~> 1.2"},
      {:poison, "~> 4.0"},
      {:quantum, "~> 3.0"},
      ## Money
      {:decimal, "~> 1.9"},
      {:ex_cldr, "~> 2.24"},
      {:ex_money, "~> 5.9.0"},
      {:ex_money_sql, "~> 1.4"},
      {:countriex, "~> 0.4"},
      {:argon2_elixir, "~> 2.4.0"},
      {:dataloader, "~> 1.0.5"},
      {:timex, "~> 3.5"},
      {:mox, "~> 1.0", only: :test},
      {:elasticsearch, "~> 1.0.0"},
      # Testing
      {:faker, "~> 0.15", only: :test},
      ## Credo - static code analysis
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
      # Retry
      {:retry, "~> 0.14.1"},
      {:outside_app_2, path: "../outside_app_2"},
      {:poolboy, "~> 1.5.2"},
      {:number, "~> 1.0"}
    ]
  end
end
