import static org.fest.assertions.Assertions.assertThat;
import static play.test.Helpers.HTMLUNIT;
import static play.test.Helpers.fakeApplication;
import static play.test.Helpers.inMemoryDatabase;
import static play.test.Helpers.running;
import static play.test.Helpers.testServer;

import org.junit.Test;

import play.libs.F.Callback;
import play.test.TestBrowser;

public class BrowserTest {

	@Test
	public void testarIndex() {
		running(testServer(3333,fakeApplication(inMemoryDatabase())),HTMLUNIT,new Callback<TestBrowser>() {

			public void invoke(TestBrowser browser) {
				browser.goTo("http://localhost:3333/");
				assertThat(browser.pageSource()).contains("melhor do cinema");
			}
		});
	}

	@Test
	public void testarLinkNovoFilme() {
		running(testServer(3333,fakeApplication()),HTMLUNIT,new Callback<TestBrowser>() {

			public void invoke(TestBrowser browser) {
				browser.goTo("http://localhost:3333/filme");
				assertThat(browser.pageSource()).contains("Filmes");
				browser.$("table td a").first().click();
				assertThat(browser.pageSource()).contains("Psicose");
			}
		});
	}
}
