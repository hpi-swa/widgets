initialization
open

	| c |
	c := self color.
	(self openInWindowLabeled: 'Ressource Monitor')
		extent: 350@300.
		
	self color: c.