public
addProfile: aHapao2 version: anInteger 
	| aClass |
	versions add: anInteger.
	aHapao2 allClasses do: [ :spyClass |
		aClass := self classAt: spyClass className.
		aClass fillFromSpyClass: spyClass	version: anInteger ]