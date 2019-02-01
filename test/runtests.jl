using Openscad

square = Square([4, 5], true)
square2 = Square([0, 0], true)
tree =
Openscad.Union([
    Circle(3, false),
    square,
    Translate([1, 1, 1], [
        Openscad.Union([
            square,
            square2
        ])
    ]),
    End()
])

println(toString(tree))
editor(tree, true)
