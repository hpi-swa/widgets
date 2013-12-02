tests
test02morphInitialization

	"| sut |
	sut := UiSystemProgressMorph new.
	self assert: 1 equals: sut ui view model rootNode children size."