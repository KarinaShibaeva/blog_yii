<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%post}}`.
 */
class m230921_184200_create_post_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%post}}', [
            'id' => $this->primaryKey(),
            'title' => $this->string(),
            'content' => $this->text(),
            'image' => $this->string(),
            'category_id' => $this->integer()->defaultValue(1),
        ]);

        $this->createIndex(
            'idx-post-category_id',
            'post',
            'category_id'
        );

        $this->addForeignKey(
            'fk-post-category_id',
            'post',
            'category_id',
            'category',
            'id',
            'CASCADE'
        );
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropForeignKey(
            'fk-post-category_id',
            'post'
        );

        $this->dropIndex(
            'idx-post-category_id',
            'post'
        );

        $this->dropTable('{{%post}}');
    }
}
