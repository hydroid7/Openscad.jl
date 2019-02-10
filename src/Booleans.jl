# Boolean Operators
struct Unify <: Group
    elements::AbstractArray{Op, 1}
end
struct Difference <: Group
    elements::AbstractArray{Op, 1}
end

function toString(t::Unify)
    output = "union(){"
    for c in t.elements
        output = output * toString(c)
    end
    output * "};"
end
