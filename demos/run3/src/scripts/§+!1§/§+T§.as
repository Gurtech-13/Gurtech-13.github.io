package §+!1§
{
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class §+T§
   {
      
      public var §"N§:§"B§;
      
      public var §%!=§:Point3D;
      
      public function §+T§(param1:Object = undefined, param2:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(param1 == null)
            {
               §§push(true);
               if(!_loc4_)
               {
                  break;
               }
               param1 = §§pop();
            }
            §§goto(addr003c);
         }
         param2 = §§pop();
         addr003c:
         if(param2 == null)
         {
            §§push(false);
            break loop0;
         }
         if(param1)
         {
            if(_loc4_)
            {
               §%!=§ = new Point3D();
            }
         }
         if(param2)
         {
            §"N§ = new §"B§();
         }
      }
   }
}

