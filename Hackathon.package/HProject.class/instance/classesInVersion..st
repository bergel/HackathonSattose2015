trends
classesInVersion: v
	^ self classes select: [ :c | c isInVersion: v ]