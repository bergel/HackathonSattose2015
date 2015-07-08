testing
isInVersion: aVersionAsInteger
	self assert: [ aVersionAsInteger isNumber ].
	^ versions includesKey: aVersionAsInteger