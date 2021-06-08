package sistemaclinico

class SecurityFilters{
    def filters = {
        usuarioFilter(controller:'*', action:'*') {
            before = {
                if (!session.usuario
                    && (controllerName.equals('usuario') && actionName.equals('index')) ){
                    
                    redirect(controller:'usuario', action:'login')
                    return false
                }
            }
        }
    }
}