 FOR, LET, WHERE, ORDER BY, RETURN

 ~~~
 DECLARE @xml XML

SET @xml = 
'<root_element>
	<branch_element>
		<item_1>42</item_1>
		<item_2>27</item_2>
	</branch_element>
	<branch_element>
		<item_1>a</item_1>
		<item_2>b</item_2>
	</branch_element>
</root_element>'

SELECT 
		x.y.query('for $s in self::node() return $s//item_1/text()') as i,
		x.y.query('for $s in self::node() return $s//item_2/text()') as j
	FROM @xml.nodes('/root_element') AS x(y);
~~~