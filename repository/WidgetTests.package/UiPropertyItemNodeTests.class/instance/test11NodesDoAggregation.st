tests
test11NodesDoAggregation

	| sut expected |
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
	expected := (1 to: 10) sum.

	sut nodesDo: [:node | node data: (node nodes 
		inject: (node data ifNil: 0)
		into: [:sum :each | sum + each data])].

	self assert: expected equals: sut data.