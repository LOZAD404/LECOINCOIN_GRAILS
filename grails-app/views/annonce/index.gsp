<!DOCTYPE html>
<html>
    <head>
        <style>
        {
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            font: inherit;
            vertical-align: baseline;
            outline: none;
            -webkit-font-smoothing: antialiased;
            -webkit-text-size-adjust: 100%;
            -ms-text-size-adjust: 100%;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }
        html { overflow-y: scroll; }
        body {
            background: #eee url('https://i.imgur.com/eeQeRmk.png'); /* https://subtlepatterns.com/weave/ */
            font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
            font-size: 62.5%;
            color: #585858;
            padding: 22px 10px;
            padding-bottom: 55px;
        }
        br { display: block; line-height: 1.6em; }

        article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section { display: block; }
        ol, ul { list-style: none; }

        input, textarea {
            -webkit-font-smoothing: antialiased;
            -webkit-text-size-adjust: 100%;
            -ms-text-size-adjust: 100%;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            outline: none;
        }

        blockquote, q { quotes: none; }
        blockquote:before, blockquote:after, q:before, q:after { content: ''; content: none; }
        strong, b { font-weight: bold; }

        table { border-collapse: collapse; border-spacing: 0; }
        img { border: 0; max-width: 100%; }

        h1 {
            font-family: 'Amarante', Tahoma, sans-serif;
            font-weight: bold;
            font-size: 3.6em;
            line-height: 1.7em;
            margin-bottom: 10px;
            text-align: center;
        }


        /** page structure **/
        #wrapper {
            display: block;
            background: #fff;
            margin: 0 auto;
            padding: 10px 17px;
        }

        #keywords {
            margin: 0 auto;
            font-size: 16px;
            margin-bottom: 15px;
        }
        #keywords thead {
            width: 20px;
            height: 50px;
            cursor: pointer;
            color: black;
            background: white;
        }
        #keywords thead tr th {
            width : 555px;
            font-weight: bold;
            padding: 12px 30px;
            padding-left: 42px;
        }

        .nav_items{
            list-style: none;
            display: flex;
        }
        .item1,.item2{
            margin-left: 10px;
            border-radius: 15px;
            background-color: black;
            padding: 7px 10px;
            font-size: 15px;
            color: white;
        }
        .item1:hover,.item2:hover{
            box-shadow: 0 1px 30px 0 black;
        }
        </style>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

        <a href="#list-annonce" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

        <div role="navigation" style="padding: 15px;">
            <ul class="nav_items">
                <li class="item1"><a style="text-decoration: none;color: white"  href="${createLink(uri: '/')}">Acceuil</a></li>
                <li class="item2"><a style="text-decoration: none;color: white" href="${createLink(uri: '/annonce/create')}">Ajouter une annonce</a></li>
            </ul>
        </div>

    <div class="container">
        <tbody>
        <div id="wrapper">
            <h1>Annonce List</h1>
            <table id="keywords">
                <thead>
                <tr>
                    <th><span>Title</span></th>
                    <th><span>Description</span></th>
                    <th><span>Price</span></th>
                    <th><span>Active</span></th>
                    <th><span>Illustrations</span></th>
                    <th><span>Author</span></th>
                </tr>
                <g:each in="${annonceList}" var="annonces">
                <tr>
                    <td>${annonces.title}</td>
                    <td>${annonces.description}</td>
                    <td>${annonces.price}</td>
                    <td>${annonces.active}</td>
                    <td><g:each in="${annonces.illustrations}" var="image">
                        <img width="15%" src="${createLinkTo(dir: 'images',file: image.filename)}" alt="illustration" onclick="illustration(${image.id})">
                    </g:each></td>
                    <td>${annonces.author}</td>
                </tr></g:each>
                </thead>
            </table>
        </div>
        </tbody>
        </div>
    </body>
</html>