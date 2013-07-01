import org.scalatest._
import org.scalatest.matchers._
import main.functions._
import math._

class HermiteTest extends FunSuite with ShouldMatchers{
  
  implicit val eps:BigDecimal = 1e-15

  test("testing H0"){
    assert(Hermite(0)(0) === 1)
    assert(Hermite(0)(1.5) === 1)
    assert(Hermite(0)(2) === 1)
  }

  test("testing H1"){
    def h1(x:BigDecimal) = 2*x
    for (a <- -3d to 3d by 0.1)
      Hermite(1)(a) should be( h1(a) +- eps)
  }
  
  test("testing H2"){
    def h2(x:BigDecimal) = 4*x.pow(2) - 2
    for (a <- -3d to 3d by 0.1)
      Hermite(2)(a) should be( h2(a) +- eps)
  }
  
  test("testing H4"){
    def h4(x:BigDecimal) = 16*x.pow(4) - 48*x.pow(2) + 12
    for (a <- -3d to 3d by 0.1)
      Hermite(4)(a) should be( h4(a) +- eps)
  }
  
 
  test("testing H7"){
    def h7(x:BigDecimal) = 128*x.pow(7) - 1344*x.pow(5) + 3360*x.pow(3) - 1680*x
    for (a <- -3d to 3d by 0.1)
      Hermite(7)(a) should be( h7(a) +- eps)
  }
  
  test("testing H9"){
    def h9(x:BigDecimal) = 512*x.pow(9) - 9216*x.pow(7) + 48384*x.pow(5) - 80640*x.pow(3) + 30240*x
    for (a <- -3d to 3d by 0.1)
      Hermite(9)(a) should be( h9(a) +- eps)
  }
 
  test("testing H10"){
    def h10(x:BigDecimal) = 1024*x.pow(10) - 23040*x.pow(8) + 161280*x.pow(6) - 403200*x.pow(4) + 302400*x.pow(2) - 30240
    for (a <- -3d to 3d by 0.1)
      Hermite(10)(a) should be( h10(a) +- eps)
  }

  test("Roots 2"){
    val n = 2
    val roots = Hermite.roots(n)
    roots.map( Hermite(n)(_) should be (BigDecimal(0) +- eps) )
  }
  
  test("Roots 10"){
    val n = 10
    val roots = Hermite.roots(n)
    roots.map( Hermite(n)(_) should be (BigDecimal(0) +- eps) )
  }

 
  test("Roots 18"){
    val n = 18
    val roots = Hermite.roots(n)
    roots.map( Hermite(n)(_) should be (BigDecimal(0) +- eps) )
  }

 
  test("Roots 15"){
    val n = 15
    val roots = Hermite.roots(n)
    roots.map( Hermite(n)(_) should be (BigDecimal(0) +- eps) )
  }

}
