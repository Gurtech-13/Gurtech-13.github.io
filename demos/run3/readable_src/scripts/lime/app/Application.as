package lime.app
{
   import §8![§.§?!$§;
   import haxe.§=!U§;
   import haxe.ds.IntMap;
   import lime.graphics.Renderer;
   import lime.ui.Window;
   
   public class Application extends Module
   {
      
      public static var current:Application;
      
      public var §=a§:§=!U§;
      
      public var window:Window;
      
      public var onUpdate:§+o§ = new §+o§();
      
      public var §^c§:Array;
      
      public var config:Object;
      
      public var §6l§:§?!$§;
      
      public function Application()
      {
         super();
         if(Application.current == null)
         {
            Application.current = this;
         }
         §^c§ = [];
         §=a§ = new IntMap();
         §6l§ = new §?!$§(this);
         § !2§(this);
      }
      
      override public function §?!§(param1:Preloader) : void
      {
         var _loc4_:* = null as §0o§;
         super.§?!§(param1);
         var _loc2_:int = 0;
         var _loc3_:Array = §^c§;
         while(_loc2_ < int(_loc3_.length))
         {
            _loc4_ = _loc3_[_loc2_];
            _loc2_++;
            _loc4_.§?!§(param1);
         }
      }
      
      public function §7g§(param1:Window) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:* = null as §=!U§;
         var _loc4_:int = 0;
         if(param1 != null)
         {
            _loc3_ = §=a§;
            _loc4_ = param1.id;
            _loc2_ = _loc4_ in _loc3_.h;
         }
         else
         {
            _loc2_ = false;
         }
         if(_loc2_)
         {
            §08§.remove(param1);
            §=a§.remove(param1.id);
            param1.close();
            if(§08§[0] == param1)
            {
               window = null;
            }
         }
      }
      
      override public function onWindowClose(param1:Window) : void
      {
         §7g§(param1);
      }
      
      override public function §-!F§(param1:int) : void
      {
         §6l§.exit();
      }
      
      public function exec() : int
      {
         Application.current = this;
         return §6l§.exec();
      }
      
      public function §'!?§(param1:Window) : void
      {
         var _loc4_:* = null as §0o§;
         var _loc5_:* = null as Renderer;
         super.§"`§(param1);
         var _loc2_:int = 0;
         var _loc3_:Array = §^c§;
         while(_loc2_ < int(_loc3_.length))
         {
            _loc4_ = _loc3_[_loc2_];
            _loc2_++;
            _loc4_.§"`§(param1);
         }
         if(param1.§^!]§ == null)
         {
            _loc5_ = new Renderer(param1);
            §8d§(_loc5_);
         }
         param1.create(this);
         §08§.push(param1);
         §=a§.h[param1.id] = param1;
         param1.§+!O§.§[!S§();
      }
      
      override public function §8d§(param1:Renderer) : void
      {
         var _loc4_:* = null as §0o§;
         super.§8d§(param1);
         var _loc2_:int = 0;
         var _loc3_:Array = §^c§;
         while(_loc2_ < int(_loc3_.length))
         {
            _loc4_ = _loc3_[_loc2_];
            _loc2_++;
            _loc4_.§8d§(param1);
         }
      }
   }
}

