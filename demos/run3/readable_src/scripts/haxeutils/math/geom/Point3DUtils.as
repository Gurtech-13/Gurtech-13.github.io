package haxeutils.math.geom
{
   public class Point3DUtils
   {
      
      public function Point3DUtils()
      {
      }
      
      public static function § !K§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Point3D = undefined) : Point3D
      {
         var _temp_1:* = false;
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(param7 == null)
            {
               if(_loc9_)
               {
                  break;
               }
               param7 = new Point3D(0,0,0);
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(param7);
                  §§push(param2);
                  if(!_loc9_)
                  {
                     §§push(param6);
                     if(_loc9_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc9_)
                     {
                        break loop1;
                     }
                  }
                  §§push(param3);
                  if(_loc8_)
                  {
                     break;
                  }
                  addr0049:
                  §§push(§§pop() - §§pop());
                  break loop1;
               }
               §§goto(addr0049);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(_loc8_)
               {
                  break loop0;
               }
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(param7);
                     §§push(param1);
                     if(!_loc9_)
                     {
                        §§push(param5);
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(!_loc8_)
                        {
                           break loop4;
                        }
                     }
                     §§push(param2);
                     if(_loc8_)
                     {
                        §§push(§§pop() * param4);
                     }
                     break;
                  }
                  §§push(§§pop() - §§pop());
                  break;
               }
               §§pop().z = §§pop();
               break;
            }
            §§goto(addr00a9);
         }
         loop6:
         while(true)
         {
            while(true)
            {
               §§push(param7);
               §§push(param3);
               if(_loc8_)
               {
                  §§push(param4);
                  if(_loc9_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(!_loc8_)
                  {
                     break loop6;
                  }
               }
               §§push(param1);
               if(!_loc9_)
               {
                  §§push(§§pop() * param6);
               }
               break;
            }
            §§push(§§pop() - §§pop());
            break;
         }
         §§pop().y = §§pop();
         if(!_loc8_)
         {
            addr00a9:
            return param7;
         }
         continue loop4;
      }
   }
}

