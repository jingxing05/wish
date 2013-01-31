dataSource {
    pooled = true
    url = 'jdbc:mysql://192.168.1.111:3306/grails?autoreconnect=trueuseUnicode=true&characterEncoding=UTF-8'
    username = 'root'
    password = 'Dx!0@9#8Nb'
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
         }
    }
    test {
        dataSource {
            dbCreate = "update"
         }
    }
    production {
        dataSource {
            dbCreate = "update"
             pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
}
