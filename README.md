![StarterPlugin](./header.jpg)

# StarterPlugin
Code of the StarterPlugin for Pharo
_____

You can use this project as the seed and starting point for your own Pharo plugin projects. Suggestion is to use it in the way this [Pharo Plugin Builder](https://github.com/sebastianconcept/PharoPluginBuilder) setup describes. You can find instructions in its readme at:

https://github.com/sebastianconcept/PharoPluginBuilder

## Load evaluating:

```smalltalk
Metacello new
  baseline: 'StarterPlugin';
  repository: 'github://sebastianconcept/StarterPlugin';
  load
```
