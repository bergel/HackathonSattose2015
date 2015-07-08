accessing - version
versions
	"Return versions (instance of HVersion)"
	^ self versionNumbers collect: [ :vv | self versionFor: vv ]