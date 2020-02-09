using Documenter, ISA

makedocs(;
    modules=[ISA],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/ssandova/ISA.jl/blob/{commit}{path}#L{line}",
    sitename="ISA.jl",
    authors="Steven Sandoval",
    assets=String[],
)

deploydocs(;
    repo="github.com/ssandova/ISA.jl",
)
