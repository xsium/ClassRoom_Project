const express = require('express');
const bcrypt = require('bcryptjs');
const auth = require('../middleware/auth');
const { PrismaClient } = require('@prisma/client');
const jwt = require('jsonwebtoken');
const router = express.Router();
const prisma = new PrismaClient();

// Route d'inscription
router.post('/register', auth, async (req, res) => { // Ajout du middleware d'authentification
  try {
    // Vérifier si l'utilisateur a le rôle Admin
    if (req.user.role !== 'Admin') {
      return res.status(403).json({ error: 'Accès interdit : seul un administrateur peut créer des comptes.' });
    }

    const { email, password, firstname, roleName } = req.body;
    const hashedPassword = await bcrypt.hash(password, 10);

    // Trouver le rôle correspondant
    const role = await prisma.role.findFirst({ // Changement ici
      where: { name: roleName } // Utiliser findFirst pour rechercher par nom
    });

    if (!role) {
      return res.status(400).json({ error: 'Rôle invalide' });
    }

    const user = await prisma.user.create({
      data: {
        email,
        password: hashedPassword,
        firstname,
      },
    });

    // Ajouter l'utilisateur au rôle
    await prisma.userRole.create({
      data: {
        user: { connect: { id: user.id } },
        role: { connect: { id: role.id } }
      }
    });

    // Récupérer le rôle de l'utilisateur
    const userWithRole = await prisma.user.findUnique({
      where: { id: user.id },
      include: { UserRole: { include: { role: true } } } // Inclure le rôle
    });

    res.status(201).json({ 
      message: 'Utilisateur créé avec succès', 
      user: { 
        id: userWithRole.id, 
        firstname: userWithRole.firstname, 
        email: userWithRole.email, 
        role: userWithRole.UserRole[0].role.name // Accéder au nom du rôle
      } 
    });
  } catch (error) {
    if (error.code === 'P2002') {
      return res.status(400).json({ error: 'Cette adresse e-mail est déjà utilisée.' });
    }
    console.error('Erreur lors de l\'inscription:', error);
    res.status(500).json({ error: 'Erreur lors de l\'inscription: ' + error.message });

  }
});

// Route de connexion
router.post('/login', async (req, res) => {
  try {
    const { email, password } = req.body;
    const user = await prisma.user.findUnique({ 
      where: { email },
      include: { UserRole: { include: { role: true } } } // Inclure les informations sur le rôle
    });

    if (!user || !(await bcrypt.compare(password, user.password))) {
      return res.status(401).json({ error: 'Email ou mot de passe invalide' });
    }

    const token = jwt.sign(
      { userId: user.id, role: user.UserRole[0].role.name }, // Inclure le rôle dans le token
      process.env.JWT_SECRET,
      { expiresIn: '1h' }
    );

    res.json({ 
      token, 
      user: { 
        id: user.id, 
        firstname: user.firstname, 
        email: user.email, 
        role: user.UserRole[0].role.name // Accéder au nom du rôle
      } 
    });
  } catch (error) {
    console.error('Erreur lors de la connexion:', error);
    res.status(400).json({ error: error.message });
  }
});

module.exports = router;