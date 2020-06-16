
//////////////////////////////////////////// EVERNYDTHING PRINTS ALL WAV{Y!!!} Use customizer instwead




/*






// the point of this file is to be a sort of DSL for constructing keycaps.
// when you create a method chain you are just changing the parameters
// key.scad uses, it doesn't generate anything itself until the end. This
// lets it remain easy to use key.scad like before (except without key profiles)
// without having to rely on this file. Unfortunately that means setting tons of
// special variables, but that's a limitation of SCAD we have to work around

include <./includes.scad>


// example key
$font="DejaVu Sans Mono:style=Book";
$font_size = 10;
$font="Hack Nerd Font:style=Regular";
$font="Signpainter:style=HouseScript Semibold";

$inset_legend_depth = 0.5;


// legends_inset = ["A", "R", "L","S"];
// for(y=[0:3]) {
//   translate_u(-1,y) 1u() sa_row() legend(legends_inset[y], [-0.2,0]) key();
// }


//outset
// legends_outset = ["⬆︎","⬅︎","➡︎","⬇︎"];
legends_outset = ["H","U"];
//$outset_legends = true;

// for(y=[0:1]) {
//   translate_u(1,y) 1u() sa_row() legend(legends_outset[y], [0,0]) key();
// }



outer_legends = [
  ["!", "1"],
  ["@", "2"],
  ["#", "3"],
  ["*", "8"],
  ["(", "9"],
  [")", "0"],
  ["\"", "\'"],
  ["<", ","]
];

middle_legends = [
  ["$", "4"],
  ["%", "5"],

];

inner_legends = [
  ["±", "§"],
  ["|", "\\"],
  ["|", "/"],

  ["{", "["],

];

//$inset_legend_depth = 0.4;

$font_size = 7;

for (x=[0:len(inner_legends)-1]) {
  translate_u(x%2,floor(x/2)) {
    legend(inner_legends[x][0], [-0.7,-0.75]) {
      legend(inner_legends[x][1], [0.5,0.75]) {
            key();
          
        
      }
    }
  }
}
