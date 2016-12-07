package view {
	
	import laya.ani.bone.Skeleton;
	import laya.ani.bone.Templet;
	import laya.events.Event;
	import laya.ui.Box;
	import laya.ui.Label;
	import ui.mainUI;
	
	public class MainView extends mainUI {
		
		private var mAniPath:String;
		private var mStartX:Number = 200;
		private var mStartY:Number = 500;
		private var mFactory:Templet;
		private var mActionIndex:int = 0;
		private var mCurrIndex:int = 0;
		private var mArmature:Skeleton;
		private var mCurrSkinIndex:int = 0;

		private var mArmatureDiZuo:int = 0;

		public function MainView() {
			 //加载图集资源
        	Laya.loader.load("../h5/res/ui/main_ani/dizuo.json", Laya.Handler.create(this, this.onLoaded), null, Laya.Loader.ATLAS)
			
		 	btn_biaolu.on(Event.CLICK, this, onBtnClick);
			 
		}
 
 	private function onLoaded() {
       
	   
			var jiaoxiAni:JiaoxiaAni = new JiaoxiaAni(); 
			jiaoxia1.interval = 200;
			jiaoxia1.play(0, true, "blue");
			var bound: Laya.Rectangle = jiaoxia1.getBounds(); 
            jiaoxia1.pos(-bound.width / 2+70, -20);

			jiaoxia2.interval = 200;
			jiaoxia2.play(0, true, "blue"); 
            jiaoxia2.pos(-bound.width / 2+70, -20);
			  

			var role1_ani:Ske_ani = new Ske_ani( "huawuque" ,jiaoxia1, 'daiji' );
			var role2_ani:Ske_ani = new Ske_ani( "lixunhuan" ,jiaoxia2, 'daiji' );

    }
		
		 
 
  
		private function onBtnClick(e:Event):void {
			
			trace( e );
			 
		}
		
		
	}
}