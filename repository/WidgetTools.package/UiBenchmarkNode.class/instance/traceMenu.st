menu
traceMenu

	| menu |
	menu := MenuMorph new
		defaultTarget: self.
		
	menu add: 'Trace' action: #trace.
	
	^ menu