/*
  Warnings:

  - You are about to drop the column `dueDate` on the `Assignment` table. All the data in the column will be lost.
  - You are about to drop the column `lessonId` on the `Assignment` table. All the data in the column will be lost.
  - You are about to drop the column `authorId` on the `BlogArticle` table. All the data in the column will be lost.
  - You are about to drop the column `creationDate` on the `BlogArticle` table. All the data in the column will be lost.
  - You are about to drop the column `modificationDate` on the `BlogArticle` table. All the data in the column will be lost.
  - You are about to drop the column `blogArticleId` on the `Comment` table. All the data in the column will be lost.
  - You are about to drop the column `creationDate` on the `Comment` table. All the data in the column will be lost.
  - You are about to drop the column `modificationDate` on the `Comment` table. All the data in the column will be lost.
  - You are about to drop the column `parentCommentId` on the `Comment` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `Comment` table. All the data in the column will be lost.
  - You are about to drop the column `categoryId` on the `Course` table. All the data in the column will be lost.
  - You are about to drop the column `creationDate` on the `Course` table. All the data in the column will be lost.
  - You are about to drop the column `modificationDate` on the `Course` table. All the data in the column will be lost.
  - You are about to drop the column `ownerId` on the `Course` table. All the data in the column will be lost.
  - You are about to drop the column `assignmentId` on the `Grade` table. All the data in the column will be lost.
  - You are about to drop the column `creationDate` on the `Grade` table. All the data in the column will be lost.
  - You are about to drop the column `modificationDate` on the `Grade` table. All the data in the column will be lost.
  - You are about to drop the column `creationDate` on the `Lesson` table. All the data in the column will be lost.
  - You are about to drop the column `durationMinute` on the `Lesson` table. All the data in the column will be lost.
  - You are about to drop the column `modificationDate` on the `Lesson` table. All the data in the column will be lost.
  - You are about to drop the column `moduleId` on the `Lesson` table. All the data in the column will be lost.
  - You are about to drop the column `skillId` on the `Level` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `Media` table. All the data in the column will be lost.
  - You are about to drop the column `courseId` on the `Module` table. All the data in the column will be lost.
  - You are about to drop the column `creationDate` on the `Module` table. All the data in the column will be lost.
  - You are about to drop the column `modificationDate` on the `Module` table. All the data in the column will be lost.
  - You are about to drop the column `accountActive` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `accountValid` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `creationDate` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `modificationDate` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `password` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `termId` on the `User` table. All the data in the column will be lost.
  - You are about to drop the `_AssignmentToUser` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_BlogArticleMedia` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_CoursePromoter` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_CourseRemembered` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_CourseSkills` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_CourseStudent` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_LessonMedia` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_UserRoles` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_UserSkills` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[lesson_id]` on the table `Assignment` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `lesson_id` to the `Assignment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `BlogArticle` table without a default value. This is not possible if the table is not empty.
  - Added the required column `blog_article_id` to the `Comment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `Comment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `modification_date` to the `Course` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `Course` table without a default value. This is not possible if the table is not empty.
  - Added the required column `assignment_id` to the `Grade` table without a default value. This is not possible if the table is not empty.
  - Added the required column `module_id` to the `Lesson` table without a default value. This is not possible if the table is not empty.
  - Added the required column `skill_id` to the `Level` table without a default value. This is not possible if the table is not empty.
  - Added the required column `course_id` to the `Module` table without a default value. This is not possible if the table is not empty.
  - Added the required column `modification_date` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Assignment" DROP CONSTRAINT "Assignment_lessonId_fkey";

-- DropForeignKey
ALTER TABLE "BlogArticle" DROP CONSTRAINT "BlogArticle_authorId_fkey";

-- DropForeignKey
ALTER TABLE "Comment" DROP CONSTRAINT "Comment_blogArticleId_fkey";

-- DropForeignKey
ALTER TABLE "Comment" DROP CONSTRAINT "Comment_parentCommentId_fkey";

-- DropForeignKey
ALTER TABLE "Comment" DROP CONSTRAINT "Comment_userId_fkey";

-- DropForeignKey
ALTER TABLE "Course" DROP CONSTRAINT "Course_categoryId_fkey";

-- DropForeignKey
ALTER TABLE "Course" DROP CONSTRAINT "Course_ownerId_fkey";

-- DropForeignKey
ALTER TABLE "Grade" DROP CONSTRAINT "Grade_assignmentId_fkey";

-- DropForeignKey
ALTER TABLE "Lesson" DROP CONSTRAINT "Lesson_moduleId_fkey";

-- DropForeignKey
ALTER TABLE "Level" DROP CONSTRAINT "Level_skillId_fkey";

-- DropForeignKey
ALTER TABLE "Media" DROP CONSTRAINT "Media_userId_fkey";

-- DropForeignKey
ALTER TABLE "Module" DROP CONSTRAINT "Module_courseId_fkey";

-- DropForeignKey
ALTER TABLE "User" DROP CONSTRAINT "User_termId_fkey";

-- DropForeignKey
ALTER TABLE "_AssignmentToUser" DROP CONSTRAINT "_AssignmentToUser_A_fkey";

-- DropForeignKey
ALTER TABLE "_AssignmentToUser" DROP CONSTRAINT "_AssignmentToUser_B_fkey";

-- DropForeignKey
ALTER TABLE "_BlogArticleMedia" DROP CONSTRAINT "_BlogArticleMedia_A_fkey";

-- DropForeignKey
ALTER TABLE "_BlogArticleMedia" DROP CONSTRAINT "_BlogArticleMedia_B_fkey";

-- DropForeignKey
ALTER TABLE "_CoursePromoter" DROP CONSTRAINT "_CoursePromoter_A_fkey";

-- DropForeignKey
ALTER TABLE "_CoursePromoter" DROP CONSTRAINT "_CoursePromoter_B_fkey";

-- DropForeignKey
ALTER TABLE "_CourseRemembered" DROP CONSTRAINT "_CourseRemembered_A_fkey";

-- DropForeignKey
ALTER TABLE "_CourseRemembered" DROP CONSTRAINT "_CourseRemembered_B_fkey";

-- DropForeignKey
ALTER TABLE "_CourseSkills" DROP CONSTRAINT "_CourseSkills_A_fkey";

-- DropForeignKey
ALTER TABLE "_CourseSkills" DROP CONSTRAINT "_CourseSkills_B_fkey";

-- DropForeignKey
ALTER TABLE "_CourseStudent" DROP CONSTRAINT "_CourseStudent_A_fkey";

-- DropForeignKey
ALTER TABLE "_CourseStudent" DROP CONSTRAINT "_CourseStudent_B_fkey";

-- DropForeignKey
ALTER TABLE "_LessonMedia" DROP CONSTRAINT "_LessonMedia_A_fkey";

-- DropForeignKey
ALTER TABLE "_LessonMedia" DROP CONSTRAINT "_LessonMedia_B_fkey";

-- DropForeignKey
ALTER TABLE "_UserRoles" DROP CONSTRAINT "_UserRoles_A_fkey";

-- DropForeignKey
ALTER TABLE "_UserRoles" DROP CONSTRAINT "_UserRoles_B_fkey";

-- DropForeignKey
ALTER TABLE "_UserSkills" DROP CONSTRAINT "_UserSkills_A_fkey";

-- DropForeignKey
ALTER TABLE "_UserSkills" DROP CONSTRAINT "_UserSkills_B_fkey";

-- DropIndex
DROP INDEX "Assignment_lessonId_key";

-- AlterTable
ALTER TABLE "Assignment" DROP COLUMN "dueDate",
DROP COLUMN "lessonId",
ADD COLUMN     "due_date" TIMESTAMP(3),
ADD COLUMN     "lesson_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BlogArticle" DROP COLUMN "authorId",
DROP COLUMN "creationDate",
DROP COLUMN "modificationDate",
ADD COLUMN     "creation_date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "modification_date" TIMESTAMP(3),
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Comment" DROP COLUMN "blogArticleId",
DROP COLUMN "creationDate",
DROP COLUMN "modificationDate",
DROP COLUMN "parentCommentId",
DROP COLUMN "userId",
ADD COLUMN     "blog_article_id" INTEGER NOT NULL,
ADD COLUMN     "creation_date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "modification_date" TIMESTAMP(3),
ADD COLUMN     "parent_comment_id" INTEGER,
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Course" DROP COLUMN "categoryId",
DROP COLUMN "creationDate",
DROP COLUMN "modificationDate",
DROP COLUMN "ownerId",
ADD COLUMN     "creation_date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "modification_date" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Grade" DROP COLUMN "assignmentId",
DROP COLUMN "creationDate",
DROP COLUMN "modificationDate",
ADD COLUMN     "assignment_id" INTEGER NOT NULL,
ADD COLUMN     "creation_date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "modification_date" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "Lesson" DROP COLUMN "creationDate",
DROP COLUMN "durationMinute",
DROP COLUMN "modificationDate",
DROP COLUMN "moduleId",
ADD COLUMN     "creation_date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "duration_minute" INTEGER,
ADD COLUMN     "modification_date" TIMESTAMP(3),
ADD COLUMN     "module_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Level" DROP COLUMN "skillId",
ADD COLUMN     "skill_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Media" DROP COLUMN "userId",
ADD COLUMN     "user_id" INTEGER;

-- AlterTable
ALTER TABLE "Module" DROP COLUMN "courseId",
DROP COLUMN "creationDate",
DROP COLUMN "modificationDate",
ADD COLUMN     "course_id" INTEGER NOT NULL,
ADD COLUMN     "creation_date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "modification_date" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "User" DROP COLUMN "accountActive",
DROP COLUMN "accountValid",
DROP COLUMN "creationDate",
DROP COLUMN "modificationDate",
DROP COLUMN "password",
DROP COLUMN "termId",
ADD COLUMN     "account_active" BOOLEAN,
ADD COLUMN     "account_valid" BOOLEAN,
ADD COLUMN     "creation_date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "modification_date" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "term_id" INTEGER;

-- DropTable
DROP TABLE "_AssignmentToUser";

-- DropTable
DROP TABLE "_BlogArticleMedia";

-- DropTable
DROP TABLE "_CoursePromoter";

-- DropTable
DROP TABLE "_CourseRemembered";

-- DropTable
DROP TABLE "_CourseSkills";

-- DropTable
DROP TABLE "_CourseStudent";

-- DropTable
DROP TABLE "_LessonMedia";

-- DropTable
DROP TABLE "_UserRoles";

-- DropTable
DROP TABLE "_UserSkills";

-- CreateTable
CREATE TABLE "Asso_1" (
    "user_id" INTEGER NOT NULL,
    "role_id" INTEGER NOT NULL,

    CONSTRAINT "Asso_1_pkey" PRIMARY KEY ("user_id","role_id")
);

-- CreateTable
CREATE TABLE "Promote" (
    "user_id" INTEGER NOT NULL,
    "course_id" INTEGER NOT NULL,

    CONSTRAINT "Promote_pkey" PRIMARY KEY ("user_id","course_id")
);

-- CreateTable
CREATE TABLE "Study" (
    "user_id" INTEGER NOT NULL,
    "course_id" INTEGER NOT NULL,

    CONSTRAINT "Study_pkey" PRIMARY KEY ("user_id","course_id")
);

-- CreateTable
CREATE TABLE "Remember" (
    "user_id" INTEGER NOT NULL,
    "course_id" INTEGER NOT NULL,

    CONSTRAINT "Remember_pkey" PRIMARY KEY ("user_id","course_id")
);

-- CreateTable
CREATE TABLE "Categorize" (
    "course_id" INTEGER NOT NULL,
    "course_category_id" INTEGER NOT NULL,

    CONSTRAINT "Categorize_pkey" PRIMARY KEY ("course_id","course_category_id")
);

-- CreateTable
CREATE TABLE "Make" (
    "user_id" INTEGER NOT NULL,
    "assignment_id" INTEGER NOT NULL,

    CONSTRAINT "Make_pkey" PRIMARY KEY ("user_id","assignment_id")
);

-- CreateTable
CREATE TABLE "Have" (
    "lesson_id" INTEGER NOT NULL,
    "media_id" INTEGER NOT NULL,

    CONSTRAINT "Have_pkey" PRIMARY KEY ("lesson_id","media_id")
);

-- CreateTable
CREATE TABLE "Complete" (
    "user_id" INTEGER NOT NULL,
    "skill_id" INTEGER NOT NULL,

    CONSTRAINT "Complete_pkey" PRIMARY KEY ("user_id","skill_id")
);

-- CreateTable
CREATE TABLE "Confirm" (
    "course_id" INTEGER NOT NULL,
    "skill_id" INTEGER NOT NULL,

    CONSTRAINT "Confirm_pkey" PRIMARY KEY ("course_id","skill_id")
);

-- CreateTable
CREATE TABLE "Associate" (
    "media_id" INTEGER NOT NULL,
    "blog_article_id" INTEGER NOT NULL,

    CONSTRAINT "Associate_pkey" PRIMARY KEY ("media_id","blog_article_id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Assignment_lesson_id_key" ON "Assignment"("lesson_id");

-- AddForeignKey
ALTER TABLE "User" ADD CONSTRAINT "User_term_id_fkey" FOREIGN KEY ("term_id") REFERENCES "Term"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Course" ADD CONSTRAINT "Course_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Module" ADD CONSTRAINT "Module_course_id_fkey" FOREIGN KEY ("course_id") REFERENCES "Course"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Lesson" ADD CONSTRAINT "Lesson_module_id_fkey" FOREIGN KEY ("module_id") REFERENCES "Module"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Assignment" ADD CONSTRAINT "Assignment_lesson_id_fkey" FOREIGN KEY ("lesson_id") REFERENCES "Lesson"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Grade" ADD CONSTRAINT "Grade_assignment_id_fkey" FOREIGN KEY ("assignment_id") REFERENCES "Assignment"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Media" ADD CONSTRAINT "Media_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Level" ADD CONSTRAINT "Level_skill_id_fkey" FOREIGN KEY ("skill_id") REFERENCES "Skill"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BlogArticle" ADD CONSTRAINT "BlogArticle_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Comment" ADD CONSTRAINT "Comment_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Comment" ADD CONSTRAINT "Comment_blog_article_id_fkey" FOREIGN KEY ("blog_article_id") REFERENCES "BlogArticle"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Comment" ADD CONSTRAINT "Comment_parent_comment_id_fkey" FOREIGN KEY ("parent_comment_id") REFERENCES "Comment"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Asso_1" ADD CONSTRAINT "Asso_1_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Asso_1" ADD CONSTRAINT "Asso_1_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "Role"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Promote" ADD CONSTRAINT "Promote_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Promote" ADD CONSTRAINT "Promote_course_id_fkey" FOREIGN KEY ("course_id") REFERENCES "Course"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Study" ADD CONSTRAINT "Study_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Study" ADD CONSTRAINT "Study_course_id_fkey" FOREIGN KEY ("course_id") REFERENCES "Course"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Remember" ADD CONSTRAINT "Remember_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Remember" ADD CONSTRAINT "Remember_course_id_fkey" FOREIGN KEY ("course_id") REFERENCES "Course"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Categorize" ADD CONSTRAINT "Categorize_course_id_fkey" FOREIGN KEY ("course_id") REFERENCES "Course"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Categorize" ADD CONSTRAINT "Categorize_course_category_id_fkey" FOREIGN KEY ("course_category_id") REFERENCES "CourseCategory"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Make" ADD CONSTRAINT "Make_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Make" ADD CONSTRAINT "Make_assignment_id_fkey" FOREIGN KEY ("assignment_id") REFERENCES "Assignment"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Have" ADD CONSTRAINT "Have_lesson_id_fkey" FOREIGN KEY ("lesson_id") REFERENCES "Lesson"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Have" ADD CONSTRAINT "Have_media_id_fkey" FOREIGN KEY ("media_id") REFERENCES "Media"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Complete" ADD CONSTRAINT "Complete_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Complete" ADD CONSTRAINT "Complete_skill_id_fkey" FOREIGN KEY ("skill_id") REFERENCES "Skill"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Confirm" ADD CONSTRAINT "Confirm_course_id_fkey" FOREIGN KEY ("course_id") REFERENCES "Course"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Confirm" ADD CONSTRAINT "Confirm_skill_id_fkey" FOREIGN KEY ("skill_id") REFERENCES "Skill"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Associate" ADD CONSTRAINT "Associate_media_id_fkey" FOREIGN KEY ("media_id") REFERENCES "Media"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Associate" ADD CONSTRAINT "Associate_blog_article_id_fkey" FOREIGN KEY ("blog_article_id") REFERENCES "BlogArticle"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
