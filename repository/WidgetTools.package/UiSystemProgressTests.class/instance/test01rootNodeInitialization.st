tests
test01rootNodeInitialization

	"| sut |
	sut := UiSystemProgressModel new.
	self assert: 1 equals: sut rootNode children size."