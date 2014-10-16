`import Ember from 'ember';`

Message = DS.Model.extend
	body: DS.attr "string"
	from_agent: DS.attr "boolean"
	private: DS.attr "boolean"
	visitor: DS.belongsTo "visitor",
		async: true
	agent: DS.belongsTo "agent",
		async: true

`export default Message`