import ConnectingSwitch from ConnectingSwitch;
import WindTurbine from WindTurbine;


// TODO use state machine e.g. https://xstate.js.org/
// TODO use queue, e.g. https://www.npmjs.com/package/amqplib, https://www.rabbitmq.com/, maybe https://pusher.com/?
/**
 * 
 * @param {!number} capacity 
 * @param {![WindTurbine]} windTurbines 
 * @param {!ConnectingSwitch} connectingSwitch 
 * @param {!string} name 
 */
function WindGeneration (capacity, windTurbines, connectingSwitch, name) {
  this.realPower = 0;
  this.capacity = capacity
  this.windTurbines = windTurbines;
  this.connectingSwitches = connectingSwitch ? [connectingSwitch] : []; // only one for now, but use array to avoid nulls
  this.name = name;
  this.windSpeed = 0;
}

/**
 * Disconnects the one and only one connecting switch
 */
WindGeneration.prototype.disconnectSwitch = function () {
  if (this.connectingSwitches.length > 0) {
    this.connectingSwitches[0].open();
    console.log(`${this.name} has disconnected from switch: ${this.connectingSwitches[0].name}`)
  } else if (this.connectingSwitches.length === 0) {
    console.log(`Error: ${this.name} has no connectingSwitches`)
  }
  else if (this.connectingSwitches.length > 1) {
    console.log(`Error: ${this.name} has multiple connectingSwitches`)
  }
}

/**
 * 
 */
WindGeneration.prototype.connectSwitch = function () {
  if (this.connectingSwitches.length > 0) {
    this.connectingSwitches[0].close();
    console.log(`${this.name} has disconnected from switch: ${this.connectingSwitches[0].name}`)
  } else if (this.connectingSwitches.length === 0) {
    console.log(`Error: ${this.name} has no connectingSwitches`)
  }
  else if (this.connectingSwitches.length > 1) {
    console.log(`Error: ${this.name} has multiple connectingSwitches`)
  }
}
