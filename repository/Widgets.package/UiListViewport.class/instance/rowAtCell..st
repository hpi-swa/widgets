rows/columns - to info
rowAtCell: aCellIndex

	^ ((cellToBounds at: aCellIndex y ifAbsent: [^ nil]) at: aCellIndex x ifAbsent: [^ nil])
		ifNotNil: [:cell | cell third]