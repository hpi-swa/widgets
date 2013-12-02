as yet unclassified
apply: filter to: form factor: factor bias: bias

| image result |
image := form.
result := Form extent: image extent depth: image depth.

0 to: image height-1 do: [:y |
0 to: image width-1 do: [:x |
	| red green blue |
	red := green := blue := 0.0.

	0 to: filter rowCount-1 do: [:filterY |
	0 to: filter columnCount-1 do: [:filterX |
		| imageX imageY |
		self halt.
		imageX := (x - (filter columnCount // 2) + filterX + image width) \\ image width.
		imageY := (y - (filter rowCount // 2) + filterY + image height) \\ image height.
		red := red + ((image colorAt: imageX@imageY) red * (filter at: filterY+1 at: filterX+1)).
		green := green + ((image colorAt: imageX@imageY) green * (filter at: filterY+1 at: filterX+1)).
		blue := blue + ((image colorAt: imageX@imageY) blue * (filter at: filterY+1 at: filterX+1)).
		]].
		result colorAt: x@y put: (Color
			r: ((factor * red + bias) min: 1.0 max: 0.0)
			g: ((factor * green + bias) min: 1.0 max: 0.0)
			b: ((factor * blue + bias) min: 1.0 max: 0.0))
	].

	"Display getCanvas
		drawImage: result
		at: 0@0."
].

^ result