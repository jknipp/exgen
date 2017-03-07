defmodule ExGen.Mixfile do
  use Mix.Project

  def project do
    [app: :exgen,
     version: "0.5.2",
     elixir: ">= 1.3.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: []]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:cowboy, "~> 1.0", only: [:dev, :test]},
      {:plug, "~> 1.0", only: [:dev, :test]},
      {:poison, "~> 2.2.0", only: [:dev, :test]}
    ]
  end
end
