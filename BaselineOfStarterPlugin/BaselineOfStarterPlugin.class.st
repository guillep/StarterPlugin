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
		do: [ spec package: 'StarterPlugin' ]
]