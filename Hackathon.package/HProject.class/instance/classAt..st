accessing
classAt: aString 
	^ self classes 
					at: aString 
					ifAbsentPut: [ HClass new className: aString ].

	