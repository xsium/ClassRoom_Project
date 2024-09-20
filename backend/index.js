require('dotenv').config();
const express = require('express');
const cors = require('cors');
const authRoutes = require('./routes/auth');

const app = express();

// Middleware
app.use(cors());
app.use(express.json());

// Routes
app.use('/auth', authRoutes);


// Gestion des erreurs
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Quelque chose s\'est mal passé !');
});

const PORT = process.env.PORT || 3000;

   app.listen(PORT, () => {
       console.log(`Serveur en cours d'exécution sur le port ${PORT}`);
   });

// Démarrage du serveur
module.exports = app;
