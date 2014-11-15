import static play.mvc.Results.notFound;

import java.util.HashMap;

import play.Application;
import play.GlobalSettings;
import play.Logger;
import play.libs.F.Promise;
import play.mvc.Http.RequestHeader;
import play.mvc.Result;
import securesocial.core.RuntimeEnvironment;
import service.MyEnvironment;

public class Global extends GlobalSettings {

	@Override
	public Promise<Result> onHandlerNotFound(RequestHeader request) {
		return Promise.<Result> pure(notFound(views.html.paginaNaoEncontrada.render(request.uri())));
	}

	@Override
	public void onStart(Application app) {

		System.out.println("Top 100 filmes cult no ar!");

	}

	private final RuntimeEnvironment env = new MyEnvironment();
	private final HashMap<String,Object> instances = new HashMap<>();

	@Override
	public <A> A getControllerInstance(Class<A> controllerClass) throws Exception {
		A result = (A) instances.get(controllerClass.getName());
		Logger.debug("result = " + result);
		if (result == null) {
			Logger.debug("creating controller: " + controllerClass.getName());
			try {
				result = controllerClass.getDeclaredConstructor(RuntimeEnvironment.class).newInstance(env);
			} catch (NoSuchMethodException e) {
				// the controller does not receive a RuntimeEnvironment, delegate creation to base class.
				result = super.getControllerInstance(controllerClass);
			}
			instances.put(controllerClass.getName(),result);
		}
		return result;
	}

}
