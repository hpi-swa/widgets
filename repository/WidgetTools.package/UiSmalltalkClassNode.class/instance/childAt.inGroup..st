item model - hierarchy
childAt: index inGroup: groupname

	^ UiSmalltalkProtocolNode new
		protocol: (self protocols at: index);
		organization: self theClass organization