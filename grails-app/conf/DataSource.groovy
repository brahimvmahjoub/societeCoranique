dataSource {
	pooled = true
	driverClassName = "com.mysql.jdbc.Driver"
	dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
}
hibernate {
	cache.use_second_level_cache = true
	cache.use_query_cache = true
	cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "update" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost/DEVDBNAME?useUnicode=yes&characterEncoding=UTF-8"
			username = "root"
			password = ""
		}
		hibernate { show_sql = true }
	}
	test {
		dataSource {
			dbCreate = "create-drop" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost/TESTDBNAME?useUnicode=yes&characterEncoding=UTF-8"
			username = "root"
			password = ""
		}
	}
	production {
		dataSource {
			dbCreate = "update"
			url = "jdbc:mysql://localhost/PRODDBNAME?useUnicode=yes&characterEncoding=UTF-8"
			username = "root"
			password = ""
		}
	}
}