`import Ember from 'ember';`

Trigger = DS.Model.extend
	delay: DS.attr "number"
	include: DS.attr "string"
	exclude: DS.attr "string"
	message: DS.attr()

`export default Trigger`