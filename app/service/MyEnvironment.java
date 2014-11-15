package service;

import securesocial.core.services.UserService;

@SuppressWarnings("rawtypes")
public class MyEnvironment extends securesocial.core.RuntimeEnvironment.Default {

	private final UserService<?> userService = new InMemoryUserService();

	public MyEnvironment() {}

	@Override
	public UserService<?> userService() {
		return userService;
	}

}
