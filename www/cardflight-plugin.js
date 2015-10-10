function Cardflight() {}

Cardflight.prototype.init = function(APIToken, AccountToken, completionCallback) {
  var failureCallback = function(error) {
    console.log(error);
  };

  cordova.exec(completionCallback, failureCallback, "Cardflight", "init", APIToken, AccountToken);
};
