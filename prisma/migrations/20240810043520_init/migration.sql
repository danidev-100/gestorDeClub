-- CreateTable
CREATE TABLE "cuotas" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "monto" INTEGER NOT NULL,
    "fechaCuota" TEXT NOT NULL,
    "mes" TEXT NOT NULL,
    "jugadorId" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "JugadorpagoCuotas" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "jugadorId" INTEGER NOT NULL,
    "cuotaId" INTEGER NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "JugadorpagoCuotas_jugadorId_fkey" FOREIGN KEY ("jugadorId") REFERENCES "jugadores" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "JugadorpagoCuotas_cuotaId_fkey" FOREIGN KEY ("cuotaId") REFERENCES "cuotas" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "cuotas_jugadorId_key" ON "cuotas"("jugadorId");
