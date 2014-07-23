as yet unclassified
isWidgetClass: aClass

	^ (PackageOrganizer default packageOfClass: aClass ifNone: [ nil ])
		= (PackageInfo named: #Widgets) or: [aClass == Morph]