version coverage
atVersion: aVersion put: aCoverage
	self assert: [ aCoverage isNumber ].
	versions at: aVersion put: aCoverage