`import Ember from 'ember';`

Chatbox = DS.Model.extend
	exclude: DS.attr "string"
	include: DS.attr "string"

`export default Chatbox`