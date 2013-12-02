examples
ex02

	UiTreeView new
		addTextColumn: 'Name' selector: #entryName;
		addTextColumn: 'Size' selector: #entrySize;
		addTextColumn: 'Timestamp' selector: #entryTimestamp;
		model: (UiDirectoryEntry fromPath: 'C:');
		openInWorld.