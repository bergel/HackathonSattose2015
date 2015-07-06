spy filling
fillFromSpyClass: aHapao2Class version: anInteger 
	| aMethod |
	versions at: anInteger put: aHapao2Class coverage.
	aHapao2Class isTestClass ifTrue: [ self markAsTest ].
	aHapao2Class allMethods do: [ :spyMethod |
		aMethod := methods 
						at: spyMethod selector 
						ifAbsentPut: [ HMethod new selector: spyMethod selector; yourself ].
		aMethod atVersion: anInteger put: spyMethod coverage
		 ]