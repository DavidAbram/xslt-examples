for $sales in doc("sales-records.xml")/*/record
for $product in doc("products.xml")/*/product
where $product/name eq $sales/product-name
let $order-price := $product/price * $sales/qty
order by $order-price descending
count $x
where $x < 5
return 
<sale product="{$product/name}" amount="{$order-price}"/>