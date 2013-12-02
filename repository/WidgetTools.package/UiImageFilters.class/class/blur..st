as yet unclassified
blur: aForm

	^ self
		apply: (Matrix rows: 3 columns: 3 contents: #(
		     0   1   0
		     1   1   1
		     0   1   0 ))
		to: aForm
		factor: 0.2
		bias: 0.0