<? include ROOT . '/views/layouts/header_admin.php'; ?>

<section>
    <div class="container">
        <div class="row">

            <br/>

            <div class="breadcrumbs">
                <ol class="breadcrumb">
                    <li><a href="/admin">Админпанель</a></li>
                    <li><a href="/admin/order">Управление заказами</a></li>
                    <li class="active">Просмотр заказа</li>
                </ol>
            </div>


            <h4>Просмотр заказа #<? echo $order['id']; ?></h4>
            <br/>




            <h5>Информация о заказе</h5>
            <table class="table-admin-small table-bordered table-striped table">
                <tr>
                    <td>Номер заказа</td>
                    <td><? echo $order['id']; ?></td>
                </tr>
                <tr>
                    <td>Имя клиента</td>
                    <td><? echo $order['user_name']; ?></td>
                </tr>
                <tr>
                    <td>Телефон клиента</td>
                    <td><? echo $order['user_phone']; ?></td>
                </tr>
                <tr>
                    <td>Комментарий клиента</td>
                    <td><? echo $order['user_comment']; ?></td>
                </tr>
                <? if ($order['user_id'] != 0): ?>
                    <tr>
                        <td>ID клиента</td>
                        <td><? echo $order['user_id']; ?></td>
                    </tr>
                <? endif; ?>
                <tr>
                    <td><b>Статус заказа</b></td>
                    <td><? echo Order::getStatusText($order['status']); ?></td>
                </tr>
                <tr>
                    <td><b>Дата заказа</b></td>
                    <td><? echo $order['date']; ?></td>
                </tr>
            </table>

            <h5>Товары в заказе</h5>

            <table class="table-admin-medium table-bordered table-striped table ">
                <tr>
                    <th>ID товара</th>
                    <th>Артикул товара</th>
                    <th>Название</th>
                    <th>Цена</th>
                    <th>Количество</th>
                </tr>
                <? foreach ($products as $product): ?>
                    <tr>
                        <td><? echo $product['id']; ?></td>
                        <td><? echo $product['code']; ?></td>
                        <td><? echo $product['name']; ?></td>
                        <td>$<? echo $product['price']; ?></td>
                        <td><? echo $productsQuantity[$product['id']]; ?></td>
                    </tr>
                <? endforeach; ?>
            </table>

            <a href="/admin/order/" class="btn btn-default back"><i class="fa fa-arrow-left"></i> Назад</a>
        </div>


</section>

<? include ROOT . '/views/layouts/footer_admin.php'; ?>

