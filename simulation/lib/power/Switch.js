/**
 * 
 * @param {!string} name 
 */
export default function Switch (name) {
  this.name = name;
  this.closed = false;
}

Switch.prototype.close = function () {
  this.closed = true;
}

Switch.prototype.open = function () {
  this.closed = false;
}