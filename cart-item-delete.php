<?php require_once('header.php'); ?>

<?php

// Check if the product is valid or not
if( !isset($_REQUEST['id']) || !isset($_REQUEST['ssd']) || !isset($_REQUEST['ram'])  ) {
    header('location: cart.php');
    exit;
}

$i=0;
foreach($_SESSION['cart_p_id'] as $key => $value) {
    $i++;
    $arr_cart_p_id[$i] = $value;
}

$i=0;
foreach($_SESSION['cart_ssd_id'] as $key => $value) {
    $i++;
    $arr_cart_ssd_id[$i] = $value;
}

$i=0;
foreach($_SESSION['cart_ssd_capacity'] as $key => $value) {
    $i++;
    $arr_cart_ssd_capacity[$i] = $value;
}

$i=0;
foreach($_SESSION['cart_ram_id'] as $key => $value) {
    $i++;
    $arr_cart_ram_id[$i] = $value;
}

$i=0;
foreach($_SESSION['cart_ram_capacity'] as $key => $value) {
    $i++;
    $arr_cart_ram_capacity[$i] = $value;
}

$i=0;
foreach($_SESSION['cart_p_qty'] as $key => $value) {
    $i++;
    $arr_cart_p_qty[$i] = $value;
}

$i=0;
foreach($_SESSION['cart_p_current_price'] as $key => $value) {
    $i++;
    $arr_cart_p_current_price[$i] = $value;
}

$i=0;
foreach($_SESSION['cart_p_name'] as $key => $value) {
    $i++;
    $arr_cart_p_name[$i] = $value;
}

$i=0;
foreach($_SESSION['cart_p_featured_photo'] as $key => $value) {
    $i++;
    $arr_cart_p_featured_photo[$i] = $value;
}

unset($_SESSION['cart_p_id']);
unset($_SESSION['cart_ssd_id']);
unset($_SESSION['cart_ssd_capacity']);
unset($_SESSION['cart_ram_id']);
unset($_SESSION['cart_ram_capacity']);
unset($_SESSION['cart_p_qty']);
unset($_SESSION['cart_p_current_price']);
unset($_SESSION['cart_p_name']);
unset($_SESSION['cart_p_featured_photo']);

$k=1;
for($i=1;$i<=count($arr_cart_p_id);$i++) {
    if( ($arr_cart_p_id[$i] == $_REQUEST['id']) && ($arr_cart_ssd_id[$i] == $_REQUEST['ssd']) && ($arr_cart_ram_id[$i] == $_REQUEST['ram']) ) {
        continue;
    } else {
        $_SESSION['cart_p_id'][$k] = $arr_cart_p_id[$i];
        $_SESSION['cart_ssd_id'][$k] = $arr_cart_ssd_id[$i];
        $_SESSION['cart_ssd_capacity'][$k] = $arr_cart_ssd_capacity[$i];
        $_SESSION['cart_ram_id'][$k] = $arr_cart_ram_id[$i];
        $_SESSION['cart_ram_capacity'][$k] = $arr_cart_ram_capacity[$i];
        $_SESSION['cart_p_qty'][$k] = $arr_cart_p_qty[$i];
        $_SESSION['cart_p_current_price'][$k] = $arr_cart_p_current_price[$i];
        $_SESSION['cart_p_name'][$k] = $arr_cart_p_name[$i];
        $_SESSION['cart_p_featured_photo'][$k] = $arr_cart_p_featured_photo[$i];
        $k++;
    }
}
header('location: cart.php');
?>