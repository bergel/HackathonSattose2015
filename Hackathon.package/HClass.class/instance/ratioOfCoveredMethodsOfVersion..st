metrics
ratioOfCoveredMethodsOfVersion: aVersion
	| t |
	t := self numberOfMethodsOfVersion: aVersion.
	t = 0 ifTrue: [ ^ 0 ].
	^ (self numberOfCoveredMethodsOfVersion: aVersion) / t