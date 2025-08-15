allprojects {
	repositories {
		maven {
			url = uri("https://maven.proxy.ustclug.org/maven2")
		}
		maven {
			url = uri("https://mirrors.163.com/maven/repository/maven-public")
		}
		maven {
			url = uri("https://maven.aliyun.com/repository/public")
		}
		// Fabric-Loom
		maven {
			url = uri("https://repository.hanbings.io/proxy")
		}
		mavenLocal()
		mavenCentral()
	}
}
