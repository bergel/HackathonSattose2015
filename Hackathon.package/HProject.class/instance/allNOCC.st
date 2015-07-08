trends
allNOCC
	^ self versionNumbers collect: [ :v | self numberOfCoveredClassesInVersion: v ]