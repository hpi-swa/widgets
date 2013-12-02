initialization
initialize

	super initialize.
	self initializeIconSets.
	
	iconSetCombo := UiComboBox new hResizing: #spaceFill.
	iconSets do: [:cls | iconSetCombo addText: cls name].
	self connect: iconSetCombo signal: #currentIndexChanged:text: toSelector: #changeIconSet:.
	
	iconView := UiListView new
		listOrientation: #vertical;
		listSpec: ((UiItemViewColumnSpec newFrom: {#icon -> #yourself. "#text -> #yourself." #balloonText -> #yourself})
			iconConverter: [:dict | dict at: #form];
			"textConverter: [:dict | (dict at: #selector) allButLast: 4 ];"
			balloonTextConverter: [:dict | (dict at: #selector) allButLast: 4 "remove icon suffix"]);		
		model: UiIconModel new;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		borderStyle: (BorderStyle inset width: 1).
	iconView verticalScrollBar singleStep: 17.
	self connect: iconView signal: #clicked: toSelector: #chooseIcon:.
	
	searchInput := UiLineEdit new
		helpText: 'Search...'.
	self connect: searchInput signal: #returnPressed: toSelector: #changeSearch:.
	
	self
		color: (Color gray: 0.9);
		changeTableLayout;
		listDirection: #topToBottom;
		layoutInset: 5;
		cellInset: 5;
		cellPositioning: #topLeft.
		
	self
		addMorphBack: (UiLabel new text: 'Select an icon set then pick an icon below. The code to get
the form will be copied into the <b>clipboard</b>.' asHtmlText);
		addMorphBack: iconSetCombo;
		addMorphBack: iconView;
		addMorphBack: searchInput.
		
	"Initial set."
	self changeIconSet: iconSetCombo currentIndex.