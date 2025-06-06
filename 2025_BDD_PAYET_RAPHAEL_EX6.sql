#Requête de suppression d’une réservation existante
DELETE FROM Réservation
WHERE Id_user = 'U066' AND Id_mat = 'M066';
#Requête de suppression d'une réservation ou la date de retour prévue est passée.
DELETE FROM Réservation
WHERE fin> CURRENT_DATE;
