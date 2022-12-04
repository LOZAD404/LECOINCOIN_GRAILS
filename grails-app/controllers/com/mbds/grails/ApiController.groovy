package com.mbds.grails

import grails.converters.JSON
import grails.converters.XML
import grails.plugin.springsecurity.annotation.Secured
import org.dom4j.rule.Mode
import org.springframework.http.HttpMethod

@Secured(['ROLE_USER','ROLE_ADMIN','ROLE_MODERATOR'])
class ApiController {

    def springSecurityService


    def annonce() {
        User user = springSecurityService.currentUser
        def Admin = Role.findById(1).save()
        def User = Role.findById(2).save()
        def Moderator = Role.findById(3).save()
        // On vérifie qu'un ID ait bien été fourni
        if (!params.id)
            return response.status = 400
        // On vérifie que l'id corresponde bien à une instance existante
        def annonceInstance = Annonce.get(params.id)
        if (!annonceInstance)
            return response.status = 404

        switch (request.getMethod()) {

            case "GET":
                if(user.getAuthorities()[0] == User)
                    render(status: 403,text: "Vous avez pas les permissions !")
                else
                    renderThis(request.getHeader("Accept"), annonceInstance)
                break;

            case "PUT":
                break;
            case "PATCH":
                break;
            case "DELETE":
                if (user.getAuthorities()[0] == Admin)
                    annonceInstance.delete(flush:true)
                    annonceInstance.save()
                break;
            default:
                return response.status = 405
                break;
        }
        return response.status = 406
    }

    /**
     * Collection
     * POST / GET
     */
    def annonces() {
        switch (request.getMethod()) {

        }
    }

    def user() {
        switch (request.getMethod()) {

        }
    }

    def users() {
        switch (request.getMethod()) {

        }
    }

    def illustrations(){
        switch (request.getMethod()) {

        }
    }

    def renderThis(String acceptHeader, Object object) {
        switch (acceptHeader) {
            case 'xml':
            case 'text/xml':
            case 'application/xml':
                render object as XML
                break;
            case 'json':
            case 'text/json':
            case 'application/json':
                render object as JSON
                break;
        }
    }
}
