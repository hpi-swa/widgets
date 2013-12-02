as yet unclassified
motionBlur: aForm

	^ self
		apply: (Matrix rows: 9 columns: 9 contents: #(
    1  0  0  0  0  0  0  0  0 
    0  1  0  0  0  0  0  0  0 
    0  0  1  0  0  0  0  0  0 
    0  0  0  1  0  0  0  0  0 
    0  0  0  0  1  0  0  0  0 
    0  0  0  0  0  1  0  0  0 
    0  0  0  0  0  0  1  0  0 
    0  0  0  0  0  0  0  1  0 
    0  0  0  0  0  0  0  0  1  ))
		to: aForm
		factor: 1.0 / 9.0
		bias: 0.0