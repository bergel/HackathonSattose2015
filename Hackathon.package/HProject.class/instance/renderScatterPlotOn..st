visualization - animated scatterplot
renderScatterPlotOn: view

	| b |
	b := RTAnimatedScatterPlot new.
	b view: view.
	self versions do: [ :v | b addTable: (self tabTableOfVersion: v) ].
	
	b columns: #('NOM' '%NOCM').
	b x: #second.
	b y: #third.
	b size: #second.
	
	b if: [ :row | (self classAt: row first) isCoverageHasIncreased ] color: Color blue.
	b if: [ :row | (self classAt: row first) isCoverageHasDecreased ] color: Color red.

	b build.
	^ b view