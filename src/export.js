EXPORT = {};
EXPORT.load = new Promise(function(resolve, reject) {
  Coldbrew.load()
    .then(function() {
      Coldbrew.run('import swapi');
      var swapi = Coldbrew.getVariable('swapi');
      resolve(swapi);
    })
    .catch(reject);
});