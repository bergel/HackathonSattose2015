trends
coveredClassesInVersion: v
	^ self classes select: [ :c | (c isInVersion: v) and: [ c isCoveredInVersion: v ] ]