#import("../../template.typ"): sheet
#show: sheet.with(
  aircraft: "fixed-wing",
  waypoint: true,
  type: "SLG2",
  callsign: "8569",
  departure: "YHEC",
  waypoints: "./examples/waypoint/waypoints.json"
)