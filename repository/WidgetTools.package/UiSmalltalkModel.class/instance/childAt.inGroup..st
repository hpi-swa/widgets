item model - hierarchy
childAt: index inGroup: groupName
	
	^ UiSmalltalkPackageNode new
		package: ((self perform: groupName) at: index)