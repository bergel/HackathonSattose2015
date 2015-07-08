example
exampleRoassalAlllocalVersions
	"
	self new exampleRoassalAlllocalVersions
	"
	| project packageName rep files versionNumber |
	packageName := 'Roassal2'.
	
	rep := MCCacheRepository uniqueInstance.
	files := rep loadAllFileNames select: [ :str | str beginsWith: packageName ].

	project := HProject new.
	files do: [ :aFileName |
		versionNumber := (aFileName substrings: '.') second asInteger.
	
		(rep loadVersionFromFileNamed: aFileName) load.
		project addProfile: (Hapao2 runTestsForPackagesMatching: packageName) version: versionNumber.
	].
	^ project