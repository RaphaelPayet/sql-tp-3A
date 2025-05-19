#1 Requête de modification de la quantité disponible d’un matériel
update materiel
SET quantite = 40
where id_mat='M001';
#2 Requête de modification de la quantité de tous les matériels qui sont en cours d'emprunt et la date de retour prévue dans plus de 2 jours
update materiel
SET quantite = quantite - 1
where id_mat in (
Select id_mat 
from réservation
where fin> CURRENT_DATE+Interval '2 days'
);