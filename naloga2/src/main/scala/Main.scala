import breeze.plot._
import math._
import main.functions.Integral._

object Main{

  def main(args: Array[String]){
    
    def f(x:Double) = x*x*x
    val mu = 1
    val sigma = 2

    println(upanje( f, mu, sigma, 8))

    def fff(x:Double) = f(x) * exp(-pow((x-mu)/sigma,2))
    val n = 5d
    val x = (-n to n by 0.01).toVector
    val y = Vector(x.map(fff(_)))
    plotGraph(x,y)
    
  }

  def upanje(f: Double => Double, mu:Double, sigma:Double,n:Int) = {
    gaussHermite(n)(x => sigma * f(x.toDouble * sigma + mu) ).toDouble
  }

  def plotGraph(x:Vector[Double], y: Vector[Vector[Double]]){
    val f = Figure()
    val p = f.subplot(0)
    p += plot(x, x.map(x=>0d))
    for (yy <- y)
      p += plot(x, yy)
    p.xlabel = "x"
    p.ylabel = "y"
    f.saveas("lines.png") 
  }
}
