defmodule BasicAuthentication.MixProject do
  use Mix.Project

  def project do
    [
      app: :basic_authentication,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:raxx, "~> 0.18.0"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    """
    Submit and verify client credentials using the 'Basic' HTTP authentication scheme.
    """
  end

  defp package do
    [
      maintainers: ["Peter Saxton"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/crowdhailer/basic_authentication/tree/master/"
      }
    ]
  end
end
