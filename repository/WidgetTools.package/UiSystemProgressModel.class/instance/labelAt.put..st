nodes
labelAt: progressBlock put: aStringOrText
	"See #label:min:max: for definition of progressBlock."
	
	self assureOpenView.
	
	progressBlock value: aStringOrText.
	
	