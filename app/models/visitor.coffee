`import Ember from 'ember';`

Visitor = DS.Model.extend
	name: DS.attr "string"
	email: DS.attr "string"
	tags: DS.attr()
	updated_at: DS.attr "number"
	agent: DS.belongsTo "agent",
		async: true
	messages: DS.attr()
	msgs: (->
		a = []
		msgs = @get("messages")
		msgs ||= {}
		for k,msg of msgs
			msg.id = k
			a.push msg
		a
	).property("messages.@each")
	online: DS.attr "boolean"
	offline: (->
		!@get("online")
  ).property("online")

`export default Visitor`