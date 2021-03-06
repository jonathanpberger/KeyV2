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
$inset_legend_depth = 0.4;
$outset_legend_depth = 0.2;

$outset_legends = true;
$key_height = 20;


dcs_row(4) 2uh() 
// arrow
legend("︎", size=5, [0,-0.35])

// trash
legend("", size=5,[0,0.6])


key(key_height = 1);


//legends = [  "a", "o﫧"  ];
//dcs_row(4) 2uh() legend(legends[x][1], [-1,1]) 
     //   legend(legends[x][2], [1,-1]) 
       //     key();
          
      
//dcs_row(4) 2uh() legend("A", size=5) key();
