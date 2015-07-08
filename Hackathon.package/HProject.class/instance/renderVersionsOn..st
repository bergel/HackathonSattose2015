visualization - versions
renderVersionsOn: view

	| b lb |
	b := RTMondrian new.
	b view: view.
	
	b shape rectangle
		width: [ :v | v numberOfClassesWithIncreasingCoverage * 5 ];
		height: [ :v | v numberOfClassesWithDecreasingCoverage * 5];
		withTextAbove: #versionNumber.
	b nodes: (self versions).
	
	b build.
	
	lb := RTLegendBuilder new.
	lb view: view.
	lb addText: 'Version complexity'.
	lb addText: 'Each box is a software version'.
	lb addText: 'Width = number of classes with increasing coverage'.
	lb addText: 'Height = number of classes with decreasing coverage'.
	lb build.
	
	^ view