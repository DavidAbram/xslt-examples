<gradovi>{
  for $prognoze in doc("mydoc.xml")/*/prognoza
  let $grad := $prognoze/lokacija/grad/text()
  let $compare := compare($grad, 'Zagreb')
  let $jedinica := $prognoze/temperatura/@jedinica
  let $temp := number($prognoze/temperatura/text())
  where $compare = 0
  group by $grad, $jedinica
  order by $grad
  return
    <grad>
      <ime>{
        $grad
      }</ime>
      <pros-temp>{
        avg($temp), $jedinica
      }</pros-temp>
    </grad>
}</gradovi>
