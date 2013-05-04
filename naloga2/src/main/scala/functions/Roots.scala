package main.functions

import math._

object Roots {

  def bisection(f: BigDecimal => BigDecimal, from:BigDecimal, to:BigDecimal)(implicit eps:BigDecimal) : BigDecimal = {
    def step(i: Int, a: BigDecimal, fa: BigDecimal, b: BigDecimal, fb: BigDecimal): BigDecimal = {
      val c = (b+a)/2
      val fc = f(c)
      if(fc.abs > eps && i > 0){
        if (fa*fc < 0)
          step(i-1, a, fa, c, fc)
        else 
          step(i-1, c, fc, b, fb)
      } else {
        c
      }
    }
    step(10000, from, f(from), to, f(to))
  }


  def regulaFalsi(f: BigDecimal => BigDecimal, from:BigDecimal, to:BigDecimal)(implicit eps:BigDecimal) : BigDecimal = {
    def step(i: Int, a: BigDecimal, fa: BigDecimal, b: BigDecimal, fb: BigDecimal): BigDecimal = {
      val c = a - fa * (b-a)/(fb-fa)
      val fc = f(c)
      if(fc.abs > eps && a < b && i > 0){
        if (fa*fc < 0)
          step(i-1, a, fa, c, fc)
        else 
          step(i-1, c, fc, b, fb)
      } else {
        c
      }
    }
    step(10000, from, f(from), to, f(to))
  }


  def bisection(f: BigDecimal => BigDecimal, from:BigDecimal)(implicit eps:BigDecimal) : BigDecimal = {
    val step = 0.1
    val ffrom = f(from)
    def to(t:BigDecimal,i:Int):BigDecimal = {
      if(i>1000){
        from
      } else
        if (f(t)*ffrom < 0) t else to(t+i*step,i+1)
    }
    bisection(f,from, to(from+step,1))
  }


  def regulaFalsi(f: BigDecimal => BigDecimal, from:BigDecimal)(implicit eps:BigDecimal) : BigDecimal = {
    val step = 0.1
    val ffrom = f(from)
    def to(t:BigDecimal,i:Int):BigDecimal = {
      if(i>1000){
        from
      } else
        if (f(t)*ffrom < 0) t else to(t+i*step,i+1)
    }
    regulaFalsi(f,from, to(from+step,1))
  }


  def regulaFalsiIter(eps:BigDecimal)(from:BigDecimal, to:BigDecimal, f: BigDecimal => BigDecimal) : BigDecimal = {
    var i = 1000
    var a = from
    var fa = f(a)
    var b = to
    var fb = f(b)
    var c = a - fa * (b-a)/(fb-fa)
    var fc = f(c)
    while (fc.abs > eps && b-a > eps && {i-=1;i} > 0){
      println(a,b,c,fa,fb,fc)
      if (fa*fc < 0){
        b = c
        fb = fc
      } else {
        a = c
        fa = fc
      }
      c = a - fa *(b-a)/(fb-fa)
      fc = f(c)
      }
      c
    }


  }
