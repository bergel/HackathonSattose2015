trends
allNOCC
	^ self versions collect: [ :v | self numberOfCoveredClassesInVersion: v ]