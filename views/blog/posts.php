<?php
foreach ($posts as $post):?>
    <div class="card mb-3">
        <img src="image/<?php echo $post['image']?>" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title"><?php echo $post['title']?></h5>
            <p class="card-text"><?php echo $post['content']?></p>
        </div>
    </div>
<?php endforeach;?>
