`import Ember from 'ember';`

Visitor = DS.Model.extend
	name: DS.attr "string"
	email: DS.attr "string"
	tags: DS.attr()
	online: DS.attr "boolean"
	offline: (->
		!@get("online")
  ).property("online")

`export default Visitor`