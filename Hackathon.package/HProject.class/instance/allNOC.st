trends
allNOC
	^ self versions collect: [ :v | self numberOfClassesInVersion: v ]