defmodule FirstProjectElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :first_project_elixir,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
			mod: {MphDrop, []},
			applications: [:mph_drop],
			extra_applications: [:logger, :ecto, :jamdb_oracle],

    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
			{mph_drop: "~> 0.1.0"}
    ]
  end
end
