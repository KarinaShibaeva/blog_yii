<div class="d-flex justify-content-around">
<?php
foreach ($posts as $post):?>
    <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="image/<?php echo $post['image'] ?>" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title"><?php echo $post['title'] ?></h5>
            <p class="card-text"><?php echo mb_substr($post['content'], 0, 60)?></p>
            <a href="#" class="btn btn-primary">Подробнее</a>
        </div>
    </div>
<?php endforeach;?>
</div>
