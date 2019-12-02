const db = require('../db-config');


module.exports = {
  find,
  findById
}

function find() {
return db('schemes');
}


function findById( id ) {
  return db('schemes').where({ id }).first();
}


// function insert() {

// }