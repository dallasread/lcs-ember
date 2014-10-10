`import Ember from 'ember';`

AgentsController = Ember.ArrayController.extend
	sortProperties: ["offline", "name"]
	sortAscending: true
	actions:
		removeAgent: (agent) ->
			if confirm "Are you sure you want to remove this agent?"
				agent.deleteRecord()
				agent.save()
		addAgent: ->
			agent = @store.createRecord "agent",
				name: Math.random()
				email: "#{Math.random()}@gmail.com"
				online: Math.random() < 0.5
			agent.save()

`export default AgentsController`