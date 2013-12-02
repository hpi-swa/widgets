actions
chooseIconCodeAndClose: aModelIndex

	aModelIndex ifNil: [^ self delete].
	icon := iconView model codeSnippetFor: aModelIndex.
	self delete.