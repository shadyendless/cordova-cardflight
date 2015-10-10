var Cardflight = {}

Cardflight.init = function(APIToken, AccountToken, completionCallback) {
  var failureCallback = function(error) {
    console.log(error);
  };

  cordova.exec(completionCallback, failureCallback, "Cardflight", "init", APIToken, AccountToken);
};

module.exports = Cardflight;
