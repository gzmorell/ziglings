let file = "resolved.nuon";
let data = open $file;

def main [x?: int] {
  let number = if $x != $nothing {
    $x
  } else {
    ($data | get resolved) + 1
  }
  $data | update resolved $number | save $file;
}
