package main.functions

import math._
import main.functions._

object Integral {
  def trapezoid(n:Int)(f:Double => Double)(a:Double,b:Double) = {
    val h = (b-a)/n
    h*((a to b-h by h).foldLeft(0d)(_+2*f(_)) - f(a) - f(b)) / 2
  }

  def gaussHermite(n:Int)(f:BigDecimal => BigDecimal):BigDecimal = {

    def fac(n:Int):Int = if(n==0) 1 else n * fac(n-1)
    val wcons = BigDecimal(2).pow(n-1)*fac(n) * sqrt(Pi) / (n*n)

    val x = Hermite.roots(n)
    def w(i:Int) = wcons / Hermite(n-1)(x(i)).pow(2)

    (0 to n-1).foldLeft(BigDecimal(0))((a,i) => a + w(i) * f(x(i)))
  }

}

