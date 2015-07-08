visualization
renderOn: view

	| b ds p  |
	b := RTGrapher new.
	b view: view.
	
	ds := RTStackedDataSet new.
	ds barShape width: 10.
	p := (versions associations sortedAs: #key).
	ds points: p.
	ds y: #value.
	ds barChartWithBarTitle: #key.
	b add: ds.

	
	b addDecorator: RTVerticalMinValueDecorator new red.
	b addDecorator: RTVerticalMaxValueDecorator new blue.

	b maxY: 100.
	b axisX noLabel; noTick.
	b build.
	^ b view