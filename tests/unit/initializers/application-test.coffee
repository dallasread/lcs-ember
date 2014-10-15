`import Ember from 'ember'`
`import { initialize } from 'lively/initializers/application'`

container = null
application = null

module 'ApplicationInitializer',
  setup: ->
    Ember.run ->
      container = new Ember.Container()
      application = Ember.Application.create()
      application.deferReadiness()

# Replace this with your real tests.
test 'it works', ->
  initialize container, application

  # you would normally confirm the results of the initializer here
  ok true
