as yet unclassified
load
	| succcessLoading |
	repository := MCHttpRepository location: repo user: '' password: ''.
	(self
		chooseRightPackages: (repository goferReferences select: [ :element | element name includesSubstring: packageName ]))
		withIndexDo: [ :element :index | 
			succcessLoading := self loadPackages: element.
			succcessLoading
				ifTrue: [ self makeTreatmentOnVersion: index ] ]