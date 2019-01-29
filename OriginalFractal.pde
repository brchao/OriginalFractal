public void setup()
{	
	strokeWeight(1);
	background(80,80,120);
	size(500,500);
	fractal(250,250,243);
}
public void draw()
{

}
public void fractal(int x, int y, int siz)
{
	fill(170,180,240);
	ellipse(x,y,siz,siz);
	if(siz > 20)
	{
		fractal(x+siz/2,y-siz/2,siz/3);
		fractal(x+siz/2,y+siz/2,siz/3);
		fractal(x-siz/2,y-siz/2,siz/3);
		fractal(x-siz/2,y+siz/2,siz/3);
		fractal(x+siz,y,siz/3);
		fractal(x-siz,y,siz/3);
		fractal(x,y-siz,siz/3);
		fractal(x,y+siz,siz/3);
	}
}