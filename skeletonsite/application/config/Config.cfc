component extends="preside.system.config.Config" {

	public void function configure() {
		super.configure();

		settings.preside_admin_path  = "demo_admin";
		settings.system_user         = "sysadmin";
		settings.default_locale      = "en";

		settings.default_log_name    = "demo";
		settings.default_log_level   = "information";
		settings.sql_log_name        = "demo";
		settings.sql_log_level       = "information";

		settings.ckeditor.defaults.stylesheets.append( "css-bootstrap" );
		settings.ckeditor.defaults.stylesheets.append( "css-layout" );

		settings.features.websiteUsers.enabled = false;
	}
}
