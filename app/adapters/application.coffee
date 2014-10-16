`import DS from 'ember-data';`

ApplicationAdapter = DS.FirebaseAdapter.extend
	firebase: new window.Firebase("https://lcs2.firebaseio.com/")

`export default ApplicationAdapter`