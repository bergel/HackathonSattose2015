visualization - trend
generalTrends: view

	| b ds lb |
	b := RTGrapher new.
	b view: view.
	ds := RTStackedDataSet new.
	ds connectColor: Color blue.
	ds points: self allNOC.
	b add: ds.
	
	ds := RTStackedDataSet new.
	ds connectColor: Color green.
	ds points: self allNOCC.
	b add: ds.
	
	b axisX noLabel; noTick.
	b build.
	
	lb := RTLegendBuilder new.
	lb view: view.
	lb addText: 'Number of covered classes. (a covered class is a class with at least one test-covered method).'.
	lb addText: 'X-axis = software version'.
	lb addText: 'Y-axis = Number of classes'.
	lb addLineColor: Color blue text: 'Number of classes'.
	lb addLineColor: Color green text: 'Number of covered classes'.
	lb build.
	^ b view