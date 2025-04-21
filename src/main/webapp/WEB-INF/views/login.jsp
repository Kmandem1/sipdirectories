<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e3831a00ca.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/assets/css/style.css">
    <title>SIPLookUp</title>
</head>
<body>
    <div class="sl-container col-100 common" style="background-image: url(/assets/images/banner-1.jpg); background-position: center; background-size: cover; background-repeat: no-repeat;">
        <span id="siplookup"><a href="/">SIPLookUp</a></span>
        <div class="login col-100 common align">
            <div class="login-main col-100 common align">
                <form action="/login" method="post" class="common flex-col">
                    <h3>Login</h3>
                    <label for="mailid">Email</label>
                    <input type="email" id="mailid" name="mailid" placeholder="Your Email here" required>
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Your Password here" required>
                    <input type="submit" name="signin" id="signin" value="Login"><br>
                    <span>No account? <a href="/view/register">Register</a></span>
                    <c:if test="${not empty error}">
                    <div class="error-msg" style="color:red; margin-bottom: 10px;">
                     ${error}
                     </div>
                    </c:if>
                </form>
            </div>
        </div>
    </div>

    <script src="/assets/js/script.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
        AOS.init();
    </script>
</body>
</html>
