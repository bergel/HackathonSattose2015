as yet unclassified
loadPackages: aCollection
	| success |
	success := true.
	aCollection
		do: [ :element | 
			[ 
			[ 
			Gofer new
				repository: repository;
				version: element name;
				load ]
				on: Warning
				do: [ :e | e resume ] ]
				on: Error
				do: [ 
					success := false.
					Transcript show: 'error on ' , element name asString , String cr ] ].
	^ success