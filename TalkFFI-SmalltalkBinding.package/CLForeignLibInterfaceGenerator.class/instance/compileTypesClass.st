compiling classes
compileTypesClass
	| cName |
	cName := self mappingModel typemapClassName.
	self model defineClass:
			('<1s> subclass: #<2s> instanceVariableNames: '''' classVariableNames: ''TypeMap'' poolDictionaries: '''' category: <3p>'
				expandMacrosWith: 'FFILibrary'
				with: cName
				with: self mappingModel bindingCategory).	
	"compile initialization method"
	self compileTypeClassInitialization: cName.