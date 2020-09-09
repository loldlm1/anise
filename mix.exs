defmodule Anise.MixProject do
  use Mix.Project
  @version "0.1.3"
  @github_url "https://github.com/gen1321/anise"
  @description "Helpers/Assertions for Absinthe"

  def project do
    [
      app: :anise,
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      version: @version,
      description: @description,
      docs: docs(),
      package: package(),
      source_url: @github_url
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
      {:credo, "~> 1.3", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.22", only: :dev, runtime: false},
      {:absinthe_phoenix, "~> 1.4.0"}
    ]
  end

  defp package do
    [
      files: [
        "lib",
        "mix.exs",
        "README.md",
        "LICENSE"
      ],
      links: %{"github" => @github_url},
      maintainers: ["Boris Beginin <gen3212@gmail.com>"],
      licenses: ["MIT"]
    ]
  end

  defp docs do
    [
      source_ref: "v#{@version}",
      main: "Anise",
      extras: ["README.md"]
    ]
  end
end
