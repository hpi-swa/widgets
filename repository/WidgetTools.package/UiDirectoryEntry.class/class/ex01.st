examples
ex01

	UiTreeView new
		addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #entryName. #icon -> #entry})
			headerText: 'Name';
			iconConverter: [:entry | entry isDirectory ifTrue: [MenuIcons smallOpenIcon] ifFalse: []]);
		addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #entrySize})
			headerText: 'Size');
		addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #entryTimestamp})
			headerText: 'Modification Date and Time';
			textConverter: [:timestamp |
				(timestamp date printFormat: #(1 2 3 $- 1 1 2)), ' ',
				(String streamContents: [:stream | timestamp time
					print24: true
					showSeconds: false
					on: stream])]);
		model: (UiDirectoryEntry fromPath: 'C:');
		openInWorld.