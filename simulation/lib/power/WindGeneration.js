import Switch from "./Switch.js";


// TODO use state machine e.g. https://xstate.js.org/
// TODO use queue, e.g. https://www.npmjs.com/package/amqplib, https://www.rabbitmq.com/, maybe https://pusher.com/?
/**
 * 
 * @param {!number} capacity 
 * @param {!Switch[]} switches 
 * @param {!string} name 
 */

 //TODO @param {!WindTurbine[]} windTurbines //TODO 

export default function WindGeneration (capacity, switches, name) {
  this.realPower = 0;
  this.capacity = capacity
  // this.windTurbines = windTurbines;
  this.switches = switches; // only one for now, but use array to avoid nulls
  this.name = name;
  this.windSpeed = 0;
}

/**
 * Disconnects the one and only one connecting switch
 */
WindGeneration.prototype.openSwitches = function () {
  if (this.switches.length > 0) {
    this.switches[0].open();
    console.log(`${this.name} has disconnected from switch: ${this.switches[0].name}`)
  } else if (this.switches.length === 0) {
    console.log(`Error: ${this.name} has no connecting Switches`)
  }
  else if (this.switches.length > 1) {
    console.log(`Error: ${this.name} has multiple connecting Switches`)
  }
}

/**
 * 
 */
WindGeneration.prototype.closeSwitches = function () {
  if (this.switches.length > 0) {
    this.switches[0].close();
    console.log(`${this.name} has disconnected from switch: ${this.switches[0].name}`)
  } else if (this.switches.length === 0) {
    console.log(`Error: ${this.name} has no connecting Switches`)
  }
  else if (this.switches.length > 1) {
    console.log(`Error: ${this.name} has multiple connecting Switches`)
  }
}
