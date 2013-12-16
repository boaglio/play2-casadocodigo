package models;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import play.data.validation.Constraints;
import play.db.ebean.Model;

@Entity
@Table(name = "filmes_cult")
public class Filme extends Model {

	private static final long serialVersionUID = 1L;

	@Id
	public Long id;

	@Constraints.Required
	public String nome;

	public String tipo;

	public Double nota;

	public Integer duracao;

	public Integer ano;

	public String genero;

	public Integer votos;

	public String url;

	@ManyToOne
	public Diretor diretor;

	public static Model.Finder<Long,Filme> find = new Model.Finder<Long,Filme>(Long.class,Filme.class);

	public static Map<String,String> anoOptions() {

		LinkedHashMap<String,String> options = new LinkedHashMap<String,String>();
		for (int a = 1970 ; a <= 2015 ; a++) {
			options.put(String.valueOf(a),String.valueOf(a));
		}
		return options;
	}
}
