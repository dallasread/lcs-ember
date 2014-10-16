`import Ember from 'ember';`

VisitorController = Ember.ObjectController.extend
	actions:
		newMessage: ->
			body = $.trim @get("body")
			if body.length
				model = @get("model")
				message =
					body: body
				messages = model.set("messages", [message])
				# messages.pushObject message
				model.save()

`export default VisitorController`