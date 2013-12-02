as yet unclassified
blurMore: aForm 

	^ self
		apply: (Matrix rows: 5 columns: 5 contents: #(
    0  0  1  0  0 
    0  1  1  1  0 
    1  1  1  1  1 
    0  1  1  1  0 
    0  0  1  0  0 ))
		to: aForm
		factor: 1.0 / 13.0
		bias: 0.0