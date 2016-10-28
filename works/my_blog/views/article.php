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
            </ul>
        </div>
        <div>
            <div class="article">
                <h3><?=$article['title']?></h3>
                <em>Public: <?=$article['date']?></em>
                <p><?=$article['content']?></p>
            </div>
        </div>
        <footer>
            <p>My Blog <br> Copyright &copy; 2016</p>
        </footer>
    </div>
</body>
</html>