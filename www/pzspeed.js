var PZSpeed = {
	initializePZSpeed: function(appID,apiKey) {
    
		cordova.exec(
	        // Register the callback handler
	        function callback(data) {

	        },
	        // Register the errorHandler
	        function errorHandler(err) {
	            alert('Error');
	        },
	        // Define what class to route messages to
	        'PZSpeed',
	        // Execute this method on the above class
	        'initializePZSpeed',
	        // Args. App id and api key as strings. 
	        [ appID,apiKey ]
    	);
	},

	usePZ: function(shouldUsePZ) {
		cordova.exec(
		    // Register the callback handler
		    function callback(data) {

		    },
		    // Register the errorHandler
		    function errorHandler(err) {
		        alert('Error');
		    },
		    // Define what class to route messages to
		    'PZSpeed',
		    // Execute this method on the above class
		    'usePZ',
	        // Args. either true or false. 
		    [ shouldUsePZ ]
		);
	},
	setPZLogLevel: function(logLevel) {
		cordova.exec(
		    // Register the callback handler
		    function callback(data) {

		    },
		    // Register the errorHandler
		    function errorHandler(err) {
		        alert('Error');
		    },
		    // Define what class to route messages to
		    'PZSpeed',
		    // Execute this method on the above class
		    'setPZLogLevel',
	        // Args. Valid values are 0-4 which respectively mean nologs, errors, warnings, info and vinfo.
		    [ logLevel ]
		);
	}
}
module.exports = PZSpeed;
