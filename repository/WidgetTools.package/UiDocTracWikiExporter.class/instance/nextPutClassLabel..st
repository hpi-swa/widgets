as yet unclassified
nextPutClassLabel: aClass
	"Make a link for widget classes and none for others."
	
	out nextPutAll: (self classLabel: aClass).