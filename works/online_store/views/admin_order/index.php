<? include ROOT . '/views/layouts/header_admin.php'; ?>

<section>
    <div class="container">
        <div class="row">

            <br/>

            <div class="breadcrumbs">
                <ol class="breadcrumb">
                    <li><a href="/admin">Админпанель</a></li>
                    <li class="active">Управление заказами</li>
                </ol>
            </div>

            <h4>Список заказов</h4>

            <br/>


            <table class="table-bordered table-striped table">
                <tr>
                    <th>ID заказа</th>
                    <th>Имя покупателя</th>
                    <th>Телефон покупателя</th>
                    <th>Дата оформления</th>
                    <th>Статус</th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                <? foreach ($ordersList as $order): ?>
                    <tr>
                        <td>
                            <a href="/admin/order/view/<? echo $order['id']; ?>">
                                <? echo $order['id']; ?>
                            </a>
                        </td>
                        <td><? echo $order['user_name']; ?></td>
                        <td><? echo $order['user_phone']; ?></td>
                        <td><? echo $order['date']; ?></td>
                        <td><? echo Order::getStatusText($order['status']); ?></td>
                        <td><a href="/admin/order/view/<? echo $order['id']; ?>" title="Смотреть"><i class="fa fa-eye"></i></a></td>
                        <td><a href="/admin/order/update/<? echo $order['id']; ?>" title="Редактировать"><i class="fa fa-pencil-square-o"></i></a></td>
                        <td><a href="/admin/order/delete/<? echo $order['id']; ?>" title="Удалить"><i class="fa fa-times"></i></a></td>
                    </tr>
                <? endforeach; ?>
            </table>

        </div>
    </div>
</section>

<? include ROOT . '/views/layouts/footer_admin.php'; ?>

