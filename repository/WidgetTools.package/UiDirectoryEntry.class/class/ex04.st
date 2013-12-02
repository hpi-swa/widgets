examples
ex04

	UiListView new
		listSpec: ((UiItemViewColumnSpec newFrom: {#text -> #entryName. #icon -> #entry})
			headerText: 'Name';
			iconConverter: [:entry | entry isDirectory ifTrue: [MenuIcons smallOpenIcon] ifFalse: []]);
		model: (UiDirectoryEntry fromPath: 'C:');
		listOrientation: #horizontal;
		openInWorld.