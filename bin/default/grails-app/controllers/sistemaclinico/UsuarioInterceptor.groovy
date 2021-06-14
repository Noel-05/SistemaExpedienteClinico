package sistemaclinico


class UsuarioInterceptor {
    
    UsuarioInterceptor() {
        matchAll().excludes(controller: 'usuario', action: 'login')
                  .excludes(controller: 'usuario', action: 'validarLogin')
                  //.excludes(controller: 'usuario', action: 'create')
                  .excludes(controller: 'usuario', action: 'save')
                  .excludes(controller: 'usuario', action: 'usuariologin')
                  .excludes(controller: 'envioCorreo', action: 'index')
                  .excludes(controller: 'envioCorreo', action: 'send')
      }

    boolean before() { 
        if (!session.usuario){
            redirect(controller:'usuario', action:'login')
            return false
            
        }else if(
            (session.usuario.idRol.nombreRol.equals("Medico") || 
                session.usuario.idRol.nombreRol.equals("Paciente") || 
                session.usuario.idRol.nombreRol.equals("Secretaria") ) 
              && (controllerName.equals("rolUsuario") || 
                    controllerName.equals("motivo") ||
                    controllerName.equals("usuario") ) ) {
            
            redirect(controller:'usuario', action:'login')
            return false
            
        }else if(
            (session.usuario.idRol.nombreRol.equals("Paciente") || 
                session.usuario.idRol.nombreRol.equals("Secretaria") ) 
              && (controllerName.equals("tratamientoMedico") || 
                    controllerName.equals("expediente") ||
                    controllerName.equals("historialClinico") || 
                    controllerName.equals("signoVital") || 
                    controllerName.equals("consulta") ||
                    controllerName.equals("sintoma") ) ) {
            
            redirect(controller:'usuario', action:'login')
            return false
            
        }else if(
            (session.usuario.idRol.nombreRol.equals("Paciente") ) 
              && (controllerName.equals("examenClinico") || 
                    controllerName.equals("persona") || 
                    controllerName.equals("clinica") || 
                    controllerName.equals("hospital") ) ) {
            
            redirect(controller:'usuario', action:'login')
            return false
        
        }
        //(controllerName.equals("clinica") && (actionName.equals('create') || actionName.equals('show') || actionName.equals('edit') || actionName.equals('delete')) ) || 
        //(controllerName.equals("hospital") && (actionName.equals('create') || actionName.equals('show') || actionName.equals('edit') || actionName.equals('delete')) ) ) ) {
        
        return true
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
