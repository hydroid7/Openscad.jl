module Openscad

abstract type Op end
abstract type Group <: Op end
abstract type Terminal <: Op end

export Circle, Square, End,
    Unify, Difference,
    Translate,
    toString, editor

include("./3dObjects.jl")

include("./2dObjects.jl")

include("./Booleans.jl")

include("./Transforms.jl")

struct End <: Terminal end
toString(s::End) = ";"

function editor(tree::Op, show::Bool = true)
    tempFile = toString(tree)
    path = "/tmp/$(hash(tree)).scad"
    open(path, "w") do f
        write(f, tempFile)
    end
    if show
        sleep(0.5)
        run(`openscad $path`)
    end
    tempFile
end

end
