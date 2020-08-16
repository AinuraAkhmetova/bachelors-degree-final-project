<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet"/>
    <link href="/resources/default.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/resources/fonts.css" rel="stylesheet" type="text/css" media="all"/>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <style>
        .padd {
            padding-top: 10px;
            padding-bottom: 10px;
        }

        .left {
            width: 30%;
            float: left;
            border-right: 1px solid rgba(0, 0, 0, .1);
            padding: 10px 70px 10px 10px;
        }

        .middle {
            float: left;
            width: 30%;
        }

        .right {
            width: 30%;
            float: right;
            padding-left: 10px;
            border-left: 1px solid rgba(0, 0, 0, .1);
        }

        .ebox65right {
            width: 63%;
            float: right;
        }

        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 80%;
            margin: auto;
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
            background-color: #4CAF50;
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
            <h2>Информация о сотруднике</h2>
        </div>
    </div>
</div>


<div id="wrapper">
    <div id="featured-wrapper">
        <div id="featured" class="extra2 margin-btm container">
            <div class="main-title">
                <h2>${employee.name}</h2>
                <span class="byline">Системный администратор</span></div>

            <div class="left">
                <h2>Ключевая информация о сотруднике</h2>
                <table id="customers" style="padding-bottom: 10px">
                    <tr>
                        <td><span style="font-weight:bold">Id</span></td>
                        <td>${employee.id}</td>
                    </tr>
                    <tr>
                        <td>Фамилия Имя</td>
                        <td>${employee.name}</td>
                    </tr>
                    <tr>
                        <td>Адрес эл. почты</td>
                        <td>${employee.email}</td>
                    </tr>
                    <tr>
                        <td>Возраст</td>
                        <td>${employee.age}</td>
                    </tr>
                </table>
                <br><br><br>
                <div class="main-title">
                    <span class="byline"> Показатели сотрудника за 2020 год </span><br>
                    <table>
                        <tr>
                            <td>Мотив (компетенции ценностного выбора)</td>
                            <td>45</td>
                        </tr>
                        <tr>
                            <td>Цель (компетенции планирования и организации деятельности)</td>
                            <td>39</td>
                        </tr>
                        <tr>
                            <td>Действия (компетенции осуществления деятельности)</td>
                            <td>44</td>
                        </tr>
                        <tr>
                            <td>Саморазвитие (компетенции самоуправления и саморазвития субъекта в деятельности)</td>
                            <td>31</td>
                        </tr>
                        <tr>
                            <td>Предмет (компетенции управления результатами деятельности)</td>
                            <td>34</td>
                        </tr>
                        <tr>
                            <td>Последствия и эффекты (компетенции оценки и учета последствий и эффектов деятельности)
                            </td>
                            <td>39</td>
                        </tr>
                    </table>

                    <a href="/employees">Назад к списку сотрудников</a>
                </div>
            </div>
            <div class="ebox65right">
                <div class="title">
                    <h2>Траектория развития компетенций по группам</h2>

                    <canvas id="myChart" width="240" , height="=240"></canvas>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
                    <script>
                        var ctx = document.getElementById('myChart').getContext('2d');
                        var chart = new Chart(ctx, {
                            // The type of chart we want to create
                            type: 'radar',

                            // The data for our dataset
                            data: {
                                labels: ["Ценностный выбор",
                                    "Планирование и организация",
                                    "Осуществление деятельности",
                                    "Самоуправление и саморазвитие",
                                    "Управление результатами",
                                    "Оценка и учет последствий",
                                ],
                                datasets: [{
                                    label: "2019",
                                    backgroundColor: 'rgba(0, 200, 132,0.1)',
                                    borderColor: 'rgb(0, 200, 132)',
                                    data: [13, 17, 14, 14, 21, 16],
                                }, {
                                    label: "2020",
                                    backgroundColor: 'rgba(0, 0, 132,0.1)',
                                    borderColor: 'rgb(0, 0, 132)',
                                    data: [45, 39, 44, 31, 34, 39],
                                }]
                            },

                            // Configuration options go here
                            options: {
                                scale: {
                                    ticks: {
                                        min: 0, max: 100,
                                    },
                                    pointLabels: {
                                        fontSize: 12,
                                    },
                                }
                            }
                        });
                    </script>
                </div>
            </div>
        </div>

        <div id="featured" class="extra2 margin-btm container">
            <h2>Траектория развития компетенций сотрудника в развёрнутом виде</h2>
            <canvas id="myChart2" width="290" , height="=290"></canvas>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
            <script>
                var ctx2 = document.getElementById('myChart2').getContext('2d');
                var chart2 = new Chart(ctx2, {
                    // The type of chart we want to createmysql.infoschema
                    type: 'radar',

                    // The data for our dataset
                    data: {

                        labels: [
                            "Ответственная и продуктивная работа на благо родного края",
                            "Социальное и духовно-нравственное развитие",
                            "Продуктивные и ответственные поступки в глобальном мире",
                            "Принятие и несение ответственности",
                            "Принятие решений",
                            "Разработка планов и проектов",
                            "Работа в команде",
                            "Осуществление коммуникации",
                            "Работа с информацией",
                            "Решение нематематических задач математическимим средствами",
                            "Применение информационных технологий",
                            "Создание новой информации (креативность)",
                            "Комплексное решение сложных многофакторных проблем",
                            "Приобретение знания в течение всей жизни",
                            "Профессионально-личное развитие",
                            "Сохранение и укрепление здоровья",
                            "Управление качеством процессов и результатов деятельности",
                            "Социально ответственное предпринимательство",
                            "Обеспечение информационной безопасности",
                            "Осуществление экологической деятельности"
                        ],


                        datasets: [{
                            label: "2019",
                            backgroundColor: 'rgba(0, 200, 132,0.1)',
                            borderColor: 'rgb(0, 200, 132)',
                            data: [
                                13,
                                20,
                                5,
                                7,
                                20,
                                25,
                                4,
                                12,
                                18,
                                23,
                                6,
                                28,
                                5,
                                13,
                                9,
                                19,
                                21,
                                20,
                                11,
                                20
                            ],
                        }, {
                            label: "2020",
                            backgroundColor: 'rgba(0, 0, 132,0.1)',
                            borderColor: 'rgb(0, 0, 132)',
                            data: [44,
                                36,
                                56,
                                48,
                                32,
                                39,
                                58,
                                25,
                                56,
                                59,
                                32,
                                36,
                                48,
                                28,
                                30,
                                36,
                                43,
                                26,
                                26,
                                52,],
                        }]
                    },

                    // Configuration options go here

                    options: {
                        scale: {
                            ticks: {
                                min: 0, max: 100,
                            },
                            pointLabels: {
                                fontSize: 14,
                            },
                        }
                    }
                });

            </script>
        </div>
        <h2>Рекомендации для сотрудника </h2>
        <span class="byline">составлены по трем компетенциям с наименьшими достижениями</span>
        <br><br>
        <div class="left">
            <h3>
                Социально ответственное предпринимательство
            </h3><br>
            <a class="padd" href="https://cat.2035.university/rall/course/387/">Организация и развитие
                предпринимательской деятельности в условиях цифровой экономики</a><br><br>
            <a class="padd" href="https://cat.2035.university/rall/course/5167/">Взрывной рост в организации</a><br><br>
            <a class="padd" href="https://cat.2035.university/rall/course/562/">Управление цифровой трансформацией
                предприятия</a><br><br>

        </div>
        <div class="middle">
            <h3>
                Обеспечение информационной безопасности
            </h3><br>
            <a class="padd" href="https://cat.2035.university/rall/course/405/">Обработка и безопасность персональных
                данных в информационных системах и сети интернет</a><br><br>
            <a class="padd" href="https://cat.2035.university/rall/course/564/">Обеспечение безопасности персональных
                данных при их обработке в информационных системах персональных данных</a><br><br>
            <a class="padd" href="https://cat.2035.university/rall/course/132/">Анализ безопасности веб-проектов</a><br><br>
        </div>
        <div class="right">
            <h3>
                Осуществление коммуникации
            </h3><br>
            <a class="padd" href="https://cat.2035.university/rall/course/1338/">Креативная коммуникация: методы и
                инструменты</a><br><br>
            <a class="padd" href="https://cat.2035.university/rall/course/5057/">Коммуникации для технологических
                компаний</a><br><br>
            <a class="padd" href="https://cat.2035.university/rall/course/5122/">Основы успешного делового
                общения</a><br><br>
        </div>
    </div>
</div>
<div id="copyright" class="container">
    <p>&copy;Akhmetova Ainura</p>
</div>
</body>
</html>

