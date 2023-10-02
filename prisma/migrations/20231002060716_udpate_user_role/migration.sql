/*
  Warnings:

  - You are about to drop the column `city` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `password` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `phone` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `user` table. All the data in the column will be lost.
  - Added the required column `role` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `user` DROP COLUMN `city`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `password`,
    DROP COLUMN `phone`,
    DROP COLUMN `updatedAt`,
    ADD COLUMN `lastName` VARCHAR(191) NULL,
    ADD COLUMN `role` ENUM('user', 'agent', 'manager', 'admin') NOT NULL;
