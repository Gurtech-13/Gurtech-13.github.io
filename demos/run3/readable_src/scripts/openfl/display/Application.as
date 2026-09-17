package openfl.display
{
   import lime.app.Application;
   import lime.app.Preloader;
   import openfl.Lib;
   
   public class Application extends lime.app.Application
   {
      
      public function Application()
      {
         super();
         if(Lib.application == null)
         {
            Lib.application = this;
         }
      }
      
      public function create(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null as Array;
         var _loc4_:* = null;
         var _loc5_:* = null as Window;
         config = param1;
         §6l§.create(param1);
         if(param1 != null)
         {
            if(Reflect.hasField(param1,"fps"))
            {
               §6l§.§;!9§(Number(param1.fps));
            }
            if(Reflect.hasField(param1,"windows"))
            {
               _loc2_ = 0;
               _loc3_ = param1.windows;
               if(_loc2_ < int(_loc3_.length))
               {
                  _loc4_ = _loc3_[_loc2_];
                  _loc2_++;
                  _loc5_ = new Window(_loc4_);
                  §'!?§(_loc5_);
               }
            }
            if(§9!O§ == null || §9!O§.complete)
            {
               §#z§();
            }
         }
      }
   }
}

