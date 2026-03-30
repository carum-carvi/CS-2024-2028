const serverless = require('serverless-http'); 
const express = require('express');
const path = require('path');
const morgan = require('morgan');

const app = express();
const port = process.env.PORT || 8080;

// middleware
app.use(morgan('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, 'public')));

// EJS
app.set('view engine', 'ejs');

// ROUTES
app.get('/', (req, res) => {
  res.render('index', { title: 'Strona główna', message: 'No hejka' });
});

app.get('/oferta', (req, res) => {
  res.render('oferta', { title: 'Oferta' });
});

app.get('/info', (req, res) => {
  res.render('info', { title: 'Info' });
});

app.get('/kontakt', (req, res) => {
  res.render('kontakt', { title: 'Kontakt', message: 'formularz' });
});

// formularz
app.post('/submit-form', (req, res) => {
  console.log(req.body);
  res.send('działa');
});

// 404
app.use((req, res) => {
  res.status(404).render('404', { title: 'nie istniejsz' });
});

// error
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).render('error', { title: 'Błąd serwera' });
});

if (process.env.IS_OFFLINE) {
  app.listen(port, () => {
    console.log(`Aplikacja działa lokalnie na porcie ${port}`);
  });
}

module.exports.handler = serverless(app);


