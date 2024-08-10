-- CreateTable
CREATE TABLE "jugadores" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nombre" TEXT NOT NULL,
    "apellido" TEXT NOT NULL,
    "dni" TEXT NOT NULL,
    "celular" TEXT NOT NULL,
    "fechaNacimiento" TEXT NOT NULL,
    "createAd" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updateAd" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "categorias" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "categoria" TEXT NOT NULL,
    "jugadorId" INTEGER NOT NULL,
    "createAd" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updateAd" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "categorias_jugadorId_fkey" FOREIGN KEY ("jugadorId") REFERENCES "jugadores" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "categorias_jugadorId_key" ON "categorias"("jugadorId");
