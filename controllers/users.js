const moment = require('moment');

const User = require('../models/user');
const Post = require('../models/post');
const Category = require('../models/category');

/* READ *****************************/

exports.getUsers = (req, res, next) => {
    User.fetchAll()
        .then(([rows]) => {
            console.log(JSON.stringify(rows, ["sId", "name", "birthday"]));
            //res.send(JSON.stringify(rows));
            res.render('users', {
                data: rows,
                title: 'Post List',
            });
        })
        .catch(err => console.log(err));
};
