const db = require('../data/db-config')

function find() {
    return db('schemes')
}

function findById(id) {
    return db('schemes').where({id})
}

function add({scheme_name}) {
    return db('schemes')
        .insert({scheme_name})
}

function remove(id) {
    return db('schemes').where({id}).del()
}

function findSteps(id) {
    return db('steps').where({ id })
  }

  function update(changes, id) {
    return db("schemes")
      .where({ id: id })
      .update(changes);
  }

module.exports = {
    find,
    findById,
    add,
    remove,
    update,
    findSteps
  }