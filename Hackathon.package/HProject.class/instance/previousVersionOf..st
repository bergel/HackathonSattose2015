accessing - version
previousVersionOf: aVersionNumber

	| index |
	self assert: [ self versionNumbers includes: aVersionNumber ] description: 'Not existing version'.
	
	index := self versions indexOf: aVersionNumber.
	index = 1 ifTrue: [ ^ -1 ].
	^ self versions at: (index - 1) 