/*
  Warnings:

  - You are about to drop the column `schedule_time` on the `doctor` table. All the data in the column will be lost.
  - You are about to drop the column `expected_date` on the `reminder` table. All the data in the column will be lost.
  - You are about to drop the column `pacient_id` on the `reminder` table. All the data in the column will be lost.
  - You are about to drop the `pacient` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `days_to_schedule` to the `doctor` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `status` on the `doctor` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Added the required column `expected_return_date` to the `reminder` table without a default value. This is not possible if the table is not empty.
  - Added the required column `pacient_name` to the `reminder` table without a default value. This is not possible if the table is not empty.
  - Added the required column `pacient_phone` to the `reminder` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "pacient" DROP CONSTRAINT "pacient_doctor_id_fkey";

-- DropForeignKey
ALTER TABLE "reminder" DROP CONSTRAINT "reminder_pacient_id_fkey";

-- AlterTable
ALTER TABLE "doctor" DROP COLUMN "schedule_time",
ADD COLUMN     "days_to_schedule" INTEGER NOT NULL,
DROP COLUMN "status",
ADD COLUMN     "status" BOOLEAN NOT NULL;

-- AlterTable
ALTER TABLE "reminder" DROP COLUMN "expected_date",
DROP COLUMN "pacient_id",
ADD COLUMN     "expected_return_date" TEXT NOT NULL,
ADD COLUMN     "pacient_name" TEXT NOT NULL,
ADD COLUMN     "pacient_phone" TEXT NOT NULL;

-- DropTable
DROP TABLE "pacient";
