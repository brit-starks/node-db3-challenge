const db = require('../db-config');


module.exports = {
  find,
  findById
}

function find() {
return db('schemes');
}


function findById( id ) {
  return db('schemes')
  .where({ id })
  .first();
}

async function add(scheme) {
  const [id] = await db('schemes')
  .insert(scheme);

  return findById(id);
}

function update(changes, id) {
  db('schemes')
  .where({ id })
  .update(changes);

  return findById(id);
}

function remove(id) {
  findById(id);

  db('schemes')
  .where({ id })
  .del()

  return findById(id);
}