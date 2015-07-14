tests
test12Aggregation

	| sut |
	sut := UiPropertyItemNode newTreeFrom: {
	0 -> {
		1 -> {}.
		2 -> {}.
		0 -> {
			3 -> {}.
			4-> {}}}.
	0 -> {
		0 -> {
			5 -> {}.
			6 -> {}}.
		7 -> {}}.
	0 -> {
		0 -> {
			8 -> {}.
			9 -> {}}.
		10 -> {}}}.

	sut aggregate: #data with: [:sum :num | sum + num] defaultValue: 0.
	
	self assert: (1 to: 10) sum equals: sut data.
	self assert: (1 to: 4) sum equals: (sut childAt: 1) data.
	self assert: (5 to: 7) sum equals: (sut childAt: 2) data.
	self assert: (8 to: 10) sum equals: (sut childAt: 3) data.

	"Reset on second round."
	sut aggregate: #data with: [:sum :num | sum + num] defaultValue: 0.
	
	self assert: (1 to: 10) sum equals: sut data.
	self assert: (1 to: 4) sum equals: (sut childAt: 1) data.
	self assert: (5 to: 7) sum equals: (sut childAt: 2) data.
	self assert: (8 to: 10) sum equals: (sut childAt: 3) data.