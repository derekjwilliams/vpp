// TODO use state machine e.g. https://xstate.js.org/
// TODO use queue, e.g. https://www.npmjs.com/package/amqplib, https://www.rabbitmq.com/, maybe https://pusher.com/?

import Switch from './lib/power/Switch.js';
import WindGeneration from './lib/power/WindGeneration.js';
import WindTurbine from './lib/power/WindTurbine.js';
// import WindGeneration from "../WindGeneration";
const windTurbine = new WindTurbine('bar')
const connectingSwitch = new Switch('ringo')
const windGeneration = new WindGeneration(100000, [connectingSwitch], 'foo')
console.log(`${windGeneration.name}`)