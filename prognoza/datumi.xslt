<datumi>{
  for $prognoze in doc("mydoc.xml")/*/prognoza
  let $dan := $prognoze/datum/dan
  let $vrijeme := $prognoze/datum/vrijeme
  group by $dan, $vrijeme
  return
    <datum>{
      $dan, $vrijeme
    }</datum>
}</datumi>
