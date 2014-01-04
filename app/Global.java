import static play.mvc.Results.notFound;
import play.Application;
import play.GlobalSettings;
import play.libs.F.Promise;
import play.mvc.Http.RequestHeader;
import play.mvc.SimpleResult;

public class Global extends GlobalSettings {

	@Override
	public Promise<SimpleResult> onHandlerNotFound(RequestHeader request) {
		return Promise.<SimpleResult> pure(notFound(views.html.paginaNaoEncontrada.render(request.uri())));
	}

	@Override
	public void onStart(Application app) {

		System.out.println("Top 100 filmes cult no ar!");

	}
}
