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
              && controllerName.equals("rolUsuario")) {
            
            redirect(controller:'usuario', action:'login')
            return false
            
        }else if(session.usuario.idRol.nombreRol.equals("Paciente") && controllerName.equals("usuario")) {
            
            redirect(controller:'usuario', action:'login')
            return false
            
        }
        
        return true
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
