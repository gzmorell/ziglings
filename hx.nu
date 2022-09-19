#!\Users\fgonz\scoop\shims\nu.EXE
# Script to edit an exercise by number

def main [x : string] {
  let y = (($env.PWD | sd '\n' '') + '\' + ((fd $x exercises) | sd '\n' ''));
  echo $y;
  hx $y;
}