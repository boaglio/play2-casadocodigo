package controllers;

import java.util.List;

import models.Filme;
import play.libs.Json;
import play.mvc.Controller;
import play.mvc.Result;

public class Services extends Controller {

	public static Result listaFilmesEmJSON() {

		List<Filme> filmes = getFilmesOrderByAno();
		String resultado = Json.toJson(filmes).toString();
		return ok(resultado.substring(1,resultado.length() - 2));

	}

	public static Result listaFilmesEmXML() {

		List<Filme> filmes = getFilmesOrderByAno();
		return ok("<message \"status\"=\"OK\">  " + filmes.toString() + "</message>");

	}

	public static Result listaFilmes(String tipo) {

		if (tipo.equalsIgnoreCase("xml")) {
			return listaFilmesEmXML();
		} else {
			return listaFilmesEmJSON();
		}

	}

	public static Result curtir(Long filmeId) {

		return ok();
	}

	private static List<Filme> getFilmesOrderByAno() {
		return Filme.find.where().orderBy("ano").findList();
	}

}
