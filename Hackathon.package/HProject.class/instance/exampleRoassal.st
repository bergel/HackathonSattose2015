example
exampleRoassal
	"
	self new exampleRoassal
	"
	| project |
	project := HProject new.
	project addProfile: (Hapao2 runTestsForPackagesMatching: 'Roassal2') version: 949.
	^ project