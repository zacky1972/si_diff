defmodule SiDiff.MixProject do
  use Mix.Project

  @source_url "https://github.com/zacky1972/si_diff"
  @version "0.1.0-dev"

  def project do
    [
      app: :si_diff,
      version: @version,
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs()
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, "~> 0.28", only: :dev, runtime: false},
      {:dialyxir, "~> 1.1", only: [:dev], runtime: false},
      {:git_hooks, "~> 0.6.4", only: [:dev], runtime: false},
      {:nx, "~> 0.1"},
      {:evision, "~> 0.1.0-dev", github: "cocoa-xu/evision", branch: "main"},
      {:nx_evision, "~> 0.1.0-dev", github: "zeam-vm/nx_evision", branch: "main"}
    ]
  end

  defp docs do
    [
      main: "SiDiff",
      source_ref: "v#{@version}",
      source_url: @source_url
    ]
  end
end
