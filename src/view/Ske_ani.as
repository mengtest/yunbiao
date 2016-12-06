package view {
	
	import laya.ui.*;
	import laya.display.*; 
	import laya.ani.bone.Skeleton;
	import laya.ani.bone.Templet;
	import laya.events.Event; 
	
	public class Ske_ani {


		public var aniName :String = '';

		private var mAniPath:String; 
		private var mFactory:Templet;
		private var mActionIndex:int = 0;
		private var mCurrIndex:int = 0;
		public var mArmature:Skeleton;
		private var mCurrSkinIndex:int = 0;
		private var parent_comp:Sprite;
		private var actionName:String = "";	
 

		public function Ske_ani( skeAniName:string,parentComp:Sprite,aniActionName:String ) {
		 	 
			aniName	= skeAniName;
			parent_comp = parentComp;
			actionName = aniActionName;
			mAniPath = "../h5/comp/action/"+aniName+"/"+aniName+".sk";
			mFactory = new Templet();
			mFactory.on(Event.COMPLETE, this, parseComplete); 
			mFactory.loadAni(mAniPath);
 
		  
		}
 
		
		private function parseComplete(fac:Templet):void {
			 
			mArmature   = mFactory.buildArmature(0); 
		 
			mArmature.x = parent_comp.width/2;
			mArmature.y = 20;//parent_comp.height/2;
			//mArmature.scale(0.9, 0.9);
			//
			mArmature.on(Event.STOPPED, this, completeHandler);
			mArmature.play( actionName );
			parent_comp.addChild(mArmature);
		}
		private function completeHandler():void
		{
			mArmature.play( actionName );
		}
		
 
  
		
	}
}