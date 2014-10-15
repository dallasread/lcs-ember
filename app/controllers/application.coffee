`import Ember from 'ember';`

ApplicationController = Ember.ObjectController.extend
	currentChatbox: null
	chatboxStore: null
	init: ->
		ApplicationController.currentChatbox = $("script[data-lcs]").data("lcs")
			
`export default ApplicationController`