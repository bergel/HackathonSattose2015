as yet unclassified
numberOfCoveredMethodsOfVersion: aVersion
	^ (self methods select: [ :m | (m versions includes: aVersion) and: [ (m atVersion: aVersion) > 0 ] ]) size