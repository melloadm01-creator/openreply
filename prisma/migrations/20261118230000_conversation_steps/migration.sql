-- Additive only: new optional campaign fields, defaults keep existing campaigns unchanged.
ALTER TABLE "Automation" ADD COLUMN "openingDmDeclineLabel" TEXT;
ALTER TABLE "Automation" ADD COLUMN "openingDmDeclineMessage" TEXT;
ALTER TABLE "Automation" ADD COLUMN "conversationEnabled" BOOLEAN NOT NULL DEFAULT false;
ALTER TABLE "Automation" ADD COLUMN "conversationMessages" TEXT[] NOT NULL DEFAULT '{}';
ALTER TABLE "Automation" ADD COLUMN "conversationButtonLabels" TEXT[] NOT NULL DEFAULT '{}';
ALTER TABLE "Automation" ADD COLUMN "preLinkMessages" TEXT[] NOT NULL DEFAULT '{}';
ALTER TABLE "Automation" ADD COLUMN "conversationDelaySeconds" INTEGER NOT NULL DEFAULT 6;
