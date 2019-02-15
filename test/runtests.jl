using Openscad
using Test

function test2d()
    square = Square([4, 5], true)
    square2 = Square([0, 0], true)
    tree =
    Unify([
        Circle(3, false),
        square,
        Translate([1, 1, 1], [
            Unify([
                square,
                square2
            ])
        ]),
        End()
    ])
    editor(tree, false)
end

function circle()
    toString(Circle(10, true))

@testset "circle" begin
           @test (typeof(test2d()) == String)
           @test (circle() == "circle(r=10,center=true)")
       end;
