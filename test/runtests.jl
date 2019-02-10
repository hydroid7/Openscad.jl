using Openscad
using Test

function test2d()
    square = Square([4, 5], true)
    square2 = Square([0, 0], true)
    tree =
    Openscad.Unify([
        Circle(3, false),
        square,
        Translate([1, 1, 1], [
            Openscad.Unify([
                square,
                square2
            ])
        ]),
        End()
    ])
    # println(toString(tree))
    editor(tree, false)
end

@testset "2d shapes" begin
           @test (typeof(test2d()) == String)
       end;
