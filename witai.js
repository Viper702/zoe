'use strict';
 
(() => {
 
    const witHelper = require('hubot-wit-helper');
 
    const WIT_TOKEN = 'myWitToken';
 
    const actions = {
        say(session, context, message, cb) {
 
            //res object is attached to the session 
            session.res.reply(message);
 
            cb();
        },
        merge(session, context, entities, message, cb) {
            cb(context);
        },
        error(session, context, error) {
            console.error(error.message);
            session.res.send('Something went wrong with Wit.ai :scream:');
        }
    };
 
    const bot = robot => {
 
        const witRobot = new witHelper.Robot(WIT_TOKEN, actions, robot);
 
        witRobot.respond(/(.*)/gi, (err, context, res) => {
 
            console.log(`[USER] ${witRobot.getMsg(res)}`);
 
            if (err) {
                console.error(err);
                return;
            }
 
            //do stuff 
        });
 
    };
 
    module.exports = bot;
 
})();