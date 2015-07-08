visualization - animated scatterplot
animatedScatterPlot

	| b |
	b := RTAnimatedScatterPlot new.
	self versions do: [ :v | b addTable: (self tabTableOfVersion: v) ].
	
	b columns: #('NOM' '%NOCM').
	b x: #second.
	b y: #third.
	b size: #second.
	
"	b if: [ :row | row first endsWith: 'Test' ] color: Color green.
	b if: [ :row | row first endsWith: 'Decorator' ] color: Color blue.
	b if: [ :row | row first endsWith: 'Diagram' ] color: Color red.
"
	b build.
	^ b view