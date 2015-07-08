accessing - version
classesWithIncreasedCoverageInVersion: aVersionNumber
	^ classes select: [ :c | c hasCoverageIncreasedInVersion: aVersionNumber ]