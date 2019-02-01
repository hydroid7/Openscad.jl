# Transform
struct Translate <: Group
    vector::AbstractArray{Real, 1}
    elements::AbstractArray{Op, 1}
end

function toString(t::Translate)
    output = "translate([$(t.vector[1]), $(t.vector[2]), $(t.vector[3])]) {\n"
    for c in t.elements
        output = output * toString(c)
    end
    output * "}"
end
