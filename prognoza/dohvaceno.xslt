<dohvaceno>{
  for $prognoze in doc("mydoc.xml")/*/prognoza
  let $dohvaceno := $prognoze/@dohvacena
  group by $dohvaceno
  order by $dohvaceno
  return
    <dateTime>{
      $dohvaceno
    }</dateTime>
}</dohvaceno>
