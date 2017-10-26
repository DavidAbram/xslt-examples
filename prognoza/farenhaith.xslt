<gradovi>{
  for $prognoze in doc("mydoc.xml")/*/prognoza
  let $grad := $prognoze/lokacija/grad/text()
  let $temp := number($prognoze/temperatura/text()) * 1.8 + 32
  group by $grad
  return
    <grad>
      <ime>{
        $grad
      }</ime>
      <temp>{
        avg($temp)
      }</temp>
    </grad>
}</gradovi>
