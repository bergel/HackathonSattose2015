visualization
renderOn: view

	| b |
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
	b layout flow.
	b build.
	^ view