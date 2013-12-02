item model - hierarchy
childAt: index inGroup: groupName
		
	^ self children at: index ifAbsentPut: [
		UiBenchmarkNode new
			at: #label put: ((self data at: index) at: 1);
			code: ((self data at: index) at: 2);
			updateTtr;
			updateTtrNoGC]