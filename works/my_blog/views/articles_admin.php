<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Blog</title>
    <link rel="stylesheet" href="../style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
</head>
<body>
    <div class="container">

        <div class ="header">
            <ul>
                <li class="nameb"><a href="../index.php">My Blog</a></li>
                <li class="name_s"><a href="index.php?action=add">Add article</a></li>
            </ul>
        </div>

        <div>
          <table class="admin-table">
            <tr>
                <th>Date</th>
                <th>Title</th>
                <th></th>
                <th></th>
            </tr>
        
            <?php foreach($articles as $article): ?>
                    <tr>
                        <td><?=$article['date']?></td>
                        <td><?=articles_intro($article['title'], 80)?></td>
                        <td>
                            <a href="index.php?action=edit&id=<?=$article['id']?>">Редактировать</a>
                        </td>
                        <td>
                            <a href="index.php?action=delete&id=<?=$article['id']?>">Удалить</a>
                        </td>
                    </tr>
                <?php endforeach ?>
          </table>
          
        </div>
        <footer>
            <p>My Blog <br> Copyright &copy; 2016</p>
        </footer>
    </div>
</body>
</html>