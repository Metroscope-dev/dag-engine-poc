-- CreateTable
CREATE TABLE "Property" (
    "name" TEXT NOT NULL,
    "projectId" INTEGER NOT NULL,
    "data" TEXT NOT NULL,

    CONSTRAINT "Property_pkey" PRIMARY KEY ("name","projectId")
);

-- CreateTable
CREATE TABLE "TimeSerie" (
    "name" TEXT NOT NULL,
    "projectId" INTEGER NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "TimeSerie_pkey" PRIMARY KEY ("name","projectId")
);

-- CreateTable
CREATE TABLE "TimePoint" (
    "time" TIMESTAMP(3) NOT NULL,
    "projectId" INTEGER NOT NULL,
    "timeSerieName" TEXT NOT NULL,
    "data" TEXT NOT NULL,

    CONSTRAINT "TimePoint_pkey" PRIMARY KEY ("time","projectId","timeSerieName")
);
