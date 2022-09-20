let file = "resolved.nuon";
let data = open $file;

def main [] {
  let x = ((($data | get resolved) + 1) | into string);
  zig build $x
}
