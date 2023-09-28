<?php

namespace app\controllers;

use app\models\Category;
use app\models\Post;
use yii\data\Pagination;
use yii\web\Controller;

class BlogController extends Controller
{
    public function actionPage1()
    {
        $query = Category::find();
        $count = clone $query;
        $pages = new Pagination(['totalCount'=>$count->count(), 'pageSize'=>2]);

        $categories = $query->offset($pages->offset)
            ->limit($pages->limit)
            ->all();
        return $this->render('page1', ['categories'=>$categories, 'pages'=>$pages]);
    }

    public function actionPosts()
    {
        if (isset($_GET['id']) && $_GET['id']!="")
        {
            $categories = Category::find()->where(['id'=>$_GET['id']])-> asArray()->one();

            $posts = Post::find()->where(['category_id'=>$_GET['id']])-> asArray()->all();
            return $this->render('posts', compact('categories', 'posts'));
        }
        else
            return $this->redirect(['blog/page1']);
    }

}