<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
        <style>
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
    </head>
    <body>
        <a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

    <div role="navigation" style="padding: 15px;">
        <ul class="nav_items">
            <li class="item1"><a style="text-decoration: none;color: white"  href="${createLink(uri: '/')}">Acceuil</a></li>
            <li class="item2"><a style="text-decoration: none;color: white" href="${createLink(uri: '/user/create')}">Liste des utilisateurs</a></li>
        </ul>
    </div>

        <div id="create-user" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.user}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.user}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.user}" method="POST">
                <fieldset class="form">
                    <f:all bean="user"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>

    </body>
</html>
