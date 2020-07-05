package controllers;

import play.mvc.*;

public class HomeController extends Controller {
//Direcciona a la página index
    public Result index() {
        return ok(views.html.index.render());
    }
}