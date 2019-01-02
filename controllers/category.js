const moment = require('moment');

const Category = require('../models/category');

/* READ *****************************/

exports.getCategory = (req, res, next) => {
    Category.fetchAll()
        .then(([rows]) => {
            console.log(JSON.stringify(rows, ["id", "title", "date"]));
            //res.send(JSON.stringify(rows));
            res.render('category', {
                data: rows,
                title: 'Post List',
            });
        })
        .catch(err => console.log(err));
};
