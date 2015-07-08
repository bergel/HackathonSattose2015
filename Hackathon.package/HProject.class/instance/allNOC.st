trends
allNOC
	^ self versionNumbers collect: [ :v | self numberOfClassesInVersion: v ]