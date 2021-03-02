<?php
// Connexion à la base de données
try
{
	$bdd = new PDO('mysql:host=localhost;dbname=minichat;charset=utf8', 'root', 'root');
}
catch(Exception $e)
{
	die('Erreur : '. $e->getMessage());
}

// Insertion du message à l'aide d'une requête préparée
$req = $bdd->prepare('INSERT INTO commentaires_blog (auteur, commentaire, id_billet) VALUES(?, ?, ?)');
$req->execute([$_POST['pseudo'], $_POST['message'], $_GET['billet']]);

// Redirection du visiteur vers la page des commentaires
header("Location: commentaires.php?billet=$_GET[billet]");
?>
