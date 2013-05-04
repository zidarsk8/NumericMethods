package main.functions

object Integral {
  def trapezoid(n:Int)(f:Double => Double)(a:Double,b:Double) = {
    val h = (b-a)/n
    (b-a)*((a to b-h by h).foldLeft(0d)(_+2*f(_)) - f(a) - f(b)) / (2*n)
  }
}
