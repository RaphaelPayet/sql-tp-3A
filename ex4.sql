#1 Requête d’aggrégation pour calculer le nombre total de réservations effectuées sur une période donnée
Select count(*) as Nb_réservation 
from réservation
where debut >= '2025-05-02' AND fin <= '2025-05-09';
#2
Select count(distinct id_user) as Nb_reserver
from réservation