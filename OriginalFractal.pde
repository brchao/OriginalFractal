public void setup()
{	
	noStroke();
	background(60,110,120);
	size(600,600);
	fractal(300,300,320);
}
public void draw()
{

}

public void fractal(int x, int y, int siz)
{
	fill(150,180,180);
	ellipse(x,y,siz,siz);
	fill(60,110,120);
	ellipse(x,y,siz-10,siz-10);
	if(siz > 20)
	{
		fractal(x+siz/2,y-siz/2,siz/2);
		fractal(x+siz/2,y+siz/2,siz/2);
		fractal(x-siz/2,y-siz/2,siz/2);
		fractal(x-siz/2,y+siz/2,siz/2);
		fractal(x+siz,y,siz/2);
		fractal(x-siz,y,siz/2);
		fractal(x,y-siz,siz/2);
		fractal(x,y+siz,siz/2);
	}
}