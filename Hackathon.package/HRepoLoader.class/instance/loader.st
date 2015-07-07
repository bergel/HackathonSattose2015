as yet unclassified
loader
	| repo |
	repo := MCHttpRepository location: 'http://smalltalkhub.com/mc/GustavoSantos/MacroRecorder/main' user: '' password: ''.
	(repo goferReferences sorted select: [ :element | element name includesSubstring: 'MacroRecorder' ])
		do: [ :element | 
			element name.
			[ 
			[ 
			Gofer new
				repository: repo;
				version: element name;
				load ]
				on: Warning
				do: [ :e | e resume ] ]
				on: Error
				do: [ Transcript show: 'error on ' , element name asString , String cr ] ]