<?php

$connection = mysqli_connect( 'localhost', 'root', 'root','test_db');

if ($connection == false )
{
    echo 'error join to db';
    echo mysqli_connect_error();
    exit();
}

$result = mysqli_query($connection, "SELECT * FROM `teachers` WHERE 1");

//while (($record = mysqli_fetch_assoc($result)))
//{
//    print_r($record);
//    echo '<hr>';
//};


?>
<?php include "head.php" ?>

    <main class="teacher_main_block">
        <div class="main_page_background">

        </div>
        <h1>Преподаватели сахгу</h1>
        <?php
        if ( mysqli_num_rows($result) ==0 )
            echo ('Преподаватели отсутствуют');
        ?>
        <?php
        while ( $art = mysqli_fetch_assoc($result))
        {
            ?>
            <div class="main_news_container main_teacher_container">
                <div class="news_container">
                    <div class="container">
                        <div class="teacherPhoto" style="background-image: url(./assets/data/teacher/photos/<?php echo $art['photo'] ?>)"></div>
                        <div class="text_part">
                            <div class="title"><?php echo $art['name']?></div>
                            <div class="news_text"><?php echo $art['about']?></div>
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