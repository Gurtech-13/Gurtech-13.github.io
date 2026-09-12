package haxeutils.math.geom
{
   import flash.geom.Point;
   
   public class Point3D extends Point
   {
      
      public var z:Number;
      
      public function Point3D(param1:Object = undefined, param2:Object = undefined, param3:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(param1 == null)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§push(0);
                     if(_loc4_)
                     {
                        break loop0;
                     }
                     param1 = §§pop();
                  }
                  if(param2 == null)
                  {
                     while(true)
                     {
                        if(_loc5_)
                        {
                           break loop1;
                        }
                        §§goto(addr0059);
                     }
                     return;
                  }
                  §§goto(addr003e);
               }
               while(true)
               {
                  while(true)
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                        break loop0;
                     }
                     §§goto(addr004c);
                  }
                  §§goto(addr004e);
               }
            }
            param2 = §§pop();
            addr003e:
            while(true)
            {
               if(param3 == null)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  param3 = 0;
               }
               addr004e:
               super(param1,param2);
               if(_loc5_)
               {
                  addr0059:
                  z = param3;
               }
               break;
            }
         }
         break loop4;
      }
   }
}

