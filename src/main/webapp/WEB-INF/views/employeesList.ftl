<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <title>Employee List</title>

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
        <div id="menu">
            <ul>
                <li class="current_page_item"><a href="/" accesskey="1" title="">Главная</a></li>
                <li><a href="#" accesskey="2" title="">Компетенции цифровой экономики</a></li>
                <li><a href="/employees" accesskey="3" title="">Сотрудники</a></li>
                <li><a href="#" accesskey="4" title="">Траектории развития сотрудников</a></li>
                <li><a href="/" accesskey="5" title="">О системе</a></li>
            </ul>
        </div>
    </div>
</div>
<div id="header-featured">
    <div id="banner-wrapper">
        <div id="banner" class="container">
            <h2>Список сотрудников предприятия</h2>
        </div>
    </div>
</div>
<div id="wrapper">
    <div id="featured-wrapper">
        <div id="featured" class="extra2 margin-btm container">
            <div class="main-title">
                <h2>Сотрудники:</h2>
                <br>
                <table id="customers">
                    <tr>
                        <th>Id</th>
                        <th>Фамилия Имя</th>
                        <th>Должность</th>
                        <th>Адрес эл. почты</th>
                        <th>Возраст</th>
                        <th>Удалить</th>
                        <th>Редактировать</th>
                    </tr>
                    <#list employees as employee>
                        <tr>
                            <td><a href="/employee/${employee.id}">${employee.id}</a></td>
                            <td>${employee.name}</td>
                            <td>${employee.position}</td>
                            <td>${employee.email}</td>
                            <td>${employee.age}</td>
                            <td><a href="/delete/${employee.id}">---</a></td>
                            <td><a href="/update/${employee.id}">***</a></td>
                        </tr>
                    </#list>
                </table>
                <a href="/addEmployee">Добавить пользователя</a>
            </div>
        </div>
    </div>
    <div id="copyright" class="container">
        <p>&copy;Akhmetova Ainura</p>
    </div>
</div>
</body>
</html>