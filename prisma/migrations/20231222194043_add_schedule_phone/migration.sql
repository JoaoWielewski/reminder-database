/*
  Warnings:

  - Added the required column `schedule_phone` to the `doctor` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "doctor" ADD COLUMN     "schedule_phone" TEXT NOT NULL;
