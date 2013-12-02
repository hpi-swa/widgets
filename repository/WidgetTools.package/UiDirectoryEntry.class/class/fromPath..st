instance creation
fromPath: aPathString

	^ self new
		entry: (FileDirectory on: aPathString) directoryEntry