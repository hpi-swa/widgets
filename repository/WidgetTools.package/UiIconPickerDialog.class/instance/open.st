initialization
open

	| c |
	c := self color.
	(self openInWindowLabeled: 'Icon Picker')
		extent: 400@300.
		
	self color: c.