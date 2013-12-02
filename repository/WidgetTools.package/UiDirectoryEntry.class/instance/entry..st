accessing
entry: anObject

	entry := anObject.
	
	"Update children cache."
	(entry notNil and: [entry isDirectory]) ifTrue: [
		self folders: (entry asFileDirectory entries select: [:e | e isDirectory]).
		self files: (entry asFileDirectory entries select: [:e | e isDirectory not])].