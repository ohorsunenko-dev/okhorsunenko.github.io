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
            </ul>
        </div>
        <div>
            <form class="form-group" method="post" action="index.php?action=<?=$_GET['action']?>&id=<?=$_GET['id']?>">
                <label>Name of Article </label>
                <input type="text" name="title" value="<?=$article['title']?>" class="form-item" autofocus required>

                <label>Date</label>
                <input type="date" name="date" value="<?=$article['date']?>" class="form-item" required>

                <label>Content</label>
                <textarea class="form-item" name="content" cols="50" rows="10" required><?=$article['content']?></textarea>

                <input type="submit" value="Save" class="btn">
                </form>
        </div>
        <footer>
            <p>My Blog <br> Copyright &copy; 2016</p>
        </footer>
    </div>
</body>
</html>