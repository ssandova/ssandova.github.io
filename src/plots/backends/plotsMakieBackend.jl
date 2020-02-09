
# !!! NOT WORKING !!!

using Makie 

#Construct isaPlot3d from type AMFMmodel called with a time index using Makie backend
function isaPlot3d(z::AMFMmodel,t::Vector{Float64})
    for i in 1:length(z.comps)
        a_max = 1 #need to finish
        if i==1
            scene = lines(-t,
             -z.comps[i].ω.(t),
              real.(z.comps[i](t)),
               color = isa.cmap[max.(min.(round.(Int, abs.(z.comps[i].a.(t)) .* 256 / a_max), 256), 1)])
        else
            lines!(-t,
             -z.comps[i].ω.(t),
              real.(z.comps[i](t)),
              color = isa.cmap[max.(min.(round.(Int, abs.(z.comps[i].a.(t)) .* 256 / a_max), 256), 1)])
          end
          if i==length(z.comps)
              axis = scene[Axis] # get the axis object from the scene
              axis.names.axisnames = ("t", "ω(t)","x(t)")
              scene
          end
      end
end

#lims = FRect3D(Vec3f0(-1, -1, -1), Vec3f0(1, 1, 2))
#scene = lines(-t, -ω, x, color = c, limits=lims)
