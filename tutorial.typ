= Introduction

In this report, we will explore the various factors that influence fluid dynamics in glaciers and how they contribute to the formation and behaviour of these natural structures.

== Emphasis

_This is a test_

== Lists

+ Test
  - Test
  - Test
+ Test
+ Test

== Figures

#figure(image("placeholder.png", width: 20%), caption: [
  Placeholder image
  Test
]) <placeholder>

== References

Testing some reference @placeholder and @wwdc-network.

== Bib

Using Hayagriva or BibLateX.

#bibliography("basic.yml")

== Math

The equation $Q = rho A c + C$ defines the glacial flow rate.
Inlined equation.
$ Q = rho A c + C $

=== Sub & Superscript

Total displace solid glacial flow:

$ 7.32 beta + sum_(i=0)^nabla Q_i / 2 $

$ 7.32 beta + sum_(i=0)^nabla (Q_i (a_i - epsilon)) / 2 $

$ v := vec(x_1, x_2, x_3) $

$ a arrow.squiggly b $

== Code Blocks

```rust
fn main() {
    println!("Hello World!");
}
```

== Set Rules

Don't do this

```typst
#par(justify: true)[
  = Background
  In the case of glaciers, fluid
  dynamics principles can be used
  to understand how the movement
  and behaviour of the ice is
  influenced by factors such as
  temperature, pressure, and the
  presence of other fluids (such as
  water).
]
```

But rather

```typst
#set par(justify: true)
```

#set text(font: "New Computer Modern", size: 10pt)
#set page(
  paper: "a6",
  margin: (x: 1.8cm, y: 1.5cm),
)
#set par(
  justify: true,
  leading: 0.52em,
)

= Background
In the case of glaciers, fluid dynamics principles can be used to understand how the movement and behaviour of the ice is influenced by factors such as temperature, pressure, and the presence of other fluids (such as water).

#set page(
  paper: "a4",
)

= Heading numbering

#set heading(numbering: "1.")

= Introduction
#lorem(10)

== Background
#lorem(12)

== Methods
#lorem(15)

#set heading(numbering: "1.a")

= Introduction
#lorem(10)

== Background
#lorem(12)

== Methods
#lorem(15)

= Show Rule

Redefine how typst display certain elements using `show`.

```typst
#show "ArtosFlow": name => box[
  #box(image(
    "placeholder.png",
    height: 0.7em,
  ))
  #name
]
```

#show "ArtosFlow": name => box[
  #box(image(
    "placeholder.png",
    height: 0.7em,
  ))
  #name
]

This report is embedded in the ArtosFlow project. ArtosFlow is a project of the Artos Institute.

= Advanced Styling

#let title = [ A fluid dynamic model for glacier flow ]

#set page(
  paper: "us-letter",
  header: align(right + horizon, title),
  numbering: "(1/1)",
)
#set par(justify: true)
#set text(
  font: "Linux Libertine",
  size: 11pt,
)

#align(center, text(17pt)[
  *#title*
])

#grid(
  columns: (1fr, 1fr),
  align(center)[
    Therese Tungsten \
    Artos Institute \
    #link("mailto:tung@artos.edu")
  ], align(center)[
    Dr. John Doe \
    Artos Institute \
    #link("mailto:doe@artos.edu")
  ]
)

#align(center)[
  #set par(justify: false)
  *Abstract* \
  #lorem(80)
]

#show: rest => columns(2, rest)

#show heading: it => [
  #set heading(numbering: none)
  #set align(center)
  #set text(12pt, weight: "regular")
  #block(smallcaps(it.body))
]

#show heading.where(level: 1): it => block(width: 100%)[
  #set align(center)
  #set text(12pt, weight: "regular")
  #smallcaps(it.body)
]

#show heading.where(level: 2): it => text(
  size: 11pt,
  weight: "regular",
  style: "italic",
  it.body + [.],
)

= Introduction
#lorem(20)

== Morivation
#lorem(300)

= Related Work
#lorem(200)

= LaTeX Look

```typst
#set page(margin: 1.75in)
#set par(leading: 0.55em, first-line-indent: 1.8em, justify: true)
#set text(font: "New Computer Modern")
#show raw: set text(font: "New Computer Modern Mono")
#show par: set block(spacing: 0.55em)
#show heading: set block(above: 1.4em, below: 1em)
```
