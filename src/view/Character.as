import laya.display.Animation;
import laya.display.Sprite;
import laya.display.Text;

class Character extends Sprite
{
	public static const WIDTH:int = 110;
	public static const HEIGHT:int = 110;
	
	private var speed:int = 5;
	
	private var bloodBar:Sprite;
	private var animation:Animation;
	private var nameLabel:Text;
	
	public function Character(images:Array)
	{
		createAnimation(images);
		createBloodBar();
		createNameLabel();
	}
	
	private function createAnimation(images:Array):void 
	{
		animation = new Animation();
		animation.loadImages(images);
		animation.interval = 70;
		animation.play(0);
		this.addChild(animation);
	}
	
	private function createBloodBar():void 
	{
		bloodBar = new Sprite();
		bloodBar.loadImage("../../../../res/cartoon2/blood_1_r.png");
		bloodBar.x = 20;
		this.addChild(bloodBar);
	}
	
	private function createNameLabel():void
	{
		nameLabel = new Text();
		nameLabel.color = "#FFFFFF";
		nameLabel.text = "Default";
		nameLabel.fontSize = 13;
		nameLabel.width = WIDTH;
		nameLabel.align = "center";
		this.addChild(nameLabel);
	}
	
	public function setSpeed(value:int):void
	{
		speed = value;
	}
	
	public function setName(value:String):void
	{
		nameLabel.text = value;
	}
	
	public function update():void
	{
		this.x += speed;
		if (this.x >= Laya.stage.width + WIDTH)
			this.x = -WIDTH;
	}
}