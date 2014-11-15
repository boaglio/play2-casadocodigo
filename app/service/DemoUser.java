package service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import securesocial.core.BasicProfile;

public class DemoUser implements Serializable {

	public BasicProfile main;
	public List<BasicProfile> identities;

	private static final long serialVersionUID = -6631814398727942863L;

	public DemoUser(BasicProfile user) {
		main = user;
		identities = new ArrayList<>();
		identities.add(user);
	}

}
