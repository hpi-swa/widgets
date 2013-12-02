examples
ex03

	UiTreeView new
		addTextColumn: 'Name' selector: #entryName;
		addTextColumn: 'Size' selector: #entrySize;
		addTextColumn: 'Timestamp' selector: #entryTimestamp;
		model: UiDirectoryEntry root;
		openInWorld.