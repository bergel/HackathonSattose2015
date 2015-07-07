as yet unclassified
chooseRightPackages: aCollectionOfGoferReferences
	^ ((aCollectionOfGoferReferences groupedBy: [ :ref | ref version info date ]) associations
		sorted: [ :a :b | a key < b key ]) collect: #value