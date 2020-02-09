using ISA

t = Array(0.0:0.005:2.0)

using Interact
@manipulate for a= 0:0.05:1, ω = -5:0.1:20, φ = -pi:pi/50:pi
    a₀(t) = a
    ω₀(t) = ω
    φ₀ = φ
    𝐶₀ = Tuple([a₀,ω₀,φ₀])

    isaPlot3d(𝐶₀, t)
end
