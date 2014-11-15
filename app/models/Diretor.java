package models;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.persistence.Entity;
import javax.persistence.Id;

import play.data.validation.Constraints;
import play.db.ebean.Model;

@Entity
public class Diretor extends Model {

	private static final long serialVersionUID = 1L;

	@Id
	public Long id;

	@Constraints.Required
	public String nome;

	public static Model.Finder<Long,Diretor> find = new Model.Finder<Long,Diretor>(Long.class,Diretor.class);

	public static Map<String,String> options() {
		LinkedHashMap<String,String> options = new LinkedHashMap<String,String>();
		for (Diretor c : Diretor.find.orderBy("nome").findList()) {
			options.put(c.id.toString(),c.nome);
		}
		return options;
	}

	@Override
	public String toString() {
		return nome;
	}

}
