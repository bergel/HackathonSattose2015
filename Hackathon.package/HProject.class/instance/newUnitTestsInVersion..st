accessing - version
newUnitTestsInVersion: aVersionNumber
	^ classes select: [ :c | (c versionOfCreation = aVersionNumber) and: [ c isTest ] ]