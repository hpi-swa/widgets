item model - hierarchy
childAt: index inGroup: groupName
		
	^ UiPropertyItemNode new
		at: #selector put: (self iconSelectors at: index);
		at: #form put: (self iconSet perform: (self iconSelectors at: index));
		yourself