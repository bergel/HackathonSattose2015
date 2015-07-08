accessing - version
newClassesInVersion: aVersionNumber
	^ classes select: [ :c | (c versionOfCreation = aVersionNumber) and: [ c isTest not ] ]