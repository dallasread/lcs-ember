`import Ember from 'ember';`

VisitorsController = Ember.ArrayController.extend
	sortProperties: ["online", "updated_at"]
	sortAscending: false
	actions:
		archiveVisitor: (visitor) ->
			tags = visitor.get "tags"
			tags.push "archived"
			visitor.set "tags", tags
			visitor.save()

`export default VisitorsController`