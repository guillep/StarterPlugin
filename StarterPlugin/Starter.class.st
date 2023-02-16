"
I'm the Smalltalk friendly API that uses StarterPlugin as dependency.

When you had a working StarterPlugin, you can successfuly get its version by evaluating:

```
Starter pluginVersion
```

"
Class {
	#name : #Starter,
	#superclass : #Object,
	#category : #StarterPlugin
}

{ #category : #accessing }
Starter class >> pluginVersion [

	<primitive: 'primitiveVersion' module: 'StarterPlugin'>
	self primitiveFailed
]
