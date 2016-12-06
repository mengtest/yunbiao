package {
	import laya.net.Loader;
	import laya.utils.Handler;
	import view.MainView;
	import laya.webgl.WebGL;
	
	public class LayaUISample {
		
		public function LayaUISample() {
			//初始化引擎
			WebGL.enable();
			Laya.init(1136, 640);
			
			//加载引擎需要的资源
			Laya.loader.load([{url: "res/atlas/comp.json", type: Loader.ATLAS}], Handler.create(this, onLoaded));
		}
		
		private function onLoaded():void {
			//实例UI界面
			var mainView:MainView = new MainView();
			Laya.stage.addChild(mainView);
		}
	}
}