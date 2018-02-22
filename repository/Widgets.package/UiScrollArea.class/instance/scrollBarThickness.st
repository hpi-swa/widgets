accessing
scrollBarThickness

	^ scrollBarThickness ifNil: [scrollBarThickness := (9 * RealEstateAgent scaleFactor) rounded]