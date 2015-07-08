accessing - computed
methodsOfVersion: aVersion
	^ self methods select: [ :m | m versionNumbers includes: aVersion ]