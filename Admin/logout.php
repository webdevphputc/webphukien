<?php 
    session_start();
    session_destroy();
    header('Location: /Admin/login_admin.php');
?>