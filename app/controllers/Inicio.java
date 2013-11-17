package controllers;

import play.mvc.Controller;
import play.mvc.Result;

public class Inicio extends Controller {

	public static Result index() {

		return ok(views.html.inicio.render());

	}
}
