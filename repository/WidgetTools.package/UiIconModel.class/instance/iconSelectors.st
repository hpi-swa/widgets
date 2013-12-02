accessing
iconSelectors

	self iconSet ifNil: [^ #()].
	^ (self iconSet class organization categories select: [:cat | UiPlatform current string: cat includesSubstring: 'accessing'])
		gather: [:cat | (self iconSet class organization listAtCategoryNamed: cat)
			select: [:iconName | self nameFilter isNil or: [UiPlatform current string: iconName asLowercase includesSubstring: self nameFilter asLowercase]]]