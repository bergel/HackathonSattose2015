visualization - trend
generalTrendsRatio: view

	| b ds lb |
	b := RTGrapher new.
	b view: view.
	ds := RTStackedDataSet new.
	ds connectColor: Color orange.
	ds points: (self allNOC with: self allNOCC collect: [ :v1 :v2 | v2 / v1 ]).
	b add: ds.
	
	b axisX noLabel; noTick.
	b maxY: 1.
	b build.
	
	lb := RTLegendBuilder new.
	lb view: view.
	lb addText: 'Ratio of covered classes. (a covered classe is a class with at least one test-covered method).'.
	lb addText: 'X-axis = software version'.
	lb addText: 'Y-axis = test coverage'.
	lb build.
	^ b view