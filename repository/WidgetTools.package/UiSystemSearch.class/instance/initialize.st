initialization
initialize

	super initialize.
	
	self initializeView.
	
	self ui searchEdit deferEditSignalTime: 300.
	
	"Initialize finder."
	self finder: (UiItemModelFinder on: self ui view model).
	self finder traversalMode: #depthFirst.
	
	"Initialize buttons."
	self connect: self ui prevBtn signal: #clicked: toSelector: #findPrev.
	self connect: self ui nextBtn signal: #clicked: toSelector: #findNext.
	
	"Crosscutting connections."	
	self connect: self ui searchEdit signal: #textEdited: to: self finder selector: #reset.
	self connect: self ui searchEdit signal: #textEdited: toSelector: #updateSearchButtons.
	
	self updateSearchButtons.
	
	"Asynch search."
	self connect: self finder signal: #foundIndex: toSelector: #addResult:.
	self connect: self finder signal: #finished to: self ui searchEdit selector: #readOnly: pattern: #(= false).
	self connect: self ui results signal: #activated: toSelector: #selectCachedResult:.