name := """aplicacion"""
organization := "com.example"

version := "1.0-SNAPSHOT"

libraryDependencies ++= Seq(
	guice,
	javaForms,
// libreria para el uso de Postgresql
  "org.postgresql" % "postgresql" % "9.3-1102-jdbc4",
// https://mvnrepository.com/artifact/javax.persistence/javax.persistence-api
  "javax.persistence" % "javax.persistence-api" % "2.2"
)

lazy val root = (project in file(".")).enablePlugins(PlayJava)

scalaVersion := "2.13.3"

//hospital localhost 5432 postgres pass