const express = require('express');
const bcrypt = require('bcryptjs');
const auth = require('../middleware/auth');
const { PrismaClient } = require('@prisma/client');
const jwt = require('jsonwebtoken');


const router = express.Router();
const prisma = new PrismaClient();

// Route d'inscription
router.post('/register', async (req, res) => {
  try {
    const { email, password, username, role  } = req.body;
    const hashedPassword = await bcrypt.hash(password, 10);

    const user = await prisma.user.create({
      data: {
        email,
        password: hashedPassword,
        username,
        role,
       
      }
    });

    res.status(201).json({ message: 'Utilisateur créé avec succès', userId: user.id });
  } catch (error) {
    console.error('Erreur lors de l\'inscription:', error);
    res.status(500).json({ error: 'Erreur lors de l\'inscription' });
  }
});

// Route de connexion
router.post('/login', async (req, res) => {
    try {
      const { email, password } = req.body;
      const user = await prisma.user.findUnique({ where: { email } });
      if (!user || !(await bcrypt.compare(password, user.password))) {
        return res.status(401).json({ error: 'Email ou mot de passe invalide' });
      }
      const token = jwt.sign(
        { userId: user.id },
        process.env.JWT_SECRET,
        { expiresIn: '1h' }
      );
      res.json({ token, user: { id: user.id, username: user.username, email: user.email, role: user.role } });
    } catch (error) {
      res.status(400).json({ error: error.message });
    }
  });


module.exports = router;