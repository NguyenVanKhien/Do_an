<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cốm Food</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- Css Styles -->
    <link rel="stylesheet" href="<?php echo _WEB_ROOT; ?>/public/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="<?php echo _WEB_ROOT; ?>/public/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="<?php echo _WEB_ROOT; ?>/public/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="<?php echo _WEB_ROOT; ?>/public/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="<?php echo _WEB_ROOT; ?>/public/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="<?php echo _WEB_ROOT; ?>/public/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="<?php echo _WEB_ROOT; ?>/public/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="<?php echo _WEB_ROOT; ?>/public/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <?php require_once "./app/views/Client/blocks/header.php" ?>
    <!-- Hero Section End -->

    <!-- Categories Section Begin -->
    <?php require_once "./app/views/Client/pagess/" . $data["page"] . ".php" ?>
    <!-- Blog Section End -->

    <!-- Footer Section Begin -->
    <?php require_once "./app/views/Client/blocks/footer.php" ?>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="<?php echo _WEB_ROOT; ?>/public/js/jquery-3.3.1.min.js"></script>
    <script src="<?php echo _WEB_ROOT; ?>/public/js/bootstrap.min.js"></script>
    <script src="<?php echo _WEB_ROOT; ?>/public/js/jquery.nice-select.min.js"></script>
    <script src="<?php echo _WEB_ROOT; ?>/public/js/jquery-ui.min.js"></script>
    <script src="<?php echo _WEB_ROOT; ?>/public/js/jquery.slicknav.js"></script>
    <script src="<?php echo _WEB_ROOT; ?>/public/js/mixitup.min.js"></script>
    <script src="<?php echo _WEB_ROOT; ?>/public/js/owl.carousel.min.js"></script>
    <script src="<?php echo _WEB_ROOT; ?>/public/js/main.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#search_name').keyup(function() {
                var search = $('#search_name').val()
                if (search != '') {
                    $.ajax({
                        url: "<?= _WEB_ROOT ?>/tim-kiem/search",
                        type: "POST",
                        data: {
                            search: search
                        },
                        success: function(data) {
                            $('#show_search').html(data)
                            $('#show_search').css('display', 'block')
                        }
                    })
                }
            })
        })
    </script>



</body>

</html>