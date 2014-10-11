`import Ember from 'ember';`

Introducer = DS.Model.extend
	label: DS.attr "string"
	type: DS.attr "string"
	required: DS.attr "boolean"
	validator: DS.attr "string"
	ordinal: DS.attr "number"

`export default Introducer`