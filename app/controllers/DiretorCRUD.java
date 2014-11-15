package controllers;

import static play.data.Form.form;

import java.util.List;

import models.Diretor;
import play.data.Form;
import play.mvc.Controller;
import play.mvc.Result;
import scala.Option;
import securesocial.core.BasicProfile;
import securesocial.core.java.SecureSocial;
import securesocial.core.java.SecuredAction;
import securesocial.core.java.UserAwareAction;
import service.DemoUser;

public class DiretorCRUD extends Controller {

	private static final Form<Diretor> diretorForm = Form.form(Diretor.class);

	@UserAwareAction
	public static Result lista() {

		List<Diretor> diretores = Diretor.find.orderBy("nome").findList();

		DemoUser user = (DemoUser) ctx().args.get(SecureSocial.USER_KEY);

		String userName = "guest";

		if (user != null) {
			BasicProfile main = user.main;

			if (main != null) {
				Option<String> optUserName = main.fullName();
				userName = optUserName.get();
			}

		}

		return ok(views.html.diretor.render(diretores,userName));

	}

	@SecuredAction
	public static Result remover(Long id) {
		try {
			Diretor.find.ref(id).delete();
			flash("sucesso","Diretor removido com sucesso");
		} catch (Exception e) {
			flash("erro",play.i18n.Messages.get("global.erro"));
		}
		return lista();
	}

	@SecuredAction
	public static Result novoDiretor() {

		return ok(views.html.novoDiretor.render(diretorForm));

	}

	public static Result detalhar(Long id) {
		Form<Diretor> dirForm = form(Diretor.class).fill(Diretor.find.byId(id));
		return ok(views.html.alterarDiretor.render(id,dirForm));
	}

	@SecuredAction
	public static Result alterar(Long id) {
		form(Diretor.class).fill(Diretor.find.byId(id));

		Form<Diretor> alterarForm = form(Diretor.class).bindFromRequest();
		if (alterarForm.hasErrors()) { return badRequest(views.html.alterarDiretor.render(id,alterarForm)); }
		alterarForm.get().update(id);
		flash("sucesso","Diretor " + alterarForm.get().nome + " alterado com sucesso");

		return redirect(routes.DiretorCRUD.lista());

	}

	@SecuredAction
	public static Result gravar() {
		Form<Diretor> form = diretorForm.bindFromRequest();
		if (form.hasErrors()) {
			flash("erro","Foram identificados problemas no cadastro");
			return badRequest(views.html.novoDiretor.render(diretorForm));
		}
		Diretor diretor = form.get();
		diretor.save();
		// ou form.get().save();
		flash("sucesso","Registro gravado com sucesso");

		return redirect(routes.DiretorCRUD.lista());

	}

}
