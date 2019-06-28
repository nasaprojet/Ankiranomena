package config;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

public class ConfigBDD {
	private static final String BUNDLE_NAME = "config.bdd_conf"; //$NON-NLS-1$

	private static final ResourceBundle RESOURCE_BUNDLE = ResourceBundle.getBundle(BUNDLE_NAME);

	private ConfigBDD() {
	}

	public static String getString(String key) {
		try {
			return RESOURCE_BUNDLE.getString(key);
		} catch (MissingResourceException e) {
			return '!' + key + '!';
		}
	}
}
