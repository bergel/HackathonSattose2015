version loading
loadHistoryOf: packageName testIn: packagetestName
	"
	This methods create a project for which:
		1 - All the packages are first found in the local cache rep
		2 - For each package that match packageName, the package is loaded, and the test in the packagetestName are run. The profile is then added in the project.
		
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