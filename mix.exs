defmodule Linkly.MixProject do
  use Mix.Project

  def project do
    [
      app: :linkly,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Linkly.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:postgrex, "~> 0.16.3"},
      {:ecto_sql, "~> 3.8"}
    ]
  end
end
