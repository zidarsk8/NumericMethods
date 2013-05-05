package main.functions

import math._
import Roots._


object Hermite {

  implicit val eps:BigDecimal = 1e-15

  def apply(n:Int)(x:BigDecimal) = {
    var h0:BigDecimal = 1
    var h1 = 2*x
    if (n<2) {
      if (n<1) h0 else h1
    } else {
      for (i <- 1 to n-1){
        val h2 = 2*x*h1 - 2*i*h0
        h0 = h1
        h1 = h2
      }
      h1
    }
  }

  def roots(n:Int) : List[BigDecimal] = {
    def top(n:Int) : List[BigDecimal] = {
      if (n==1) List(0)
      else {
        val r = top(n-1)
        val l : List[BigDecimal] =(0 to r.length-2).toList.map(x=> bisection(Hermite(n),r(x),r(x+1)))
        (if (n%2==0) l else BigDecimal(0)::l):::List(bisection(Hermite(n),r.last))
      }
    }
    if (n<1) List()
    else {
      val r = top(n)
      r.reverse.map(-_):::(if (n%2==0) r else r.tail)
    }
  }

}
