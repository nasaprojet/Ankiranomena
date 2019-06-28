package config;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

public class ServletURL {
	private static final String BUNDLE_NAME = "config.base_url"; //$NON-NLS-1$

	private static final ResourceBundle RESOURCE_BUNDLE = ResourceBundle.getBundle(BUNDLE_NAME);
	private static final String CATALINA_HOME = System.getProperty("catalina.base");

	private ServletURL() {
	}

	public static String getString(String key) {
		try {
			if (key.contains("PATH"))
				return CATALINA_HOME + RESOURCE_BUNDLE.getString(key);
			else
				return RESOURCE_BUNDLE.getString(key);
		} catch (MissingResourceException e) {
			return '!' + key + '!';
		}
	}
}
