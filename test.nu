let file = "last_resolved.nuon";
let data = open $file;
let number = ($data | get last) + 1;
echo "Changing data";
$data | update last $number | save $file;
