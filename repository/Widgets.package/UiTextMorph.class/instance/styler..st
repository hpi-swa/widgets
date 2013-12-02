styling - accessing
styler: aTextStyler

	styler := aTextStyler.
	
	"Setup target for callback functinos."
	styler ifNotNil: [styler
			view: self;
			font: textStyle defaultFont].