visualization
renderOn: view

	| b lb |
	b := RTMondrian new.
	b view: view.
	b shape rectangle
		size: [ :c | c numberOfMethods sqrt * 6 ];
		withBorder;
		borderWidth: 3;
		borderColor: Color gray;
		if: #isTest borderColor: Color green;
		if: #isCoverageHasIncreased borderColor: Color blue;
		if: #isCoverageHasDecreased borderColor: Color red;
		linearFillColor: #averageCoverage within: self classes.
	b nodes: ((self classes reverseSortedAs: #averageCoverage) reverseSortedAs: #isTest).
	b edges connectFrom: #superclass.
	b layout tree.
	b build.
	
	lb := RTLegendBuilder new.
	lb view: view.
	lb addText: 'Test coverage complexity'.
	lb addText: 'A box is a class'.
	lb addText: 'Edges indicate inheritance (super class is above its subclasses)'.
	lb addLineColor: Color green text: 'Unit test'.
	lb addLineColor: Color blue text: 'Class with strictly increasing coverage'.
	lb addLineColor: Color red text: 'Class with decreasing coverage'.
	lb addText: 'Y-axis = test coverage'.
	lb build.
	
	^ view