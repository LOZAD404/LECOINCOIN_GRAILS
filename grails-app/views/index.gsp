<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>LECOINCOIN</title>
</head>
<body>
    <content tag="nav">
        <li class="">
            <a href="#" role="button" aria-haspopup="true" aria-expanded="false">Annonces<span class="caret"></span></a>

        </li>
        <li class="">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Utilisateurs<span class="caret"></span></a>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Connexion<span class="caret"></span></a>
        </li>
    </content>

    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>
        </div>
    </div>

    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Bienvenue sur LECOINCOIN</h1>

            <p>
                Lecoincoin est une société familiale qui existe depuis 1940, elle est gérée par Mr Gerard
                Lecoincoin et Mme Mathilde Lecoincoin.
                Lecoincoin est une entreprise de dépôt vente touchant à tout ce qui peut se vendre ou s’acheter.
                Lecoincoin a raté le tournant du numérique, il y a quelques décennies et aimerait vraiment pouvoir avoir une présence en ligne pour diffuser ses annonces.
            </p>

            <div id="controllers" role="navigation">
                <h2>Available Controllers:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </li>
                    </g:each>
                </ul>
            </div>
        </section>
    </div>

</body>
</html>
