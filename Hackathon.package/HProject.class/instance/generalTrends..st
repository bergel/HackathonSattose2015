visualization
generalTrends: view

	| b ds |
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
	^ b view