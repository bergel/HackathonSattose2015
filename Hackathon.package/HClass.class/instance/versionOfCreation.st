accessing - computed
versionOfCreation
	"Return the version number indicating my creation"
	self versions ifEmpty: [ ^ -1 ].
	^ self versions first