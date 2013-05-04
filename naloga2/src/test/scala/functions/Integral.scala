import org.scalatest._
import org.scalatest.matchers._
import main.functions.Integral._
import math._

class IntegralTest extends FunSuite with ShouldMatchers{
  
  implicit val eps= 1e-10

  test("trapezoidal rule"){
    //integrate 1/x^2 from 1 to 2
    trapezoid(10000)(x=>1/pow(x,2))(1,2) should be (0.5d +- 1e-4)
    //integrate 1/x^2 +5x^5-12x^3 from 1 to 2
    trapezoid(100000)(x=>1/pow(x,2)+5*pow(x,5)-12*pow(x,3))(1,2) should be (8d +- 1e-2)
  }

  test("trapezoidal: integrate e^(-x^2) x^2 from -1 to 1"){
    def f(x:Double) = pow(E,-pow(x,2))*pow(x,2)
    trapezoid(100000)(f)(-1,1) should be (0.378 +- 1e-3)
  }

}

