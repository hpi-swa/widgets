actions
chooseIconAndClose: aModelIndex

	aModelIndex ifNil: [^ self delete].
	icon := (iconView model iconFor: aModelIndex).
	self delete.