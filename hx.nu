#!\Users\fgonz\scoop\shims\nu.EXE
# Script to edit an exercise by number
let file = "resolved.nuon";
def main [x : string] {
  let y = if ($x == "last") {
      (open $file | get resolved) + 1
  } else {
    $x
  }
  let z = (($env.PWD | sd '\n' '') + '\' + ((fd $y exercises) | sd '\n' ''));
  hx $z;
}