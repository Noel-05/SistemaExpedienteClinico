<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        
    </head>
    
    <body>
        <h1>Ejemplo Login</h1>
        
        <g:form controller="login" action="login">
            <div>
                <label>Usuario: </label>
                <input type="text" name="username"/>
                <label>Password: </label>
                <input type="password" name="pass"/>
                <label>&nbsp; </label>
                <input type="submit" value="Login"/>
            </div>
        </g:form>
    </body>
</html>
