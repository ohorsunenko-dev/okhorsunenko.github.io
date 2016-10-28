<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Blog</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
</head>
<body>
    <div class="container">
        <div class ="header">
            <ul>
                <li class="nameb"><a href="index.php">My Blog</a></li>
                <li class="name_s"><a href="admin"> Admin Panel</a></li>
            </ul>
        </div>

        <div>
           <?php foreach($articles as $article): ?>
            <div class="article">
                <h3><a href="article.php?id=<?=$article['id']?>"><?=$article['title']?></a></h3>
                <em>Public: <?=$article['date']?></em>
                <p><?=articles_intro($article['content'])?></p>
            </div>
            <?php endforeach ?>
        </div>
        <footer>
            <p>My Blog <br> Copyright &copy; 2016</p>
        </footer>
    </div>
</body>
</html>