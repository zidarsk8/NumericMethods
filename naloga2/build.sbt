name := "numeric"

version := "1.0.0"

scalaVersion := "2.10.1"


libraryDependencies += "org.scalatest" %% "scalatest" % "2.0.M6-SNAP4" % "test"

libraryDependencies  ++= Seq(
            // other dependencies here
            // pick and choose:
            "org.scalanlp" %% "breeze-math" % "0.2.3",
            "org.scalanlp" %% "breeze-learn" % "0.2.3",
            "org.scalanlp" %% "breeze-process" % "0.2.3",
            "org.scalanlp" %% "breeze-viz" % "0.2.3"
)

resolvers ++= Seq(
            // other resolvers here
            // if you want to use snapshot builds (currently 0.3-SNAPSHOT), use this.
            "Sonatype Snapshots" at "https://oss.sonatype.org/content/repositories/snapshots/"
)
