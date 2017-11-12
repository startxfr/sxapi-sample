var sxapi = require("sxapi-core");
sxapi.app.launch(function () {
    sxapi.app.log.info("application started", sxapi.app.timer.time('app'));
});