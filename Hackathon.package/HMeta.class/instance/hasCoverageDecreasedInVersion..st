testing
hasCoverageDecreasedInVersion: aVersion
	"Return true if the coverage has increased in version aVersion"

	"In case the classe is not new"
	((self isInVersion: aVersion) not or: [ self versionOfCreation = aVersion ]) ifTrue: [ ^ false ].
	 
	^ (self previousCoverageOfVersion: aVersion) > (self atVersion: aVersion)