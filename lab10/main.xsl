<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/company">
        <html>
            <head>
                <title>Практична робота 10</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 0;
                        padding: 0;
                        background-color: rgb(161, 159, 159);
                    }
                    header {
                        background: blue;
                        color: black;
                        padding: 10px 0;
                        text-align: center;
                    }
                    .container {
                        display: flex;
                        width: 100%;
                    }
                    .sidebar {
                        width: 200px;
                        background: #444;
                        padding: 15px;
                        color: #fff;
                    }
                    .sidebar a {
                        color: #fff;
                        text-decoration: none;
                        display: block;
                        margin: 5px 0;
                    }
                    .sidebar a:hover {
                        background: #555;
                    }
                    .content {
                        flex: 1;
                        padding: 20px;
                        background: rgb(161, 159, 159);
                        box-shadow: 0 0 10px rgba(0,0,0,0.1);
                    }
                    footer {
                        text-align: center;
                        padding: 10px 0;
                        background: blue;
                        color: #fff;
                        position: relative;
                        bottom: 0;
                        width: 100%;
                        text-align: left;
                    }
                    ul {
                        list-style-type: none;
                        padding: 0;
                    }
                    li {
                        padding: 8px 0;
                        border-bottom: 1px solid #ddd;
                    }
                    li span {
                        font-weight: bold;
                    }
                </style>
            </head>
            <body>
                <header>
                    <h1>Кровля</h1>
                </header>
                <div class="container">
                    <div class="sidebar">
                        <h2>Головне меню</h2>
                        <a href="company.xml">Контакти</a>
                        <a href="count.xml">Розрахунковий</a>
                        <a href="analyt.xml">Аналітичний</a>
                    </div>
                    <div class="content">
                        <h2>Контакти компанії: Кровля</h2>
                        <ul>
                            <li><span>Адреса:</span> <xsl:value-of select="adress"/></li>
                            <li><span>Телефон:</span> <xsl:value-of select="telefon"/></li>
                            <li><span>Електронна пошта:</span> <xsl:value-of select="mail"/></li>
                        </ul>
                    </div>
                </div>
                <footer>
                    <p>Практичне завдання 10</p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
