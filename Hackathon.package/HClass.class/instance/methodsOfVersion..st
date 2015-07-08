accessing - computed
methodsOfVersion: aVersion
	^ self methods select: [ :m | m versions includes: aVersion ]