"
I'm boilerplate for a new Pharo plugin.
"
Class {
	#name : #StarterPlugin,
	#superclass : #SmartSyntaxInterpreterPlugin,
	#category : #StarterPlugin
}

{ #category : #translation }
StarterPlugin class >> declareHeaderFilesIn: aCCodeGenerator [

	
	"If this plugin has a third party dependency, it probably needs to 
	include it in its header.
	aCCodeGenerator addHeaderFile: '""libthirdpartydependency.h""'."
]

{ #category : #translation }
StarterPlugin class >> hasHeaderFile [

	"This plugin has its own header file"

	^ true
]

{ #category : #translation }
StarterPlugin class >> moduleName [

	^ 'StarterPlugin'
]

{ #category : #translation }
StarterPlugin class >> requiresCrossPlatformFiles [

	"default is ok for most, any plugin needing platform specific files must say so"

	^ true
]

{ #category : #translation }
StarterPlugin class >> requiresPlatformFiles [

	"default is ok for most, any plugin needing platform specific files must say so"

	^ true
]

{ #category : #'as yet unclassified' }
StarterPlugin >> helloWorld [

	<export: true>
	interpreterProxy pop: 1 thenPush: (self stringFromCString: 'v1.0.0')
]

{ #category : #'as yet unclassified' }
StarterPlugin >> stringFromCString: aCString [

	"Answer a new String (smalltalk object) created based on a null-terminated C string.
	Note: This may invoke the garbage collector."

	<var: 'aCString' type: #'const char *'>
	| len aSmalltalkString |
	len := self strlen: aCString.
	aSmalltalkString := interpreterProxy
		                    instantiateClass: interpreterProxy classString
		                    indexableSize: len.
	aSmalltalkString ifNil: [ 
		^ interpreterProxy primitiveFailFor: PrimErrNoMemory ].
	self
		strncpy: (interpreterProxy arrayValueOf: aSmalltalkString)
		_: aCString
		_: len. "(char *)strncpy()"
	^ aSmalltalkString
]
