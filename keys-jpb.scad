// the point of this file is to be a sort of DSL for constructing keycaps.
// when you create a method chain you are just changing the parameters
// key.scad uses, it doesn't generate anything itself until the end. This
// lets it remain easy to use key.scad like before (except without key profiles)
// without having to rely on this file. Unfortunately that means setting tons of
// special variables, but that's a limitation of SCAD we have to work around

include <./includes.scad>


// example key
$font="DejaVu Sans Mono:style=Book";
$font="Hack Nerd Font:style=Regular";
$font="Signpainter:style=HouseScript Semibold";

$inset_legend_depth = 0.4;

legends = ["P", "Q", "G", "C"];
for(y=[0:3]) {
  translate_u(0,y) 1u() sa_row() legend(legends[y], [0,0, 6]) key();
}