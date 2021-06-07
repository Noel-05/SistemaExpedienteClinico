<!doctype html>
<html>
    <head>
        <title>Pagina No Encontrada.</title>
        <meta name="layout" content="base">
        <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
    </head>
    <body>
        <ul class="errors">
            </br></br></br>
            <h3 style="color:red"><strong><i>ERROR 404!!!</i></strong></h3></br>
            <h5><li><strong>Error:</strong> Page Not Found (404)</li></h3>
            <h5><li><strong>Path:</strong> ${request.forwardURI}</li></h5>
        </ul>
    </body>
</html>
