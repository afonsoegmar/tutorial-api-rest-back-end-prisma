/*
  Warnings:

  - You are about to drop the column `email` on the `produtos` table. All the data in the column will be lost.
  - You are about to drop the column `senha` on the `produtos` table. All the data in the column will be lost.
  - Added the required column `preco` to the `produtos` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_produtos" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nome" TEXT NOT NULL,
    "preco" REAL NOT NULL
);
INSERT INTO "new_produtos" ("id", "nome") SELECT "id", "nome" FROM "produtos";
DROP TABLE "produtos";
ALTER TABLE "new_produtos" RENAME TO "produtos";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
