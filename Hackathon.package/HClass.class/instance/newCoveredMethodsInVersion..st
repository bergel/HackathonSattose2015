accessing - computed
newCoveredMethodsInVersion: aVersion
	| index previousVersion |
	index := self versions indexOf: aVersion.
	
	"Error here"
	self assert: [ index ~= 0 ] description: 'Error here'.
	
	"If the first version, then all the methods are new"
	index = 1 ifTrue: [ ^ self methodsOfVersion: aVersion ].
	
	previousVersion := self versions at: (index - 1).
	^ (self coveredMethodsOfVersion: aVersion) copyWithoutAll: (self coveredMethodsOfVersion: previousVersion)