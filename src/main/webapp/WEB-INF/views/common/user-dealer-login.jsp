<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="/css/user-dealer-login-signup.css">
    <title>Document</title>
</head>

<body>
 
    <br>
    <br>
    <div class="cont">

        <div class="form sign-in">
            ${msg}
           
            ${error}
            <form action="userdealerlogin" method="post">
                <input type="hidden" name="val" value="${val}">
                <input type="hidden" name="mname" value="${mname}">
                <input type="hidden" name="vname" value="${vname}">
                <h2>Welcome</h2>
                <label>
                    <span>Email</span>
                    <input type="email" name="email"/>
                </label>
                <label>
                    <span>Password</span>
                    <input type="password" name="password"/>
                </label>
                <p class="forgot-pass">Forgot password?</p>
                <button type="submit" class="submit">Sign In</button>
            </form>
        </div>
        <div class="sub-cont">
            <div class="img">
                <div class="img__text m--up">

                    <h3>Don't have an account? Please Sign up!<h3>
                </div>
                <div class="img__text m--in">

                    <h3>If you already has an account, just sign in.<h3>
                </div>
                <div class="img__btn">
                    <span class="m--up">Sign Up</span>
                    <span class="m--in">Sign In</span>
                </div>
            </div>
            <div class="form sign-up">
                <form action="registeruser" method="post">
                    <input type="hidden" name="val" value="${val}">
                    <input type="hidden" name="mname" value="${mname}">
                    <input type="hidden" name="vname" value="${vname}">
                    <h2>Create your Account</h2>
                    <label>
                        <span>Name</span>
                        <input type="text" name="userName"/>
                    </label>
                    <label>
                        <span>Email</span>
                        <input type="email" name="userEmail"/>
                    </label>
                    <label>
                        <span>Password</span>
                        <input type="password" name="userPassword"/>
                    </label>
                    <label>
                        <span>Phone</span>
                        <input type="text" name="userPhoneNumber"/>
                    </label>
                    <label>
                        <span>Address</span>
                        <input type="textarea" name="userAddress"/>
                    </label>
                    <button type="submit" class="submit">Sign Up</button>
                </form>
            </div>
        </div>
    </div>

    <script>
        document.querySelector('.img__btn').addEventListener('click', function () {
            document.querySelector('.cont').classList.toggle('s--signup');
        });
    </script>
</body>

</html>