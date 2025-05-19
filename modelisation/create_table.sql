CREATE TABLE Utilsateur(
   Id_user CHAR(50),
   Nom VARCHAR(50),
   Prénom VARCHAR(50),
   PRIMARY KEY(Id_user)
);

CREATE TABLE Materiel(
   Id_mat VARCHAR(50),
   nom VARCHAR(50),
   modele VARCHAR(50),
   PRIMARY KEY(Id_mat)
);
CREATE TABLE Réservation(
   Id_user CHAR(50),
   Id_mat VARCHAR(50),
   debut DATE,
   fin DATE,
   PRIMARY KEY(Id_user, Id_mat),
   FOREIGN KEY(Id_user) REFERENCES Utilsateur(Id_user),
   FOREIGN KEY(Id_mat) REFERENCES Materiel(Id_mat)
);