using Openscad
using Test

@testset "2d shapes" begin
    @test (toString(Circle(10, false)) == "circle(r = 10, center = false);")
    @test (toString(Square([1, 1], true)) == "square(size = [1, 1], center = true);")
end

function test2d()
    square = Square([4, 5], true)
    square2 = Square([0, 0], true)
    tree =
    Unify([
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
    tree
end

@testset "complex 2d shape" begin
    @test (toString(test2d()) == "union(){circle(r = 3, center = false);square(size = [4, 5], center = true);translate([1, 1, 1]) {union(){square(size = [4, 5], center = true);square(size = [0, 0], center = true);};};};")
end

@testset "3d shapes" begin
end
