package view {

import laya.display.Animation;
import laya.display.Sprite;
/**
 * 脚下动画
 */
public class JiaoxiaAni extends Sprite {
   
    private var body: Laya.Animation;
 
	public function JiaoxiaAni( )
	{
		 
		init();
	}
  
    private function init(): void {

	 

		var aniFrames :Array;

        // 黄色脚下动画
		aniFrames = [];
		for(var i:int = 0; i < 7;  ++i)
		{
			aniFrames.push( "res/ui/main_ani/dizuo/zhujiemian_jiaoxia_huang_0000"+i+".png" ); 
		}  
        Laya.Animation.createFrames(aniFrames, "yellow");

        // 蓝色脚下动画
		aniFrames = [];
		for(var i:int = 0; i <= 9; ++i)
		{
			aniFrames.push( "res/ui/main_ani/dizuo/zhujiemian_jiaoxia_lan_0000"+i+".png" );	 
		}  
        Laya.Animation.createFrames(aniFrames, "blue");

        // 绿色脚下动画
		aniFrames = [];
		for(var i:int = 0; i < 9;  ++i)
		{
			aniFrames.push( "res/ui/main_ani/dizuo/zhujiemian_jiaoxia_lv_0000"+i+".png" );	 
		}  
        Laya.Animation.createFrames(aniFrames, "green");

        // 紫色脚下动画
		aniFrames = [];
		for(var i:int = 0; i < 9;  ++i )
		{
			aniFrames.push( "res/ui/main_ani/dizuo/zhujiemian_jiaoxia_zi_0000"+i+".png" );	 
		}  
        Laya.Animation.createFrames(aniFrames, "purple");


 
        //创建一个动画作为飞机的身体
        this.body = new Laya.Animation();
        //把机体添加到容器内
        //this.addChild(this.body);
  
       
    }
  
    public function playAction(action: string): void {
        //根据类型播放动画
        this.body.play(0, true, action);
        //获取动画大小区域
        var bound: Laya.Rectangle = this.body.getBounds();
        //设置机身剧中
        this.body.pos(-bound.width / 2, -bound.height / 2);
    }
}

}