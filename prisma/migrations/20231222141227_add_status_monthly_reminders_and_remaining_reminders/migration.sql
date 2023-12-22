/*
  Warnings:

  - Added the required column `monthly_reminders` to the `doctor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `remaining_reminders` to the `doctor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `status` to the `doctor` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "doctor" ADD COLUMN     "monthly_reminders" INTEGER NOT NULL,
ADD COLUMN     "remaining_reminders" INTEGER NOT NULL,
ADD COLUMN     "status" TEXT NOT NULL;
