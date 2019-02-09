# Openscad.jl
---

This package lets you write Openscad code in Julia.
Work is in progress.

## Demo
```julia

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

toString(tree) # Convert tree to string.

editor(tree) # Save it temporary and open editor to view the result.

```
