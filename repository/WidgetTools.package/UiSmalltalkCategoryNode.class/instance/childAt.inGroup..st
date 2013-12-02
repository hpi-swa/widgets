item model - hierarchy
childAt: index inGroup: groupName

	^ UiSmalltalkClassNode new
		theClass: (Smalltalk at: (self classNames at: index))