/*
  Warnings:

  - You are about to drop the column `period` on the `reminder` table. All the data in the column will be lost.
  - Added the required column `period_quantity` to the `reminder` table without a default value. This is not possible if the table is not empty.
  - Added the required column `period_type` to the `reminder` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "reminder" DROP COLUMN "period",
ADD COLUMN     "period_quantity" INTEGER NOT NULL,
ADD COLUMN     "period_type" TEXT NOT NULL;
