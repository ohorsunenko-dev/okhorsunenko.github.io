<? include ROOT . '/views/layouts/header.php'; ?>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="left-sidebar">
                        <h2>Каталог</h2>
                        <div class="panel-group category-products">
                            <? foreach ($categories as $categoryItem): ?>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a href="/category/<? echo $categoryItem['id'];?>">
                                                <? echo $categoryItem['name'];?>
                                            </a>
                                        </h4>
                                    </div>
                                </div>
                            <? endforeach; ?>
                        </div>
                    </div>
                </div>

                <div class="col-sm-9 padding-right">
                    <div class="features_items">
                        <h2 class="title text-center">Корзина</h2>

                        <? if ($productsInCart): ?>
                            <p>Вы выбрали такие товары:</p>
                            <table class="table-bordered table-striped table">
                                <tr>
                                    <th>Код товара</th>
                                    <th>Название</th>
                                    <th>Стомость, $</th>
                                    <th>Количество, шт</th>
                                    <th>Удалить</th>
                                </tr>
                                <? foreach ($products as $product): ?>
                                    <tr>
                                        <td><? echo $product['code'];?></td>
                                        <td>
                                            <a href="/product/<? echo $product['id'];?>">
                                                <? echo $product['name'];?>
                                            </a>
                                        </td>
                                        <td><? echo $product['price'];?></td>
                                        <td><? echo $productsInCart[$product['id']];?></td>
                                        <td>
                                            <a href="/cart/delete/<? echo $product['id'];?>">
                                                <i class="fa fa-times"></i>
                                            </a>
                                        </td>
                                    </tr>
                                <? endforeach; ?>
                                <tr>
                                    <td colspan="4">Общая стоимость, $:</td>
                                    <td><? echo $totalPrice;?></td>
                                </tr>

                            </table>

                            <a class="btn btn-default checkout" href="/cart/checkout"><i class="fa fa-shopping-cart"></i> Оформить заказ</a>
                        <? else: ?>
                            <p>Корзина пуста</p>

                            <a class="btn btn-default checkout" href="/"><i class="fa fa-shopping-cart"></i> Вернуться к покупкам</a>
                        <? endif; ?>

                    </div>



                </div>
            </div>
        </div>
    </section>

<? include ROOT . '/views/layouts/footer.php'; ?>