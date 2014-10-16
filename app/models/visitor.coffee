`import Ember from 'ember';`

Visitor = DS.Model.extend
	name: DS.attr "string"
	email: DS.attr "string"
	tags: DS.attr()
	updated_at: DS.attr "number"
	messages: DS.hasMany "messages",
		async: true
	agent: DS.belongsTo "agent",
		async: true
	online: DS.attr "boolean"
	offline: (->
		!@get("online")
  ).property("online")

`export default Visitor`