-- CreateTable
CREATE TABLE "redirect" (
    "id" TEXT NOT NULL,
    "reminder_id" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "redirect_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "redirect" ADD CONSTRAINT "redirect_reminder_id_fkey" FOREIGN KEY ("reminder_id") REFERENCES "reminder"("id") ON DELETE CASCADE ON UPDATE CASCADE;
