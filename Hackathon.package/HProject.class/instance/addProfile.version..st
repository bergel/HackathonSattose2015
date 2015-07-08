public
addProfile: aHapao2 version: anInteger 
	| aClass |
	versions add: anInteger.
	aHapao2 allClasses do: [ :spyClass |
		aClass := self classAt: spyClass className.
		aClass superclass: (self classAt: spyClass superclass className).
		aClass fillFromSpyClass: spyClass	version: anInteger ]