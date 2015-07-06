visualization
tabTableOfVersion: aVersion
	| content answer |
	content := WriteStream on: String new.
	(self classes select: #isCoverageVariate) do: [ :cls |
		content nextPutAll: cls className.
		content tab.
		
		content nextPutAll: (cls numberOfMethodsOfVersion: aVersion) asString.
		content tab.

		content nextPutAll: ((cls ratioOfCoveredMethodsOfVersion: aVersion) * 100) asInteger asString.
		content tab.
		
		content cr.
	].
	answer := RTTabTable new input: content contents.
	^ answer
