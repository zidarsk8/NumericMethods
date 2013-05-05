import breeze.plot._
import math._

object Main{

  def main(args: Array[String]){
    
    upanje( x=> x, 1.1, 1.8, 5)

  }

  def upanje(f: Double => Double, mu:Double, sigma:Double,n:Int):Double = {
    def fff(x:Double) = f(x) * exp(-pow((x-mu)/sigma,2))
    def fTran(x:Double) = (f( (x*sigma) +mu )) * exp(-pow(x,2))
    
    val n = 5d
    val x = (-n to n by 0.1).toVector
    val y = Vector(
      x.map(fff(_)-0.04),
      x.map(fTran(_))
    )
    
    plotGraph(x,y)

    0
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
