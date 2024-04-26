<?php require_once('header.php'); ?>

<?php
// Check if the customer is logged in or not
if(!isset($_SESSION['customer'])) {
    header('location: '.BASE_URL.'logout.php');
    exit;
} else {
    // If customer is logged in, but admin make him inactive, then force logout this user.
    $statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_id=? AND cust_status=?");
    $statement->execute(array($_SESSION['customer']['cust_id'],0));
    $total = $statement->rowCount();
    if($total) {
        header('location: '.BASE_URL.'logout.php');
        exit;
    }
}
?>

<?php
if (isset($_POST['form1'])) {

    $valid = 1;
    if(empty($_POST['cust_s_name'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_123."<br>";
    }else if(!preg_match("/^[a-zA-Z ]*$/",$_POST['cust_s_name'])){
        $valid = 0;
        $error_message .= 'Name must contain only alphabets'."<br>";
    }

    if(empty($_POST['cust_s_phone'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_124."<br>";
    }else if (!preg_match("/^(98|97|96)?[0-9]{8}$/",$_POST['cust_s_phone'])) {
        $valid = 0;
        $error_message .= 'Not a valid phone number'."<br>";
    }

    if(empty($_POST['cust_s_address'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_125."<br>";
    }

    if(empty($_POST['cust_s_district'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_126."<br>";
    }

    if(empty($_POST['cust_s_city'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_127."<br>";
    }

    if($valid == 1){
        // update data into the database
    $statement = $pdo->prepare("UPDATE tbl_customer SET 
                            cust_s_name=?, 
                            cust_s_phone=?, 
                            cust_s_district=?, 
                            cust_s_address=?, 
                            cust_s_city=?

                            WHERE cust_id=?");
    $statement->execute(array(
                            strip_tags($_POST['cust_s_name']),
                            strip_tags($_POST['cust_s_phone']),
                            strip_tags($_POST['cust_s_district']),
                            strip_tags($_POST['cust_s_address']),
                            strip_tags($_POST['cust_s_city']),
                            $_SESSION['customer']['cust_id']
                        ));  
   
    $success_message = LANG_VALUE_122;

    $_SESSION['customer']['cust_s_name'] = strip_tags($_POST['cust_s_name']);
    $_SESSION['customer']['cust_s_phone'] = strip_tags($_POST['cust_s_phone']);
    $_SESSION['customer']['cust_s_district'] = strip_tags($_POST['cust_s_district']);
    $_SESSION['customer']['cust_s_address'] = strip_tags($_POST['cust_s_address']);
    $_SESSION['customer']['cust_s_city'] = strip_tags($_POST['cust_s_city']);
    }
    
}
?>

<div class="page">
    <div class="container">
        <div class="row">            
            <div class="col-md-12"> 
                <?php require_once('customer-sidebar.php'); ?>
            </div>
            <div class="col-md-12">
                <div class="user-content">
                    <?php
                    if($error_message != '') {
                        echo "<div class='error' style='padding: 10px;background:#f1f1f1;margin-bottom:20px;'>".$error_message."</div>";
                    }
                    if($success_message != '') {
                        echo "<div class='success' style='padding: 10px;background:#f1f1f1;margin-bottom:20px;'>".$success_message."</div>";
                    }
                    ?>
                    <form action="" method="post">
                        <?php $csrf->echoInputField(); ?>
                        <div class="row">
                            <div class="col-md-3">
                            </div>
                            <div class="col-md-6">
                                <h3><?php echo LANG_VALUE_87; ?></h3>
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_102; ?> *</label>
                                    <input type="text" class="form-control" name="cust_s_name" value="<?php echo $_SESSION['customer']['cust_s_name']; ?>">
                                </div>
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_104; ?> *</label>
                                    <input type="text" class="form-control" name="cust_s_phone" value="<?php echo $_SESSION['customer']['cust_s_phone']; ?>">
                                </div>
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_106; ?> *</label>
                                    <select name="cust_s_district" class="form-control">
                                        <?php
                                        $statement = $pdo->prepare("SELECT * FROM tbl_district ORDER BY district_name ASC");
                                        $statement->execute();
                                        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                        foreach ($result as $row) {
                                            ?>
                                            <option value="<?php echo $row['district_id']; ?>" <?php if($row['district_id'] == $_SESSION['customer']['cust_s_district']) {echo 'selected';} ?>><?php echo $row['district_name']; ?></option>
                                            <?php
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_105; ?> *</label>
                                    <textarea name="cust_s_address" class="form-control" cols="30" rows="10" style="height:100px;"><?php echo $_SESSION['customer']['cust_s_address']; ?></textarea>
                                </div>
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_107; ?> *</label>
                                    <input type="text" class="form-control" name="cust_s_city" value="<?php echo $_SESSION['customer']['cust_s_city']; ?>">
                                </div>
                                <input type="submit" class="btn btn-primary update" value=<?php echo LANG_VALUE_5?> name="form1">
                            </div>
                        </div>
                        
                    </form>
                </div>                
            </div>
        </div>
    </div>
</div>


<?php require_once('footer.php'); ?>