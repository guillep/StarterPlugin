Class {
	#name : #BaselineOfStarterPlugin,
	#superclass : #BaselineOf,
	#category : #BaselineOfStarterPlugin
}

{ #category : #baseline }
BaselineOfStarterPlugin >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec postLoadDoIt: #onLoaded.
			spec package: 'StarterPlugin' ]
]

{ #category : #baseline }
BaselineOfStarterPlugin >> onLoaded [

	"Generate the sources in the parent directory."

	| generator |
	generator := [ 
	             (PharoVMMaker
		              on: CoInterpreter
		              outputDirectory: Smalltalk image imageDirectory parent)
		             internal: #(  ) external: #( StarterPlugin );
		             generateExternalPlugins ].

	generator value
]
