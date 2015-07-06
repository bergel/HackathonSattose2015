testing
isCoverageHasDecreased
	^ self isCoverageIsConstant not and: [ self isCoverageHasIncreased not ]
