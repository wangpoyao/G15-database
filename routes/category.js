var express = require('express');
var router = express.Router();

const categoryController = require('../controllers/category');

router.get('/', categoryController.getCategory);

module.exports = router;