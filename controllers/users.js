const moment = require('moment');

const User = require('../models/user');

/* READ *****************************/

exports.getUsers = (req, res, next) => {
    User.fetchAll()
        .then(([rows]) => {
            console.log(JSON.stringify(rows, ["id", "name", "email", "password"]));
            //res.send(JSON.stringify(rows));
            res.render('users', {
                data: rows,
                title: 'Post List',
            });
        })
        .catch(err => console.log(err));
};
