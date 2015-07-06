testing
isCoverageHasIncreased
	| t |
	self isCoverageIsConstant ifTrue: [ ^ false ].
	t := ((versions associations sortedAs: #key) collect: #value) asArray.
	^ t = (versions associations collect: #value) asSortedCollection asArray.