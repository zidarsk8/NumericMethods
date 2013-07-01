import org.scalatest._
import org.scalatest.matchers._
import main.functions.Roots._
import math._

class RootsTest extends FunSuite with ShouldMatchers{
  
  implicit val eps:BigDecimal = 1e-15

  test("bisection of n^2-1 between 0 and 2"){
    def f(n:BigDecimal) = n*n - 1
    val zero = bisection(f,0,2)
    f(zero) should be( BigDecimal(0) +- eps)
  }
  
  test("bisection of n^2-2 between 0 and 2"){
    def f(n:BigDecimal) = n*n - 2
    val zero = bisection(f,0,2)
    f(zero) should be( BigDecimal(0) +- eps)
  }
 
  test("bisection of n^2-5 from 0 on "){
    def f(n:BigDecimal) = n*n - 2
    val zero = bisection(f,0,2)
    f(zero) should be( BigDecimal(0) +- eps)
  }

  test("regulaFalsi of n^2-1 between 0 and 2"){
    def f(n:BigDecimal) = n*n - 1
    val zero = regulaFalsi(f,0,2)
    f(zero) should be( BigDecimal(0) +- eps)
  }
  
  test("regulaFalsi of n^2-2 between 0 and 2"){
    def f(n:BigDecimal) = n*n - 2
    val zero = regulaFalsi(f,0,2)
    f(zero) should be( BigDecimal(0) +- eps)
  }
 
  test("regulaFalsi of n^2-5 from 0 on "){
    def f(n:BigDecimal) = n*n - 2
    val zero = regulaFalsi(f,0,2)
    f(zero) should be( BigDecimal(0) +- eps)
  }
  
}
