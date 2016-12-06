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
			//btn是编辑器界面设定的，代码里面能直接使用，并且有代码提示

			//role_bottom_1.	 

			var dizuo_ani:Ske_ani = new Ske_ani( "dizuo_ske" , role_bottom_1, 'zhujiemian_jiaoxia_lan' );
			 

			var role1_ani:Ske_ani = new Ske_ani( "huawuque" ,role_bottom_1, 'daiji' );
		
		 	btn_biaolu.on(Event.CLICK, this, onBtnClick);
			 
		}
 
		
		 
 
  
		private function onBtnClick(e:Event):void {
			
			trace( e );
			 
		}
		
		
	}
}