item model - hierarchy
childAt: index inGroup: groupName
	
	^ UiDirectoryEntry new
		entry: ((self perform: groupName) at: index)