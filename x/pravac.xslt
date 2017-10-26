for $values in doc("mydoc.xml")/*/value
let $x := number($values/text())
let $a := 2
let $b := 1
return <result>{$a*$x+$b}</result>