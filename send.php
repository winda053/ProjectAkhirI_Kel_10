<?php
    if(isset($_POST['submit'])){
        $name   =$_POST['name'];
        $email = $_POST['email'];
        $address = $_POST['address'];
        $message = $_POST['message'];
        $no_wa = $_POST['noWa'];
        $name = "/^[a-zA-Z ]+$/";
        $emailValidation = "/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9]+(\.[a-z]{2,4})$/";
        $number = "/^[0-9]+$/";
        header("location:https://api.whatsapp.com/send?phone=$no_wa&text=Nama:%20$name%20%0DEmail:%20$email%20%0DAddress:%20$address%20%0DPesan:%20$message");
    } else {
        echo "
            <script>
                window.location=history.go(-1);
            </script>
        ";
    }

?>