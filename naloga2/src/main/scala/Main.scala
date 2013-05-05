import breeze.plot._
import math._
import main.functions.Integral._

object Main{

  def main(args: Array[String]){
    
    println(upanje( x=> x, 2, 2, 8))
    
  }

  def upanje(f: Double => Double, mu:Double, sigma:Double,n:Int):Double = {
    def fff(x:Double) = f(x) * exp(-pow((x-mu)/sigma,2))
    def fTran(x:Double) = (sigma * f( (x*sigma) +mu ))
    

    gaussHermite(5)(x => sigma * f(x.toDouble * sigma + mu) )
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
