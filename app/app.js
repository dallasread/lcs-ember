import Ember from 'ember';
// import DS from 'ember-data';
import Resolver from 'ember/resolver';
import loadInitializers from 'ember/load-initializers';
import config from './config/environment';

var App = Ember.Application.extend({
  modulePrefix: config.modulePrefix,
  podModulePrefix: config.podModulePrefix,
  Resolver: Resolver,
	rootElement: "#lcs"
});
		
// window.lcs_id = $("script[data-lcs]").data("lcs")

// Ember.Route.reopen({
//   beforeModel: function (transition) {
// 		// var unprotected_routes = ["chatbox"];
//  
//     // if (unprotected_routes.indexOf(transition.targetName) === -1 && this.get('auth.currentUser.id') + "IS INSIDE" + "USERADMINS") {
// 		// 	this.transitionTo("chatbox");
// 		// }
// 	}
// });

loadInitializers(App, config.modulePrefix);
export default App;