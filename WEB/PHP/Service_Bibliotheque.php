<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<link rel="icon" href="">
		<link rel="stylesheet" type="text/css" href="CSS/Essai1.CSS">
		<link rel="shortcut icon" type="image/x-icon" href="../Images/confirm.png">
		<script type="text/javascript" src="">
			
		</script>
		<title>
			PHP - PDO
		</title>
	</head>

	<body>

		<h1>Fichier des livres empruntés :</h1>

		<?php
			require("Connect_PHP_Service_Bibliotheque.PHP");
			//appelle de la fonction
			$maConn = ConnectBDD();

			$req = "SELECT * FROM Emprunt"; // Retourne une table, sous forme de tableau

			// TABLEAU

			echo ("<table><tr>
					<th>Numéro d'emprunt</th>
					<th>date de début de l'emprunt</th>
					<th>date de fin de l'emprunt</th>
					<th>numéro de l'employé</th>
					<th>numéro de l'exemplaire</th>
				</tr>");

			foreach($maConn->query($req) as $row)
			{
				echo ("
						<tr>
							<td>".$row["idEmprunt"]."</td>
							<td>".$row["dateDebut"]."</td>
							<td>".$row["dateFin"]."</td>
							<td>".$row["idEmploye"]."</td>
							<td>".$row["idExemplaire"]."</td>
						</tr>
					");
			}

			echo ("</table>"."<br>"."<br>");

			// FIN TABLEAU
		?>

		<footer>
			<br>
			<p>Nous somme le :</p>
			<?php
				echo date('d/m/Y h:i:s'); /*fonction date permettant d'afficher la date (si on veut rafraichir autom : 'setInterval'*/
			?>
		</footer>

	</body>
</html>