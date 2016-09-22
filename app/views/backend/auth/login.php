
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Webdeponline.com</title>
        <link href="http://webdep.local/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script type="text/javascript" src="http://webdep.local/vendor/jquery/jquery-2.2.3.min.js"></script>
        <script type="text/javascript" src="http://webdep.local/vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--[if lt IE 9]>
            <script src="http://webdep.local/vendor/bootstrap/js/html5shiv.js" type="text/javascript"></script>
            <script src="http://webdep.local/vendor/bootstrap/js/respond.min.js" type="text/javascript"></script>
        <![endif]-->
        <style>
            * {
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                outline: none;
            }

            .form-control {
                position: relative;
                font-size: 16px;
                height: auto;
                padding: 10px;
                &:focus {
                    z-index: 2;
                }
            }

            body {
                background: url(../assets/backend/img/maxresdefault.jpg) no-repeat center center fixed;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }

            .login-form {
                margin-top: 60px;
            }
            .has-error {
                border: 1px solid #f00;
            }
            #login-form {
                color: #5d5d5d;
                background: #f2f2f2;
                padding: 26px;
                border-radius: 10px;
                -moz-border-radius: 10px;
                -webkit-border-radius: 10px;
            }
            #login-form .logo {
                display: block;
                margin: 0 auto;
                margin-bottom: 35px;
            }
            #login-form input,
            #login-form button {
                font-size: 18px;
                margin: 16px 0;
            }
            #login-form .capcha_input{
                font-size: 18px;
                margin: 16px 0;
                width: 50%;
                float: left;
                margin: 0 0 16px 5px !important;
            }
            #login-form .capcha_image {  
                float: left;
            }
            #login-form > div {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row" id="pwd-container">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <section class="login-form">
                        <form method="post" name="login-form" id="login-form" autocomplete="off">
                            <h2 class="text-center">BÁN HOA</h2>
                            <small class="help-block pull-left" style="color: red;">
                                <?php if(isset($msg)) echo $msg;?>
                            </small>
                            <div >
                                <input type="text" name="u" value="<?php echo set_value('u',"");?>" class="form-control input-lg <?php if(isset($error['u'])) echo 'has-error';?>" placeholder="Username"/>
                            </div>
                            <div>
                                <input type="password" class="form-control input-lg <?php if(isset($error['p'])) echo 'has-error';?>" name="p" value="" placeholder="Password" />
                            </div>
           
                            <button type="submit" name="submit" value="submit" class="btn btn-lg btn-primary btn-block">Login</button>                          
                            
                        </form>
                    </section>  
                </div>
            </div>
        </div>
    </body>
</html>