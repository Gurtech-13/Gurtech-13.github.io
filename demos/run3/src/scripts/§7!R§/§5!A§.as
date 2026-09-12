package §7!R§
{
   import §6[§.§`!O§;
   import §<!&§.§%!§;
   import §[^§.§!A§;
   import haxeutils.math.geom.Point3D;
   
   public class §5!A§ implements §'A§
   {
      
      public var §+!§:Vector.<§'A§>;
      
      public function §5!A§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §+!§ = new Vector.<§'A§>();
         }
      }
      
      public function contains(param1:Number, param2:Number) : Boolean
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = null as §'A§;
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Vector.<§'A§> = §+!§;
         if(_loc7_)
         {
            loop0:
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               while(true)
               {
                  if(_loc7_)
                  {
                     _loc3_++;
                     if(!_loc6_)
                     {
                        §§push(_loc5_.contains(param1,param2));
                        if(!_loc6_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc6_)
                           {
                              break;
                           }
                        }
                        if(!§§pop())
                        {
                           continue loop0;
                        }
                     }
                  }
                  return true;
               }
               return §§pop();
            }
         }
         return false;
      }
      
      public function §'9§(param1:§'A§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §+!§.push(param1);
         }
      }
   }
}

