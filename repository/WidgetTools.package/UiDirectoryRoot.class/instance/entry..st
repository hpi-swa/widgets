accessing
entry: anObject

	entry := anObject.
	
	"Update children cache."
	entry ifNotNil: [
		self folders: (entry entries select: [:e | e isDirectory]).
		self files: (entry entries select: [:e | e isDirectory not])].