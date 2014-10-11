`import Ember from 'ember';`

TriggersController = Ember.ArrayController.extend
	sortProperties: ["delay"]
	sortAscending: true
	actions:
		removeTrigger: (Trigger) ->
			if confirm "Are you sure you want to remove this Trigger?"
				Trigger.deleteRecord()
				Trigger.save()
		addTrigger: ->
			Trigger = @store.createRecord "trigger",
				delay: Math.random()
				include: "34, #{Math.random()}"
				exclude: "?nothing"
				message:
					body: "nice try."
			Trigger.save()

`export default TriggersController`