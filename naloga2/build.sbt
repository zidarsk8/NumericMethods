name := "numeric"

version := "1.0.0"

scalaVersion := "2.10.1"

libraryDependencies += "org.scalatest" %% "scalatest" % "2.0.M6-SNAP4" % "test"

libraryDependencies  ++= Seq(
            "org.scalanlp" %% "breeze-math" % "0.2.3",
            "org.scalanlp" %% "breeze-learn" % "0.2.3",
            "org.scalanlp" %% "breeze-process" % "0.2.3",
            "org.scalanlp" %% "breeze-viz" % "0.2.3"
)

resolvers ++= Seq(
            "Sonatype Snapshots" at "https://oss.sonatype.org/content/repositories/snapshots/"
)

