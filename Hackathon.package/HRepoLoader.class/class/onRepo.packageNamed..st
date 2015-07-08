as yet unclassified
onRepo: aRepoName packageNamed: aPackageName
	^ self new
		repo: aRepoName;
		packageName: aPackageName;
		load;
		yourself