package §>T§
{
   import §2!W§.§&!6§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§8!M§;
   import haxeutils.math.geom.Point3D;
   
   public class §8R§ extends Point3D
   {
      
      public var §1!<§:Boolean;
      
      public var strength:Number;
      
      public function §8R§(param1:Object = undefined, param2:Object = undefined, param3:Object = undefined, param4:Object = undefined)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(param1 == null)
               {
                  if(_loc6_)
                  {
                     break;
                  }
                  §§push(1);
                  if(_loc6_)
                  {
                     break loop0;
                  }
                  param1 = §§pop();
               }
               loop2:
               while(true)
               {
                  while(true)
                  {
                     if(param2 == null)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§push(0);
                        if(!_loc5_)
                        {
                           break loop2;
                        }
                        param2 = §§pop();
                     }
                     if(param3 == null)
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                           break loop2;
                        }
                        break loop0;
                     }
                     §§goto(addr0071);
                  }
                  §§goto(addr0084);
               }
               param3 = §§pop();
               addr0071:
               if(param4 == null)
               {
                  §§push(0);
                  break loop0;
               }
               §§goto(addr007d);
            }
            return;
         }
         param4 = §§pop();
         addr007d:
         super(param2,param3,param4);
         addr0084:
         strength = param1;
         break loop1;
      }
   }
}

