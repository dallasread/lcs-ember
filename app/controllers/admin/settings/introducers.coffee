`import Ember from 'ember';`

IntroducersController = Ember.ArrayController.extend
	sortProperties: ["ordinal"]
	sortAscending: true
	actions:
		removeIntroducer: (introducer) ->
			if confirm "Are you sure you want to remove this introducer?"
				introducer.deleteRecord()
				introducer.save()
		addIntroducer: ->
			introducer = @store.createRecord "introducer",
				id: "name-#{"#{Math.random()*100000000}"[0..4]}"
				label: "Full Name #{"#{Math.random()}"[0..6]}"
				required: true
				type: "text"
				validator: "OHNO!"
				ordinal: 3
			introducer.save()

`export default IntroducersController`