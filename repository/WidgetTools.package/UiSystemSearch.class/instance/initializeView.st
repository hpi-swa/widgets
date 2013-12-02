initialization
initializeView

	self ui view
		"enableAutoSort;"
		addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #yourself. #icon -> #yourself})
			textConverter: [:node | ((Dictionary newFrom: {
				UiSmalltalkPackageNode -> [node package name].
				UiSmalltalkCategoryNode -> [node category].
				UiSmalltalkClassNode -> [node theClass name].
				UiSmalltalkProtocolNode -> [node protocol].
				UiSmalltalkMethodNode -> [node selector]}) at: node class) value];
			iconConverter: [:node | (node isKindOf: UiSmalltalkPackageNode) ifTrue: [UiSilkIcons packageIcon] ifFalse: []]);
		addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #childCount})
			textConverter: [:integer | ('<font color="#555555">', integer asString, '</font>') asHtmlText]);
		addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #yourself})
			textConverter: [:node | ('<font color="#555555">{1}</font>' format: {((Dictionary newFrom: {
				UiSmalltalkPackageNode -> ['package'].
				UiSmalltalkCategoryNode -> ['system category'].
				UiSmalltalkClassNode -> ['class'].
				UiSmalltalkProtocolNode -> ['protocol'].
				UiSmalltalkMethodNode -> ['method']}) at: node class) value}) asHtmlText]);
		model: UiSmalltalkModel new;
		removeHorizontalHeader.