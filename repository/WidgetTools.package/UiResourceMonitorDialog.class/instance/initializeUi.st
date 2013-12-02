initialization
initializeUi

	| row |
	refreshButton := UiPushButton new
		icon: UiFugueIcons arrowCircleDouble135Icon;
		text: 'Refresh'.
	gcButton := UiPushButton new
		icon: UiFugueIcons broomIcon;
		text: 'GC'.
	modeChk := UiCheckBox new
		text: 'Show benchmarks'.
	benchBtn := UiPushButton new
		text: 'Bench All'.
	
	view := UiTableView new
		removeVerticalHeader;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		borderStyle: (BorderStyle inset width: 1).
	
	self connect: refreshButton signal: #clicked: toSelector: #refresh.
	self connect: gcButton signal: #clicked: to: Smalltalk selector: #garbageCollect.
	self connect: modeChk signal: #toggled: toSelector: #showBenchmarks:.
	
	self
		color: (Color gray: 0.9);
		changeTableLayout;
		listDirection: #topToBottom;
		layoutInset: 3;
		cellInset: 5.
	
	row := UiContainer new
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	row addAllMorphs: {modeChk. UiSpacer new orientation: #horizontal. benchBtn. gcButton. refreshButton}.
	
	self addAllMorphs: {view. row}.