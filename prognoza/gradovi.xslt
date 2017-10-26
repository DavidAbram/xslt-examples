<gradovi>{
  for $prognoze in doc("mydoc.xml")/*/prognoza
  let $grad := $prognoze/lokacija/grad
  group by $grad
  order by $grad
  return
    <grad>{
      $grad
    }</grad>
}</gradovi>
