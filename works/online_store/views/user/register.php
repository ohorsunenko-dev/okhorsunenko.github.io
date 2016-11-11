<? include ROOT . '/views/layouts/header.php'; ?>

    <section>
        <div class="container">
            <div class="row">

                <div class="col-sm-4 col-sm-offset-4 padding-right">

                    <? if ($result): ?>
                        <p>Вы зарегистрированы!</p>
                    <? else: ?>
                        <? if (isset($errors) && is_array($errors)): ?>
                            <ul>
                                <? foreach ($errors as $error): ?>
                                    <li> - <? echo $error; ?></li>
                                <? endforeach; ?>
                            </ul>
                        <? endif; ?>

                        <div class="signup-form"><!--sign up form-->
                            <h2>Регистрация на сайте</h2>
                            <form action="#" method="post">
                                <input type="text" name="name" placeholder="Имя" value="<? echo $name; ?>"/>
                                <input type="email" name="email" placeholder="E-mail" value="<? echo $email; ?>"/>
                                <input type="password" name="password" placeholder="Пароль" value="<? echo $password; ?>"/>
                                <input type="submit" name="submit" class="btn btn-default" value="Регистрация" />
                            </form>
                        </div><!--/sign up form-->

                    <? endif; ?>
                    <br/>
                    <br/>
                </div>
            </div>
        </div>
    </section>

<? include ROOT . '/views/layouts/footer.php'; ?>