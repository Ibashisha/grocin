ALTER TABLE "stock_movements"
	ADD COLUMN IF NOT EXISTS "stock_after" numeric(12, 3);
--> statement-breakpoint
UPDATE "stock_movements"
SET "stock_after" = 0
WHERE "stock_after" IS NULL;
--> statement-breakpoint
ALTER TABLE "stock_movements"
	ALTER COLUMN "stock_after" SET NOT NULL;
