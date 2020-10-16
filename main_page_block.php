<?php

$connection = mysqli_connect( 'localhost', 'root', 'root','test_db');

if ($connection == false )
{
    echo 'error join to db';
    echo mysqli_connect_error();
    exit();
}

$result = mysqli_query($connection, "SELECT * FROM `articles` WHERE 1");

//while (($record = mysqli_fetch_assoc($result)))
//{
//    print_r($record);
//    echo '<hr>';
//};


?>
<?php include "head.php" ?>
<div class="top_bg"><div class="welcome_logo"></div></div>
<main    class="news_main_block" >
        <div class="main_page_background">

        </div>
        <h1>Новости СахГУ</h1>
        <?php
        if ( mysqli_num_rows($result) ==0 )
            echo ('Статьи отсутствуют');
        ?>
        <?php
            while ( $art = mysqli_fetch_assoc($result))
            {
                ?>
                <div class="main_news_container">
                    <div class="news_container">
                        <div class="container">
                            <div class="newsPhoto" style="background-image: url(./assets/data/news/images/news/<?php echo $art['images'] ?>)"></div>
                            <div class="text_part">
                                <div class="title"><?php echo $art['title']?></div>
                                <div class="news_text"><?php echo $art['text']?></div>
                            </div>

                        </div>
                    </div>
                </div>

                <?php
            }
        ?>

    </main>


<?php
mysqli_close($connection);
?>