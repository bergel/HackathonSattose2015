visualization
generalTrendsRatio: view

	| b ds |
	b := RTGrapher new.
	b view: view.
	ds := RTStackedDataSet new.
	ds connectColor: Color orange.
	ds points: (self allNOC with: self allNOCC collect: [ :v1 :v2 | v2 / v1 ]).
	b add: ds.
	
	b axisX noLabel; noTick.
	b build.
	^ b view