visualization - versions
renderVersions2On: view

	| b  ds |
	b := RTGrapher new.
	b view: view.
	
	ds := RTDataSet new.
	ds dotShape circle color: (Color blue alpha: 0.4); size: 8.
	ds points: self versions.
	ds x: #numberOfClassesWithIncreasingCoverage.
	ds y: #numberOfClassesWithDecreasingCoverage.
	b add: ds.

	b axisX title: '#classes increasing coverage'.
	b axisY title: '#classes decreasing coverage'.
	
	b build.

	^ view