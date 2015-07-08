accessing
previousVersionOf: aVersionNumber
	"Return the previous version number of the provided number"
	| index |
	self assert: [ self versions includes: aVersionNumber ] description: 'Not existing version'.
	
	index := self versions indexOf: aVersionNumber.
	index = 1 ifTrue: [ ^ -1 ].
	^ self versions at: (index - 1) 