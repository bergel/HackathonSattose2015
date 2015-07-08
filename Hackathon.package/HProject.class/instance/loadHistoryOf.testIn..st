example
loadHistoryOf: packageName testIn: packagetestName
	"
	self new exampleRoassalAlllocalVersions
	"
	| project rep files versionNumber |
	
	
	rep := MCCacheRepository uniqueInstance.
	files := rep loadAllFileNames select: [ :str | str beginsWith: packageName ].

	project := HProject new.
	files do: [ :aFileName |
		versionNumber := (aFileName substrings: '.') second asInteger.
	
		(rep loadVersionFromFileNamed: aFileName) load.
		project addProfile: (Hapao2 runTestsForPackagesMatching: packagetestName) version: versionNumber.
	].
	^ project