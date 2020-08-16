<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create employee page</title>

    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet"/>
    <link href="/resources/default.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/resources/fonts.css" rel="stylesheet" type="text/css" media="all"/>

    <style>
        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 80%;
            margin: auto;
            padding-bottom: 10px;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #customers tr:hover {
            background-color: #ddd;
        }

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #8219e8;
            /*background-color: #46008b;*/
            color: white;
        }
    </style>
</head>
<body>

<div id="header-wrapper">
    <div id="header" class="container">
        <div id="logo">
            <h1><span class="fa fa-bolt"></span><a href="#"> </a></h1>
        </div>
    </div>
</div>
<div id="header-featured">
    <div id="banner-wrapper">
        <div id="banner" class="container">
            <h2>Редактирование данных о сотруднике</h2>
        </div>
    </div>
</div>
<div id="wrapper">
    <div id="featured-wrapper">
        <div id="featured" class="extra2 margin-btm container">
            <div class="main-title">
                <h2>Информация о сотруднике </h2>
                <br>


                <form name="employee" action="/updateEmployee" method="post" id="customers">
                    <p>Id</p>
                    <input title="Id" type="text" name="id" value="${employee.id}" size="10">
                    <br>
                    <p>Name</p>
                    <input title="Name" type="text" name="name" value="${employee.name} " size="40">
                    <br>
                    <p>Должность</p>
                    <input title="Position" type="text" name="position" value="${employee.position}" size="40">
                    <br>
                    <p>Email</p>
                    <input title="Email" type="text" name="email" value="${employee.email}" size="40">
                    <br>
                    <p>Age</p>
                    <input title="Age" type="text" name="age" value="${employee.age}" size="10">

                    <br><br><input type="submit" value="OK">
                </form>

            </div>
        </div>
    </div>
    <div id="copyright" class="container">
        <p>&copy;Akhmetova Ainura</p>
    </div>
</div>
</body>
</html>
