/*
  Warnings:

  - You are about to drop the column `babershopId` on the `Booking` table. All the data in the column will be lost.
  - Added the required column `barbershopId` to the `Booking` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Booking" DROP CONSTRAINT "Booking_babershopId_fkey";

-- AlterTable
ALTER TABLE "Booking" DROP COLUMN "babershopId",
ADD COLUMN     "barbershopId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "Booking" ADD CONSTRAINT "Booking_barbershopId_fkey" FOREIGN KEY ("barbershopId") REFERENCES "Barbershop"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
