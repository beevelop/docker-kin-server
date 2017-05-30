/*!
 * kin
 * Copyright(c) 2016-2017 Benoit Person
 * Apache 2.0 Licensed
 */

const env = require("./env");
const _ = require("lodash");
// For now, I'm forcing it to use `dev` strings while testing, because I don't
// have a "nicer" solution that do not involve massive amount of copy-pasting,
// or massive amount of stubbing the tests
function get_secret(name, mapping = process.env, secret_env = env === "test" ? "dev" : env) {
    const secret = _.get(mapping, name, null);
    if (!_.isNull(secret)) {
        if (_.isObject(secret)) {
            return _.get(secret, secret_env);
        }
        return secret;
    }
    return null;
}

module.exports = {
    get: get_secret
};
