using Documenter, Example, clima_demo
makedocs(
  sitename="clima_demo",
  doctest = false,
  strict = false,
  format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true",),
  modules = [Documenter, clima_demo],
  clean = false,
  pages = Any[
    "Home" => "index.md",
  ]
)
deploydocs(
           repo = "github.com/costachris/clima_demo.git",
           target = "build",
          )