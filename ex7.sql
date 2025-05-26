#Afficher tous les utilisateurs ayant emprunté au moins un équipement
Select u.* from utilsateur as u, réservation as r
Where u.id_user=r.id_user;
#Afficher les équipements n’ayant jamais été empruntés
Select * from materiel as m left join réservation as r
ON (m.id_mat=r.id_mat) where r.id_mat is null
#Afficher les équipements ayant été emprunté plus de 3 fois

#Afficher le nombre d’emprunts pour chaque utilisateur, ordonné par numéro d'étudiant. Les utilisateurs n'ayant pas de réservations en cours doivent également être affichés avec la valeur 0 dans le nombre d'emprunts.