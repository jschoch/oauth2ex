defmodule OAuth2Ex.Mixfile do
  use Mix.Project

  def project do
    [app: :oauth2ex,
     version: "0.0.8",
     elixir: "~> 1.0.0",
     description: description,
     package: package,
     test_coverage: [tool: ExCoveralls],
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :httpoison, :cowboy, :plug]]
  end

  # Dependencies can be hex.pm packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:httpoison, "~> 0.7"},
      {:exjsx, "~> 3.1"},
      {:cowboy, "~> 1.0"},
      {:plug, "~> 0.14"},
      {:timex, "~> 0.13"},
      #{:excoveralls, "~> 0.3", only: [:dev, :test]},
      {:exvcr, "~> 0.5", only: [:dev, :test]}
    ]
  end

  defp description do
    """
    An OAuth 2.0 client library for elixir.
    """
  end

  defp package do
    [ contributors: ["parroty","jschoch"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/parroty/oauth2ex"} ]
  end
end
