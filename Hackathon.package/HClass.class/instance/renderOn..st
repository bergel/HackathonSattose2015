rendering
renderOn: view

	| b ds p deco |
	b := RTGrapher new.
	b view: view.
	
	ds := RTStackedDataSet new.
	ds barShape.
	p := (versions associations sortedAs: #key).
	ds points: p.
	ds y: #value.
	b add: ds.
	
	deco :=  RTVerticalValuesDecorator new.
	deco addAll: { (p asDictionary values min) . (p asDictionary values max) }.
	b addDecorator: deco.

	
	b maxY: 100.
	
	b build.
	^ b view