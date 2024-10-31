SELECT c.id_client, c.nom, c.prenom, CASE WHEN d.maladies = 'Immunodeficience combinee severe' THEN 'Eligible' ELSE 'Non-Eligible' END AS Eligibility
FROM client c
JOIN dossier_medical d ON c.id_client = d.id_client
WHERE d.maladies = 'Immunodeficience combinee severe';


SELECT id_composant, quantite
FROM commande_composant
WHERE quantite >= 200; -- Assuming 200 is the minimum quantity required for vaccine production


SELECT id_employe, nom, prenom, specialisation
FROM employe;


SELECT id_controle_technique, nom_responsable, rapport
FROM controle_technique;

SELECT MONTH(date_commande) AS Month, COUNT(id_commande) AS Vaccines_Administered
FROM commande_client
GROUP BY MONTH(date_commande);

SELECT maladies, allergies, COUNT(id_client) AS Total_Clients
FROM dossier_medical
GROUP BY maladies, allergies;