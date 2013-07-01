import org.scalatest._
import org.scalatest.matchers._
import main._
import math._

class MainTest extends FunSuite with ShouldMatchers{
  
  implicit val eps= 1e-10

  test("upanje mu=0 sigma=1"){
    Main.upanje(x=>1, 0, 1, 10) should be (1.77245 +- 1e-5)
    Main.upanje(x=>x, 0, 1, 10) should be (0d +- 1e-5)
    Main.upanje(x=>x*x, 0, 1, 10) should be (0.886227 +- 1e-5)
  }

  test("upanje mu=1 sigma=2"){
    Main.upanje(x=>1, 1, 2, 10) should be (3.54491 +- 1e-5)
    Main.upanje(x=>x, 1, 2, 10) should be (3.54491 +- 1e-5)
    Main.upanje(x=>x*x, 1, 2, 10) should be (10.6347 +- 1e-4)
    Main.upanje(x=>sin(x), 1, 2, 10) should be (1.09736 +- 1e-5)
  }

}


