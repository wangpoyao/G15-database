const db = require('../util/database');

module.exports = class User {
    constructor(sId, name, birthday) {
        this.sId = sId;
        this.name = name;
        this.birthday = birthday;
    }

    // READ
    static fetchAll() {
        return db.execute('SELECT * FROM student');
    }

    static getCount() {
        return db.execute('SELECT COUNT(*) as count FROM student');
    }
}