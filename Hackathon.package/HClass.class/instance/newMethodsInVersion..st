accessing - computed
newMethodsInVersion: aVersion
	| index previousVersion |
	index := self versionNumbers indexOf: aVersion.
	
	"Error here"
	self assert: [ index ~= 0 ] description: 'Error here'.
	
	"If the first version, then all the methods are new"
	index = 1 ifTrue: [ ^ self methodsOfVersion: aVersion ].
	
	previousVersion := self versionNumbers at: (index - 1).
	^ (self methodsOfVersion: aVersion) copyWithoutAll: (self methodsOfVersion: previousVersion)