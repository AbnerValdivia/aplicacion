package controllers;

import models.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import play.data.Form;
import play.data.FormFactory;
import play.i18n.MessagesApi;
import play.mvc.*;

import javax.inject.Inject;
import javax.inject.Singleton;
import java.util.List;
import static play.libs.Scala.asScala;

@Singleton
//Controlador de Usuario que hereda de Controller
public class UserController extends Controller {
	private final Form<UserData> form;
    private MessagesApi messagesApi;
    private final List<User> users;//db users;
	private final Logger logger = LoggerFactory.getLogger(getClass()) ;

@Inject
public UserController(FormFactory formFactory, MessagesApi messagesApi) {
    this.form = formFactory.form(UserData.class);
    this.messagesApi = messagesApi;
    //Utilizando lista en vez de BD
    this.users = com.google.common.collect.Lists.newArrayList(
            new User("Roberto","Casas","Roberts25","email1@gmail.com", "pass123","Medico"),
            new User("Pedro","Diaz","Pedz","email2@gmail.com", "pass456","Administrador"),
            new User("Sergio","Rosas","SR963","email3@gmail.com", "pass789","Recepcionista")
    );
    //"postgres://postgres:pass@127.0.0.1:5432/prueba";
    //mysql:user:pwd@database_name
}

//Direcciona al Form para crear usuarios
public Result listUsers(Http.Request request) {
        return ok(views.html.listUsers.render(form, request, messagesApi.preferred(request)));
    }

//Direcciona a la lista de usuarios
public Result pag(Http.Request request) {
        return ok(views.html.pag.render(asScala(users), request, messagesApi.preferred(request)));
    }

//Direcciona al Form de usuarios, agrega Usuario y redirecciona a la lista de usuarios
public Result createUser(Http.Request request) {
    final Form<UserData> boundForm = form.bindFromRequest(request);

    if (boundForm.hasErrors()) {
        logger.error("errors = {}", boundForm.errors());
        return badRequest(views.html.listUsers.render(boundForm, request, messagesApi.preferred(request)));
    } else {
        UserData data = boundForm.get();
        users.add(new User(data.getNombre(),data.getApellidos(),data.getUsername(),
        			data.getEmail(), data.getPassword(), data.getTipo()));
        return redirect(routes.UserController.pag())
            .flashing("info", "¡Usuario añadido!");
    }
}
}