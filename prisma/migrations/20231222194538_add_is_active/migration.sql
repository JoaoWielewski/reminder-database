/*
  Warnings:

  - You are about to drop the column `status` on the `doctor` table. All the data in the column will be lost.
  - Added the required column `is_active` to the `doctor` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "doctor" DROP COLUMN "status",
ADD COLUMN     "is_active" BOOLEAN NOT NULL;
