accessing - version
classesWithDecreasedCoverageInVersion: aVersionNumber
	^ classes select: [ :c | c hasCoverageDecreasedInVersion: aVersionNumber ]