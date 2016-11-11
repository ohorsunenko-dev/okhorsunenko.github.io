<? include ROOT . '/views/layouts/header.php'; ?>

    <section>
        <div class="container">
            <div class="row">

                <div class="col-sm-4 col-sm-offset-4 padding-right">

                    <? if ($result): ?>
                        <p>Сообщение отправлено! Мы ответим Вам на указанный email.</p>
                    <? else: ?>
                        <? if (isset($errors) && is_array($errors)): ?>
                            <ul>
                                <? foreach ($errors as $error): ?>
                                    <li> - <?php echo $error; ?></li>
                                <? endforeach; ?>
                            </ul>
                        <? endif; ?>

                        <div class="signup-form"><!--sign up form-->
                            <h2>Обратная связь</h2>
                            <h5>Есть вопрос? Напишите нам</h5>
                            <br/>
                            <form action="#" method="post">
                                <p>Ваша почта</p>
                                <input type="email" name="userEmail" placeholder="E-mail" value="<? echo $userEmail; ?>"/>
                                <p>Сообщение</p>
                                <input type="text" name="userText" placeholder="Сообщение" value="<? echo $userText; ?>"/>
                                <br/>
                                <input type="submit" name="submit" class="btn btn-default" value="Отправить" />
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