const db = require('../util/database');

module.exports = class Category {
    constructor(pNo, pName, pStock) {
        this.pNo = pNo;
        this.pName = pName;
        this.pStock = pStock;
    }

    // READ
    static fetchAll() {
        return db.execute('SELECT * FROM part');
    }

    static getCount() {
        return db.execute('SELECT COUNT(*) as count FROM part');
    }
}