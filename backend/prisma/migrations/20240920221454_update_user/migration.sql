/*
  Warnings:

  - You are about to drop the `Asso_1` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `password` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Asso_1" DROP CONSTRAINT "Asso_1_role_id_fkey";

-- DropForeignKey
ALTER TABLE "Asso_1" DROP CONSTRAINT "Asso_1_user_id_fkey";

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "password" VARCHAR(255) NOT NULL;

-- DropTable
DROP TABLE "Asso_1";

-- CreateTable
CREATE TABLE "UserRole" (
    "user_id" INTEGER NOT NULL,
    "role_id" INTEGER NOT NULL,

    CONSTRAINT "UserRole_pkey" PRIMARY KEY ("user_id","role_id")
);

-- AddForeignKey
ALTER TABLE "UserRole" ADD CONSTRAINT "UserRole_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserRole" ADD CONSTRAINT "UserRole_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "Role"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
