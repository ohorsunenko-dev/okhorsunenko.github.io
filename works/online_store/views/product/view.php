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
                                            <a href="/category/<? echo $categoryItem['id']; ?>">
                                                <? echo $categoryItem['name']; ?>
                                            </a>
                                        </h4>
                                    </div>
                                </div>
                            <? endforeach; ?>
                        </div>
                    </div>
                </div>

                <div class="col-sm-9 padding-right">
                    <div class="product-details"><!--product-details-->
                        <div class="row">
                            <div class="col-sm-5">
                                <div class="view-product">
                                    <img src="<? echo Product::getImage($product['id']); ?>" alt="" />
                                </div>
                            </div>
                            <div class="col-sm-7">
                                <div class="product-information"><!--/product-information-->

                                    <? if ($product['is_new']): ?>
                                        <img src="/template/images/product-details/new.jpg" class="newarrival" alt="" />
                                    <? endif; ?>

                                    <h2><? echo $product['name']; ?></h2>
                                    <p>Код товара: <? echo $product['code']; ?></p>
                                    <span>
                                    <span>US $<? echo $product['price']; ?></span>
                                    <a href="#" data-id="<? echo $product['id']; ?>"
                                       class="btn btn-default add-to-cart">
                                        <i class="fa fa-shopping-cart"></i>В корзину
                                    </a>
                                </span>
                                    <p><b>Наличие:</b> <? echo Product::getAvailabilityText($product['availability']); ?></p>
                                    <p><b>Производитель:</b> <? echo $product['brand']; ?></p>
                                </div><!--/product-information-->
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <br/>
                                <h5>Описание товара</h5>
                                <? echo $product['description']; ?>
                            </div>
                        </div>
                    </div><!--/product-details-->

                </div>
            </div>
        </div>
    </section>

<? include ROOT . '/views/layouts/footer.php'; ?>