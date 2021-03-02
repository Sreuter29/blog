<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <link rel="stylesheet" href="blog.css">
  <title>Mon blog</title>
</head>

<body>
  <h1>Mon super blog !</h1>
  <p><a href="index.php">Retour à la liste des billets</a></p>

  <?php
  // Connexion à la base de données
  try
  {
    $bdd = new PDO('mysql:host=localhost;dbname=minichat;charset=utf8', 'root', 'root');
  }
  catch(Exception $e)
  {
    die('Erreur : '.$e->getMessage());
  }

  // Récupération du billet
  $req = $bdd->prepare('SELECT id, titre, contenu, DATE_FORMAT(date_creation, \'%d/%m/%Y à %Hh%imin%ss\') AS date_creation_fr FROM billets_blog WHERE id = ?');
  $req->execute([$_GET['billet']]);
  $donnees = $req->fetch();
  if(empty($donnees)){
    echo "Ce billet n'existe pas ";
    die();
  }
  ?>

  <div class="news">
    <h3>
      <?php echo htmlspecialchars($donnees['titre']); ?>
      <em>le <?php echo $donnees['date_creation_fr']; ?></em>
    </h3>

    <p>
      <?php
      echo nl2br(htmlspecialchars($donnees['contenu']));
      ?>
    </p>
  </div>

  <h2>Commentaires</h2>
  <div>
    <?php
    $req->closeCursor(); // Important : on libère le curseur pour la prochaine requête

    // Récupération des commentaires
    $req = $bdd->prepare('SELECT auteur, commentaire, DATE_FORMAT(date_commentaire, \'%d/%m/%Y à %Hh%imin%ss\') AS date_commentaire_fr FROM commentaires_blog WHERE id_billet = ? ORDER BY date_commentaire');
    $req->execute([$_GET['billet']]);

    while ($donnees = $req->fetch())
    {
      ?>
      <p><strong><?php echo htmlspecialchars($donnees['auteur']); ?></strong> le <?php echo $donnees['date_commentaire_fr']; ?></p>
      <p><?php echo nl2br(htmlspecialchars($donnees['commentaire'])); ?></p>
      <?php
    } // Fin de la boucle des commentaires
    $req->closeCursor();
    ?>
  </div>

  <h2>Alimente ce blog en postant un commentaire! (255 charactères maxi!)</h2>
  <form action="commentaires_post.php?billet=<?php echo $_GET['billet']; ?>" method="post">
    <p>
      <label for="pseudo">Pseudo :</label> <input type="text" name="pseudo" id="pseudo"><br>
      <label for="message">Message :</label>  <textarea name="message" rows="7" cols="40" id="message" maxlength="255" style="width:500px; height:80px; margin-top:5px;"></textarea><br>

      <input type="submit" value="Envoyer">
    </p>
  </form>
</body>
</html>
