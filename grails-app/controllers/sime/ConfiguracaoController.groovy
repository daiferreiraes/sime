package sime

import org.springframework.security.access.annotation.Secured
@Secured('isFullyAuthenticated()')

class ConfiguracaoController {

    def index() { }
}
