<?php
	define('SERVERNAME', "localhost");
	define('USERNAME', "root");
	define('PASSWORD', "");
	define('DBNAME', "Service_Bibliothèque");

	function ConnectBDD()
	{
		$dsn = "mysql:host=".SERVERNAME.";dbname".DBNAME;
		try{
			$conn = new PDO($dsn, USERNAME, PASSWORD);
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			echo "Connexion réussit"."<br>";
		}
		catch(PDOException $e)
		{
			echo "Connexion échouée : ".$e->getMessage()."<br>";
		}

		return $conn;
	}
?>