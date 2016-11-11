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
                    <div class="features_items"><!--features_items-->
                        <h2 class="title text-center">Последние товары</h2>

                        <? foreach ($latestProducts as $product): ?>
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="<? echo Product::getImage($product['id']); ?>" alt="" />
                                            <h2>$<? echo $product['price']; ?></h2>
                                            <p>
                                                <a href="/product/<? echo $product['id']; ?>">
                                                    <? echo $product['name']; ?>
                                                </a>
                                            </p>
                                            <a href="#" class="btn btn-default add-to-cart" data-id="<? echo $product['id']; ?>"><i class="fa fa-shopping-cart"></i>В корзину</a>
                                        </div>
                                        <? if ($product['is_new']): ?>
                                            <img src="/template/images/home/new.png" class="new" alt="" />
                                        <? endif; ?>
                                    </div>
                                </div>
                            </div>
                        <? endforeach; ?>


                    </div><!--features_items-->

                    <div class="recommended_items"><!--recommended_items-->
                        <h2 class="title text-center">Рекомендуемые товары</h2>

                        <div class="cycle-slideshow"
                             data-cycle-fx=carousel
                             data-cycle-timeout=5000
                             data-cycle-carousel-visible=3
                             data-cycle-carousel-fluid=true
                             data-cycle-slides="div.item"
                             data-cycle-prev="#prev"
                             data-cycle-next="#next"
                        >
                            <? foreach ($sliderProducts as $sliderItem): ?>
                                <div class="item">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="<? echo Product::getImage($sliderItem['id']); ?>" alt="" />
                                                <h2>$<? echo $sliderItem['price']; ?></h2>
                                                <a href="/product/<?php echo $sliderItem['id']; ?>">
                                                    <? echo $product['name']; ?>
                                                </a>
                                                <br/><br/>
                                                <a href="#" class="btn btn-default add-to-cart" data-id="<? echo $sliderItem['id']; ?>"><i class="fa fa-shopping-cart"></i>В корзину</a>
                                            </div>
                                            <? if ($sliderItem['is_new']): ?>
                                                <img src="/template/images/home/new.png" class="new" alt="" />
                                            <? endif; ?>
                                        </div>
                                    </div>
                                </div>
                            <? endforeach; ?>
                        </div>

                        <a class="left recommended-item-control" id="prev" href="#recommended-item-carousel" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a class="right recommended-item-control" id="next"  href="#recommended-item-carousel" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>

                    </div>
                </div><!--/recommended_items-->

            </div>
        </div>

    </section>

<? include ROOT . '/views/layouts/footer.php'; ?>