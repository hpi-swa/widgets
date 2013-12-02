item model - hierarchy
childAt: index inGroup: groupName
	
	^ UiResourceMonitorNode new
		at: #label put: ((self data at: index) at: 1);
		at: #value put: ((self data at: index) at: 2) value;
		at: #threshold put: ((self data at: index) at: 3);
		at: #description put: ((self data at: index) at: 4);
		yourself