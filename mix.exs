defmodule Excountries.Mixfile do
  use Mix.Project

  def project do
    [
      app: :excountries,
      version: "0.0.4",
      elixir: ">= 1.16.0",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [applications: [:logger, :httpoison, :poison]]
  end

  defp deps do
    [
      {:httpoison, ">= 2.2.0"},
      {:poison, ">= 5.0.0"}
    ]
  end

  defp description do
    """
    Elixir wrapper for REST Countries API (http://restcountries.eu/)
    """
  end

  defp package do
    [
      files: ["lib", "config", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Ilija Eftimov"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/fteem/excountries"}
    ]
  end
end
