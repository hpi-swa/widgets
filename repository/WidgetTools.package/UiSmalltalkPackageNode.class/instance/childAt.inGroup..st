item model - hierarchy
childAt: index inGroup: groupName

	^ UiSmalltalkCategoryNode new
		category: (self systemCategories at: index);
		prefix: self package systemCategoryPrefix