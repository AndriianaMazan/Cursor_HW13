CREATE DATABASE IF NOT EXISTS airport;

USE airport;

CREATE TABLE IF NOT EXISTS planeModels
(
    model VARCHAR(20) NOT NULL UNIQUE,
    CONSTRAINT planeModels_pk PRIMARY KEY (model)
);

CREATE TABLE IF NOT EXISTS planes
(
	serialNumber VARCHAR(10) UNIQUE NOT NULL,
    model VARCHAR(20) NOT NULL,
    seats SMALLINT NOT NULL,
    CONSTRAINT planes_pk PRIMARY KEY (serialNumber),
    CONSTRAINT planes_models_model_fk FOREIGN KEY (model)
	REFERENCES planeModels(model)
);

CREATE TABLE IF NOT EXISTS pilots
(
	pilotID INT NOT NULL AUTO_INCREMENT UNIQUE,
    pilotSurname VARCHAR(15) NOT NULL,
    pilotName VARCHAR(15) NOT NULL,
    age TINYINT NOT NULL,
    planeModel VARCHAR(20) NOT NULL,
    CONSTRAINT pilots_pk PRIMARY KEY (pilotID),
    CONSTRAINT pilots_models_planeModel_fk FOREIGN KEY (planeModel)
    REFERENCES planeModels(model)
);