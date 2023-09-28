<h1 class="text-center">Категории</h1>

<div class="d-flex justify-content-around mt-5">
<?php

use yii\bootstrap5\LinkPager;
use yii\helpers\Url;


foreach ($categories as $category):?>
    <div class="card mb-3" style="max-width: 15em;">
        <div class="row g-0">
            <div class="col-md-4">
                <img src="image/<?php echo $category['image']?>" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title">
                        <a href="<?php echo Url::toRoute(['blog/posts', 'id'=>$category['id']]); ?>" class="text-dark">
                            <?php echo $category['name']?>
                        </a>
                    </h5>
                </div>
            </div>
        </div>
    </div>
<?php endforeach;?>
</div>
<div class="h-100 d-flex align-items-center justify-content-center mt-5">
<?php echo LinkPager::widget([
        'pagination' => $pages,]);?>
</div>
