package controllers;

import static play.data.Form.form;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;

import models.Diretor;
import models.Filme;
import play.Play;
import play.data.Form;
import play.mvc.Controller;
import play.mvc.Http.MultipartFormData;
import play.mvc.Http.MultipartFormData.FilePart;
import play.mvc.Result;

public class FilmeCRUD extends Controller {

	private static final Form<Filme> filmeForm = Form.form(Filme.class);

	public static Result lista() {
		List<Filme> filmes = Filme.find.where().orderBy("ano").findList();
		return ok(views.html.filme.render(filmes));
	}

	public static Result remover(Long id) {
		Filme.find.ref(id).delete();
		flash("sucesso","Filme removido com sucesso");
		return lista();
	}

	public static Result novoFilme() {

		List<Diretor> diretores = Diretor.find.findList();

		return ok(views.html.novoFilme.render(filmeForm,diretores));

	}

	public static Result detalhar(Long id) {
		Form<Filme> filmeForm = form(Filme.class).fill(Filme.find.byId(id));
		return ok(views.html.alterarFilme.render(id,filmeForm));
	}

	public static Result alterar(Long id) {

		form(Filme.class).fill(Filme.find.byId(id));

		Form<Filme> alterarForm = form(Filme.class).bindFromRequest();
		if (alterarForm.hasErrors()) { return badRequest(views.html.alterarFilme.render(id,alterarForm)); }
		alterarForm.get().update(id);
		flash("sucesso","Filme " + alterarForm.get().nome + " alterado com sucesso");

		return redirect(routes.FilmeCRUD.lista());

	}

	public static Result gravar() {

		Form<Filme> form = filmeForm.bindFromRequest();
		if (form.hasErrors()) {

			flash("erro","Foram identificados problemas no cadastro de filme");

			List<Diretor> diretores = Diretor.find.findList();

			return ok(views.html.novoFilme.render(filmeForm,diretores));
		}

		form.get().save();

		flash("sucesso","Registro gravado com sucesso");

		return redirect(routes.FilmeCRUD.lista());

	}

	public static Result upload() {

		MultipartFormData body = request().body().asMultipartFormData();
		FilePart picture = body.getFile("picture");
		String extensaoPadraoDeImagens = Play.application().configuration().getString("extensaoPadraoDeImagens");
		if (picture != null) {

			String filmeId = form().bindFromRequest().get("filmeId");
			String imagem = filmeId + extensaoPadraoDeImagens;
			String contentType = picture.getContentType();
			File file = picture.getFile();

			String diretorioDeImagens = Play.application().configuration().getString("diretorioDeImagens");
			String contentTypePadraoDeImagens = Play.application().configuration().getString("contentTypePadraoDeImagens");

			if (contentType.equals(contentTypePadraoDeImagens)) {

				file.renameTo(new File(diretorioDeImagens,imagem));
				return ok(views.html.upload.render("Arquivo  \"" + imagem + "\" do tipo [" + contentType + "] foi carregado com sucesso !"));

			} else {

				return ok(views.html.upload.render("Imagens apenas no formato \"" + contentTypePadraoDeImagens + "\" serão aceitas!"));

			}

		} else {
			flash("error","Erro ao fazer upload");
			return redirect(routes.Application.index());
		}
	}

	public static Result imagem(Long id) throws IOException {

		String diretorioDeImagens = Play.application().configuration().getString("diretorioDeImagens");

		File imagem = new File(diretorioDeImagens,id + ".png");

		return ok(new FileInputStream(imagem));

	}

}
