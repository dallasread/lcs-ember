`import Ember from 'ember';`

AdminController = Ember.ArrayController.extend
	needs: ["application"]
	actions:
		toggleStatus: ->
			alert @controllerFor('application').get('currentChatbox')
			
`export default AdminController`