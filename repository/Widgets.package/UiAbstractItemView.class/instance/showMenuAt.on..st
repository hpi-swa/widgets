model - callbacks
showMenuAt: aPoint on: aModelIndex

	aModelIndex menu
		ifNil: [self menuRequestedAt: aPoint for: aModelIndex node]
		ifNotNil: [:menu |
			"Overwrite target of menu items. Really good?"
			menu items do: [:item | self overrideMenuTarget: item].
			menu popUpNoKeyboard].