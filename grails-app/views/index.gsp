<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>LECOINCOIN</title>

</head>
<body>
    <content tag="nav">

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

            <div style="display: none"  id="controllers" role="navigation">
                <h1>Available Controllers:</h1>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <div  class="Controllers">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </div>
                    </g:each>
                </ul>
            </div>
        </section>
    </div>

</body>

</html>
