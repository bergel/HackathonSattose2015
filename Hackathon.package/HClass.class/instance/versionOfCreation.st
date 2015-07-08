accessing - computed
versionOfCreation
	"Return the version number indicating my creation"
	self versionNumbers ifEmpty: [ ^ -1 ].
	^ self versionNumbers first