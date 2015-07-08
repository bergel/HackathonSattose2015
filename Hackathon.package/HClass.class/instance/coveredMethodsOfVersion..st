accessing - computed
coveredMethodsOfVersion: aVersion
	^ self methods select: [ :m | (m versions includes: aVersion) and: [ (m atVersion: aVersion) > 0 ] ]