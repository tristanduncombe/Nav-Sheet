#let standard_box(text: "") = {
  rect(width: 100%, height: 15pt, stroke: 0.5pt, text)
}

#let small_box = [
  #rect(width: 15pt, height: 15pt, stroke: 0.5pt)
]

#let small_box = [
  #rect(width: 15pt, height: 15pt, stroke: 0.5pt)
]

#let  header(callsign, type) = {[
  #text(6pt)[
#table(columns: (25%, 25%, 25%, 25%), stroke: (none), row-gutter: -8pt
)[Callsign][Type][Sartime UTC][Sartime Local][#standard_box(text: callsign)][#standard_box(text: type)][#standard_box()][#standard_box()][ETD][FORECAST][NOTAM][W & B][#standard_box()][#table(columns: (1fr, 1fr, 1fr), inset: 0pt,
  align: horizon,
  stroke: (none),
  [#small_box],
  [#small_box],
  [#small_box]
)][#table(columns: (1fr, 1fr, 1fr), inset: 0pt,
  align: horizon,
  stroke: (none),
  [#small_box],
  [#small_box],
  [#small_box]
)][#table(columns: (1fr, 1fr), inset: 0pt,
  align: horizon,
  stroke: (none),
  [#standard_box()],
  [#standard_box()],
)][][#text(size: 6pt)[#table(columns: (1fr, 1fr, 1fr), inset: 0pt,
  align: horizon,
  stroke: (none),
  [GAFS],
  [TAFS],
  [GPWT]
)]][#text(size: 6pt)[#table(columns: (1fr, 1fr, 1fr), inset: 0pt,
  align: horizon,
  stroke: (none),
  [Location],
  [FIR],
  [Head]
)]][#text(size: 6pt)[#table(columns: (1fr, 1fr), inset: 0pt,
  align: horizon,
  stroke: (none),
  [WGT KG],
  [CG %],
)]]]
]}

#let nav_log = [
  #box(height: 30%)[
  #text(6pt)[
      #table(columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: horizon,
      stroke: 0.5pt,
      fill: (x, _) =>
        if calc.odd(x) { rgb("#f0f0f0") }
        else { white },
      table.header(table.cell(rowspan: 1, colspan: 13, fill: rgb("#f0f0f0"))[#align(center)[*NAV LOG*]]),
      rows: (0.8fr, 1.5fr, 1.5fr, 1.5fr, 1.5fr, 1.5fr, 1.5fr, 1.5fr, 1.5fr, 1.5fr, 1.5fr),
      [POSN],
      [FL/ALT],
      [TAS],
      [TR (M)],
      [Wind],
      [HDG (M)],
      [G/S],
      [DIST],
      [ETI],
      [EET],
      [PLN EST],
      [REV EST],
      [ATA ATD],
    )]
  ],
]

#let fuel_com_log = [
  #box(height:30%)[
  #text(6pt)[
  #columns(2)[
    Fuel Track
    #table(columns:(0.75fr, 1fr, 1fr), stroke: 0.5pt)[Time][Left][Right][(#h(0.5fr))][][][(#h(0.5fr))][][][(#h(0.5fr))][][][(#h(0.5fr))][][][(#h(0.5fr))][][][(#h(0.5fr))][][][(#h(0.5fr))][][][(#h(0.5fr))][][][(#h(0.5fr))][][]
    Nav/Com Freq
    #table(columns:(0.75fr, 1fr, 1fr), stroke: 0.5pt)[At][Com 1][Com 2][#v(4pt)][][][#v(4pt)][][][#v(4pt)][][][#v(4pt)][][][#v(4pt)][][][#v(4pt)][][][#v(4pt)][][][#v(4pt)][][][#v(4pt)][][]
  ]]
  ]
]


#let notes_and_divert = [
  #box(height:20%)[
    #text(6pt)[
    #columns(2)[
      Notes
    #table(columns:(1fr, 1fr, 1fr, 1fr, 1fr, 1fr), stroke: (x, y) => {
      (bottom: 0.5pt + black)
      }, rows: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr))
    

      Divert
      #table(columns:(1fr, 1fr, 1fr, 1fr, 1fr, 1fr), stroke: 0.5pt, rows: (1.45fr, 1fr, 1fr, 1fr, 1fr, 1fr))[POSN][FL/ALT][HDG (M)][G/S][EET][ATA]
    ]]
  ]
]

#let notes_and_fuel(aircraft) = [
  #box(height:45%)[
  #if aircraft == "fixed-wing" {[
    #text(6pt)[
      Fuel
        #table(
      rows: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      columns: (1.25fr, 1fr, 1fr, 1fr, 1fr),
      stroke: 0.5pt,
      table.header(table.cell(rowspan: 1, colspan:1)[Fuel], table.cell(rowspan: 1, colspan: 4, fill: rgb("#f0f0f0"))[#align(center)[]]))[]
      
  ]]} else if aircraft == "rotary-wing" {[
    #text(6pt)[
      Fuel
        #table(
      table.header(table.cell(rowspan: 1, colspan:1)[Fuel], table.cell(rowspan: 1, colspan: 4, fill: rgb("#f0f0f0"))[#align(center)[]]))[]
    ]]
  } else if aircraft == "both" {[
    #text(6pt)[
      Fuel
        #table(
      table.header(table.cell(rowspan: 1, colspan:1)[Fuel], table.cell(rowspan: 1, colspan: 4, fill: rgb("#f0f0f0"))[#align(center)[]]))[]
    ]]
  }
  ]

  #box(height:20%)[
    #text(6pt)[
    Pilot Notes
    #table(columns:(1fr, 1fr, 1fr, 1fr, 1fr, 1fr), stroke: (x, y) => {
      (bottom: 0.5pt + black)
      },
      rows: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr))
    ]
  ]
]

#let sheet(aircraft: "both", callsign: "", type: " ",  variant: "1", doc) = [
  #set text(font: "Roboto", size: 10pt)

  #set page(
    paper: "a5",
    margin: (top: 0.45in, bottom: 0.5in, left: 0.25in, right: 0.25in),
    footer: [
      
    ],
    number-align: center
  )
  Nav Log
  #header(callsign, type)
  #nav_log
  #fuel_com_log
  #notes_and_divert
  #if variant == "2" {
    [#notes_and_fuel(aircraft)]
  } 
]