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

	"That's it. You're good."
]
