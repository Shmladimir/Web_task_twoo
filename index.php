

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="./assets/js/jquery-3.5.1.min.js"></script>
    <script src="./assets/js/navScroll.js"></script>
    <link rel="stylesheet" href="./assets/style/reset.css">
    <link rel="stylesheet" href="./assets/style/main.css">
    <link rel="stylesheet" href="./assets/style/header.css">
    <link rel="stylesheet" href="./assets/style/my_page.css">
    <link rel="stylesheet" href="./assets/style/about_teacher.css">
</head>
<body>
    <?php include_once "header.php" ?>
<!--    --><?php
//        if ( basename('index.php') == true )
//        {
//            require_once('main_page_block.php');
//        }
//     ?>
    <? if (isset($_GET['mainPage'])) { require_once('main_page_block.php'); }?>
    <? if (isset($_GET['myPage'])) { require_once('my_page.php'); }?>
    <? if (isset($_GET['schedule'])) { require_once('schedule.php'); }?>
    <? if (isset($_GET['aboutTeachers'])) { require_once('about_teachers.php'); }?>
    <?php include "footer.php" ?>
</body>
