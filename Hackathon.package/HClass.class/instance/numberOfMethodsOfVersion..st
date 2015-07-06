as yet unclassified
numberOfMethodsOfVersion: aVersion
	^ (self methods select: [ :m | m versions includes: aVersion ]) size