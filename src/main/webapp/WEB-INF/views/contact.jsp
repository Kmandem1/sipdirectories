<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us - SIPLookUp</title>
    <link rel="stylesheet" href="/assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-yHjlLgTy6tmtVoDN6pxDghbAwahGHrYfJPqYhVGrAxW0TISjRm0yCmX+QmjK4wzHFdRb1q/NhZdu1nB2V4Bytw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fa;
        }

        .contact-section {
            padding: 4rem 2rem;
            max-width: 800px;
            margin: auto;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
            margin-top: 3rem;
        }

        .contact-section h1 {
            text-align: center;
            margin-bottom: 2rem;
            color: #2c3e50;
        }

        .contact-info {
            display: flex;
            flex-direction: column;
            gap: 1.2rem;
            font-size: 1.1rem;
        }

        .contact-info i {
            color: #3498db;
            margin-right: 10px;
        }

        .back-link {
            display: block;
            margin-top: 2rem;
            text-align: center;
        }

        .back-link a {
            text-decoration: none;
            color: #3498db;
            font-weight: bold;
            transition: color 0.3s;
        }

        .back-link a:hover {
            color: #2c3e50;
        }
    </style>
</head>
<body>

<div class="contact-section">
    <h1>Contact Us</h1>
    <div class="contact-info">
        <p><i class="fas fa-map-marker-alt"></i> SIPLookUp Headquarters, 123 Innovation Park, Silicon Valley, CA, USA</p>
        <p><i class="fas fa-phone-alt"></i> +1 (800) 123-4567</p>
        <p><i class="fas fa-envelope"></i> support@siplookup.com</p>
        <p><i class="fas fa-globe"></i> www.siplookup.com</p>
        <p><i class="fas fa-clock"></i> Mon - Fri: 9:00 AM - 6:00 PM</p>
    </div>

    <div class="back-link">
        <a href="/view/home"><i class="fas fa-arrow-left"></i> Back to Home</a>
    </div>
</div>

</body>
</html>
