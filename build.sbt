name := "filmes"

version := "1.0-SNAPSHOT"

resolvers += Resolver.url("sbt-plugin-releases", url("http://repo.scala-sbt.org/scalasbt/sbt-plugin-releases"))(Resolver.ivyStylePatterns)

libraryDependencies ++= Seq(
  javaJdbc,
  javaEbean,
  cache,
  "postgresql" % "postgresql" % "9.1-901-1.jdbc4",
  "securesocial" %% "securesocial" % "2.1.2"
)


play.Project.playJavaSettings
