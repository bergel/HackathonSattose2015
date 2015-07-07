as yet unclassified
makeTreatmentOnVersion: aVersion
	| aHapao2Profile |
	aHapao2Profile := Hapao2 runTestsForPackagesMatching: packageName , '*'.
	self project addProfile: aHapao2Profile version: aVersion