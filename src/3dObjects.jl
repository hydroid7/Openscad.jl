# 3D Objects
struct Cube <: Terminal
    size::AbstractArray{Real, 1}
    center::Bool
end

struct Sphere <: Terminal
    r::Real
end

struct Cylinder <: Terminal
    height::Real
    r1::Real
    r2::Real
    center::Bool
end

struct Polyhedron <: Terminal
    fields
end


toString(c::Cube) = "cube(size = [$(c.size[1]), $(c.size[2]), $(c.size[3])]);\n"
toString(s::Sphere) = "sphere($(s.r));\n"
