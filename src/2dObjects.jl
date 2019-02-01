# 2D Objects
struct Circle <: Terminal
  r::Real
  center::Bool
end
struct Square <: Terminal
    pos::AbstractArray{Real, 1}
    center::Bool
end
struct Polygon
    fields
end

toString(c::Circle) = "circle(r = $(c.r), center = $(c.center));\n"
toString(s::Square) = "square(size = [$(s.pos[1]), $(s.pos[2])], center = $(s.center));\n"
