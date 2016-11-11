<? include ROOT . '/views/layouts/header_admin.php'; ?>

<section>
    <div class="container">
        <div class="row">

            <br/>

            <div class="breadcrumbs">
                <ol class="breadcrumb">
                    <li><a href="/admin">Админпанель</a></li>
                    <li class="active">Управление товарами</li>
                </ol>
            </div>

            <a href="/admin/product/create" class="btn btn-default back"><i class="fa fa-plus"></i> Добавить товар</a>

            <h4>Список товаров</h4>

            <br/>

            <table class="table-bordered table-striped table">
                <tr>
                    <th>ID товара</th>
                    <th>Артикул</th>
                    <th>Название товара</th>
                    <th>Цена</th>
                    <th></th>
                    <th></th>
                </tr>
                <? foreach ($productsList as $product): ?>
                    <tr>
                        <td><? echo $product['id']; ?></td>
                        <td><? echo $product['code']; ?></td>
                        <td><? echo $product['name']; ?></td>
                        <td><? echo $product['price']; ?></td>
                        <td><a href="/admin/product/update/<? echo $product['id']; ?>" title="Редактировать"><i class="fa fa-pencil-square-o"></i></a></td>
                        <td><a href="/admin/product/delete/<? echo $product['id']; ?>" title="Удалить"><i class="fa fa-times"></i></a></td>
                    </tr>
                <? endforeach; ?>
            </table>

        </div>
    </div>
</section>

<? include ROOT . '/views/layouts/footer_admin.php'; ?>

