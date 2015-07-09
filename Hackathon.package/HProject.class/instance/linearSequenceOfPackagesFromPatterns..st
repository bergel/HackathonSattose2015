version loading
linearSequenceOfPackagesFromPatterns: patterns
	"
	patterns matches #('Roassal2' 'Trachel')
	This method returns group of packages to load. The local cache repository is looked up
	
	Examples:
		self new groupToLoadsFromPatterns: #('Roassal2' 'Trachel')
		self new groupToLoadsFromPatterns: #('XML-Parser' 'XML-Tests-Parser')

	"
	
	| rep allFilenames relevantFilenames relevantVersionInfo sortedRelevantVersionInfo |
	rep := MCCacheRepository uniqueInstance.
	allFilenames := rep loadAllFileNames.
	
	relevantFilenames := allFilenames select: [ :f | patterns anySatisfy: [ :p | f beginsWith: p ] ].
	relevantVersionInfo := relevantFilenames collect: [ :f | rep versionInfoForFileNamed: f ].
	sortedRelevantVersionInfo := 
		relevantVersionInfo asSortedCollection: [ :v1 :v2 |  
			v1 date = v2 date 
				ifTrue: [ v1 time < v2 time ]
				ifFalse: [ v1 date < v2 date ] ].
	self halt.