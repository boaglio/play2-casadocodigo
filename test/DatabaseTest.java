import static org.fest.assertions.Assertions.assertThat;

import java.io.File;

import models.Diretor;
import models.Filme;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import play.Configuration;
import play.test.Helpers;

import com.typesafe.config.Config;
import com.typesafe.config.ConfigFactory;

public class DatabaseTest {

	private static Configuration additionalConfigurations;

	public static play.test.FakeApplication app;

	@BeforeClass
	public static void startApp() {

		Config additionalConfig = ConfigFactory.parseFile(new File("conf/testes.conf"));
		additionalConfigurations = new Configuration(additionalConfig);
		System.out.println(additionalConfigurations.asMap());

		app = Helpers.fakeApplication(additionalConfigurations.asMap());

		Helpers.start(app);
	}

	@AfterClass
	public static void stopApp() {
		Helpers.stop(app);
	}

	@Test
	public void testaDiretor() {

		Diretor diretor = new Diretor();
		diretor.nome = "Fernando Meireles";
		diretor.save();

		assertThat(diretor.id).isNotNull();

	}

	@Test
	public void testaFilme() {

		Filme filme = Filme.find.byId(32l);
		assertThat("A Clockwork Orange").isEqualTo(filme.nome);

	}

}
