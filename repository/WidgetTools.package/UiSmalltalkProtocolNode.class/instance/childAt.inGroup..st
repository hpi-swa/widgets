item model - hierarchy
childAt: index inGroup: groupName

	^ UiSmalltalkMethodNode new
		theClass: self organization subject;
		selector: (self messages at: index)