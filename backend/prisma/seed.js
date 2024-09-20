// prisma/seed.js
const { PrismaClient } = require('@prisma/client')
const prisma = new PrismaClient()

async function main() {
  const roles = [
    { name: 'Admin' },
    { name: 'User' },
    { name: 'Instructor' }
  ]

  for (const role of roles) {
    await prisma.role.create({ data: role });
  }

  console.log('Rôles ajoutés avec succès');
}

main()
  .catch(e => console.error(e))
  .finally(async () => {
    await prisma.$disconnect();
  });