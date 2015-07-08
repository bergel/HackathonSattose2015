accessing - computed
coveredMethodsOfVersion: aVersion
	^ self methods select: [ :m | (m versionNumbers includes: aVersion) and: [ (m atVersion: aVersion) > 0 ] ]