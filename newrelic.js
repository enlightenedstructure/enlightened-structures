/**
 * New Relic agent configuration.
 *
 * See lib/config.defaults.js in the agent distribution for a more complete
 * description of configuration variables and their potential values.
 */
exports.config = {
  /**
   * Array of application names.
   */
  app_name : ['enlightened-structures'],
  /**
   * Your New Relic license key.
   */
  license_key : '57a80be80f493481ee115a2a3a2fcbdf020301c2',
  logging : {
    /**
     * Level at which to log. 'trace' is most useful to New Relic when diagnosing
     * issues with the agent, 'info' and higher will impose the least overhead on
     * production applications.
     */
    level : 'warn'  // fatal, error, warn, info, debug, or trace
  }
};
