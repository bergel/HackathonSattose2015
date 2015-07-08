accessing
previousVersionOf: aVersionNumber
	"Return the previous version number of the provided number"
	| index |
	self assert: [ self versionNumbers includes: aVersionNumber ] description: 'Not existing version'.
	
	index := self versionNumbers indexOf: aVersionNumber.
	index = 1 ifTrue: [ ^ -1 ].
	^ self versionNumbers at: (index - 1) 