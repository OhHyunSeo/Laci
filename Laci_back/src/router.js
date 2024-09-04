const express = require('express');
const router = express.Router();

const webController = require('./web/controller');

router.get('/', webController.home);
router.get('/page/:page', webController.page);
router.get('/sitemap', webController.sitemap);

router.get('/api/feed', (req, res) => {
    res.send('피드 리스트');
});

router.post('/api/feed', (req, res) => {
    res.send('피드 작성');
});

router.post('/api/feed/:id', (req, res) => {
    res.send(`피드 상세`);
});

/*
router.get('/', (req, res) => {
    res.send('Hello World');
});

router.get('/sitemap', (req, res) => {
    res.send('사이트맵');
});

router.get('/page/:name', (req, res) => {
    let name = req.params.name;
    res.send(`${name} 페이지`);
});
*/

module.exports = router;