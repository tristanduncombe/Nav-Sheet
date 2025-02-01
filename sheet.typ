#set rect(
  width: 100%,
  height: 100%,
  inset: 4pt,
)

#set page(
  paper: "a5",
  header: rect(fill: aqua)[Header],
  footer: rect(fill: aqua)[Footer],
  number-align: center,
)

#table(columns: (25%, 25%, 25%, 25%), stroke: (none)
)[Callsign][Type][Sartime UTC][Sartime Local][#rect(width: 100%, height: 15pt, stroke: 0.5pt)][#rect(width: 100%, height: 15pt, stroke: 0.5pt)][#rect(width: 100%, height: 15pt, stroke: 0.5pt)][#rect(width: 100%, height: 15pt, stroke: 0.5pt)][ETD][FORECAST][NOTAM][W & B][#rect(width: 100%, height: 15pt, stroke: 0.5pt)][#table(columns: (1fr, 1fr, 1fr), inset: 0pt,
  align: horizon,
  stroke: (none),
  [#rect(width: 15pt, height: 15pt, stroke: 0.5pt)],
  [#rect(width: 15pt, height: 15pt, stroke: 0.5pt)],
  [#rect(width: 15pt, height: 15pt, stroke: 0.5pt)]
)][#table(columns: (1fr, 1fr, 1fr), inset: 0pt,
  align: horizon,
  stroke: (none),
  [#rect(width: 15pt, height: 15pt, stroke: 0.5pt)],
  [#rect(width: 15pt, height: 15pt, stroke: 0.5pt)],
  [#rect(width: 15pt, height: 15pt, stroke: 0.5pt)]
)][#table(columns: (1fr, 1fr), inset: 0pt,
  align: horizon,
  stroke: (none),
  [#rect(width: 100%, height: 15pt, stroke: 0.5pt)],
  [#rect(width: 100%, height: 15pt, stroke: 0.5pt)],
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
)]]
#box(height: 30%)[
  #text(6pt)[
  #table(columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: horizon,
  stroke: 0.5pt,
  rows: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
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

#box(height:28%)[
  #text(6pt)[
  #columns(2)[
    Fuel Track
    #table(columns:(0.75fr, 1fr, 1fr), stroke: 0.5pt)[Time][Left][Right][(#h(0.5fr))][][][(#h(0.5fr))][][][(#h(0.5fr))][][][(#h(0.5fr))][][][(#h(0.5fr))][][][(#h(0.5fr))][][][(#h(0.5fr))][][][(#h(0.5fr))][][]
    Nav/Com Freq
    #table(columns:(0.75fr, 1fr, 1fr), stroke: 0.5pt)[At][Com 1][Com 2][#v(4pt)][][][#v(4pt)][][][#v(4pt)][][][#v(4pt)][][][#v(4pt)][][][#v(4pt)][][][#v(4pt)][][][#v(4pt)][][]
  ]]
]
#box(height:15%)[
  #text(6pt)[
  #columns(2)[
    Notes
  #pad([
    #line(length: 100%, stroke: 0.5pt)

    #line(length: 100%, stroke: 0.5pt)

    #line(length: 100%, stroke: 0.5pt)

    #line(length: 100%, stroke: 0.5pt)

    #line(length: 100%, stroke: 0.5pt)

    #line(length: 100%, stroke: 0.5pt)

    #line(length: 100%, stroke: 0.5pt)

    #line(length: 100%, stroke: 0.5pt)

    #line(length: 100%, stroke: 0.5pt)
    
  ])
  

    Divert
    #table(columns:(1fr, 1fr, 1fr, 1fr, 1fr, 1fr), stroke: 0.5pt)[POSN][FL/ALT][HDG (M)][G/S][EET][ATA][#v(4pt)][][][#v(4pt)][][][#v(4pt)][][][][][][#v(4pt)][][][][][]
  ]]
]