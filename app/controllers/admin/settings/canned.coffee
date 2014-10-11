`import Ember from 'ember';`

CannedController = Ember.ArrayController.extend
	sortProperties: ["delay"]
	sortAscending: true
	actions:
		removeCanned: (Canned) ->
			if confirm "Are you sure you want to remove this Canned?"
				Canned.deleteRecord()
				Canned.save()
		addCanned: ->
			canned = @store.createRecord "canned",
				id: "#{Math.random()}"[0..5].replace(".", "")
				message:
					body: "Canned message #{Math.random()}."
			canned.save()

`export default CannedController`