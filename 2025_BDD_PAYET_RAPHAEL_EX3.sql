# 1 Une requête de jointure sur les utilisateurs ayant effectué une réservation
Select u.nom,u.prénom,m.nom,r.debut,r.fin 
from utilsateur as u, materiel as m, réservation as r
where r.id_user=u.id_user and r.id_mat=m.id_mat
# 2 Une requête de jointure pour récupérer les informations sur le matériel emprunté par un utilisateur donné
Select u.nom,u.prénom,m.*,r.debut,r.fin 
from utilsateur as u, materiel as m, réservation as r
where r.id_user=u.id_user and r.id_mat=m.id_mat and u.id_user='U0
