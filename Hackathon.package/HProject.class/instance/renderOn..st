visualization
renderOn: view

	| b |
	b := RTMondrian new.
	b view: view.
	b shape rectangle
		size: 8;
		withBorder;
		if: #isTest borderColor: Color green;
		if: #isCoverageHasIncreased borderColor: Color blue;
		if: #isCoverageHasDecreased borderColor: Color red;
		linearFillColor: #averageCoverage within: self classes.
	b nodes: (self classes reverseSortedAs: #isTest).
	b layout grid.
	b build.
	^ view