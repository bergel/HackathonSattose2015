version loading
loadHistoryOfGroupOfPackage: packageNames testIn: packagetestName
	"
	This methods create a project for which:
		1 - All the packages are first found in the local cache rep
		2 - For each package that match packageName, the package is loaded, and the test in the packagetestName are run. The profile is then added in the project.
		
	self new loadHistoryOfGroupOfPackage: #('XML-Parser' 'XML-Tests-Parser') testIn: 'XML-Tests-Parser'
	"
	| project rep  versionNumber mcVersions fileNames |
	rep := MCCacheRepository uniqueInstance.
	mcVersions := self linearSequenceOfPackagesFromPatterns: packageNames.

	project := HProject new.
	fileNames := mcVersions collect: #name.
	fileNames do: [ :aFileName |
		versionNumber := (aFileName substrings: '.') second asInteger.
	
		(rep loadVersionFromFileNamed: aFileName) load.
		project addProfile: (Hapao2 runTestsForPackagesMatching: packagetestName) version: versionNumber.
	].
	^ project