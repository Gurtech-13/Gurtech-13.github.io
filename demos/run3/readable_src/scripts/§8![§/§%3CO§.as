package §8![§
{
   import flash.Lib;
   import flash.display.Sprite;
   import lime.graphics.§2!0§;
   import lime.graphics.RenderContext;
   import lime.graphics.Renderer;
   
   public class §<O§
   {
      
      public var parent:Renderer;
      
      public function §<O§(param1:Renderer)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            parent = param1;
         }
      }
      
      public function flip() : void
      {
      }
      
      public function create() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            parent.context = RenderContext.FLASH(Lib.current);
            if(!_loc1_)
            {
               parent.type = §2!0§.FLASH;
            }
         }
      }
   }
}

