package
{
   import com.player03.run3.Preloader;
   import lime.Assets;
   import openfl.display.Application;
   import openfl.display.Preloader;
   
   public class ApplicationMain
   {
      
      public static var config:Object;
      
      public static var preloader:openfl.display.Preloader;
      
      public function ApplicationMain()
      {
      }
      
      public static function create() : void
      {
         var _loc1_:Application = new Application();
         _loc1_.create(ApplicationMain.config);
         var _loc2_:com.player03.run3.Preloader = new com.player03.run3.Preloader();
         ApplicationMain.preloader = new openfl.display.Preloader(_loc2_);
         _loc1_.§?!§(ApplicationMain.preloader);
         ApplicationMain.preloader.onComplete.add(ApplicationMain.init);
         ApplicationMain.preloader.create(ApplicationMain.config);
         var _loc3_:int = _loc1_.exec();
      }
      
      public static function init() : void
      {
         var loaded:int = 0;
         var total:int = 0;
         var _loc1_:Function = function(param1:*):void
         {
            loaded += 1;
            if(loaded == total)
            {
               ApplicationMain.start();
            }
         };
         ApplicationMain.preloader = null;
         if(total == 0)
         {
            ApplicationMain.start();
         }
      }
      
      public static function main() : void
      {
         ApplicationMain.config = {
            "build":"1.13.0",
            "company":"Kongregate",
            "file":"Run3",
            "fps":60,
            "name":"Run 3",
            "orientation":"",
            "packageName":"com.player03.run3",
            "version":"1.13.0",
            "windows":[{
               "antialiasing":0,
               "background":0,
               "borderless":false,
               "depthBuffer":false,
               "display":0,
               "fullscreen":false,
               "hardware":true,
               "height":600,
               "parameters":"{}",
               "resizable":true,
               "stencilBuffer":true,
               "title":"Run 3",
               "vsync":false,
               "width":800,
               "x":null,
               "y":null
            }]
         };
         ApplicationMain.create();
      }
      
      public static function start() : void
      {
         var _loc5_:* = null as String;
         var _loc6_:* = null as DocumentClass;
         var _loc1_:Boolean = false;
         var _loc2_:Class = Type.resolveClass("com.player03.run3.Main");
         var _loc3_:int = 0;
         var _loc4_:Array = Type.getClassFields(_loc2_);
         while(_loc3_ < int(_loc4_.length))
         {
            _loc5_ = _loc4_[_loc3_];
            _loc3_++;
            if(_loc5_ == "main")
            {
               _loc1_ = true;
               break;
            }
         }
         Assets.initialize();
         if(_loc1_)
         {
            Reflect.field(_loc2_,"main").apply(_loc2_,[]);
         }
         else
         {
            _loc6_ = Type.createInstance(DocumentClass,[]);
         }
      }
   }
}

