accessing - version
versionFor: aVersionNumber
	| theVersion |
	self assert: [ self versionNumbers includes: aVersionNumber ] description: 'Cannot ask for an unexisting version'.
	theVersion := HVersion new.
	theVersion versionNumber: aVersionNumber.
	theVersion newClasses: (self newClassesInVersion: aVersionNumber).
	theVersion classesWithIncreasedCoverage: (self classesWithIncreasedCoverageInVersion: aVersionNumber).
	theVersion classesWithDecreaseCoverage: (self classesWithDecreasedCoverageInVersion: aVersionNumber).
	theVersion newUnitTests: (self newUnitTestsInVersion: aVersionNumber).
	^ theVersion