<?php

namespace app\controllers;

use app\models\Post;
use yii\web\Controller;

class BlogController extends Controller
{
    public function actionPage1()
    {
        $posts = Post::find()->asArray()->all();
        return $this->render('page1', compact('posts'));
    }
}