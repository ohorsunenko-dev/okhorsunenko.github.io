<? include ROOT . '/views/layouts/header.php'; ?>

    <section>
        <div class="container">
            <div class="row">

                <div class="col-sm-4 col-sm-offset-4 padding-right">

                    <? if (isset($errors) && is_array($errors)): ?>
                        <ul>
                            <? foreach ($errors as $error): ?>
                                <li> - <? echo $error; ?></li>
                            <? endforeach; ?>
                        </ul>
                    <? endif; ?>


                    <div class="signup-form"><!--sign up form-->
                        <h2>Вход на сайт</h2>
                        <form action="#" method="post">
                            <input type="email" name="email" placeholder="E-mail" value="<?php echo $email; ?>"/>
                            <input type="password" name="password" placeholder="Пароль" value="<?php echo $password; ?>"/>
                            <input type="submit" name="submit" class="btn btn-default" value="Вход" />
                        </form>
                    </div><!--/sign up form-->
                    <br>
                    <h4><a href="/user/register">Регистрация</a></h4>

                    <br/>
                    <br/>
                </div>
            </div>
        </div>
    </section>

<? include ROOT . '/views/layouts/footer.php'; ?>
