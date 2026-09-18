package map
{
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import openfl.Lib;
   
   public class §9u§ extends Point
   {
      
      public var § f§:Number;
      
      public var §2i§:Number;
      
      public function §9u§(param1:Number, param2:Number, param3:§9u§)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  super(param1,param2);
                  if(!_loc5_)
                  {
                     if(param3 != null)
                     {
                        §2i§ = Number(Math.sqrt((x - param3.x) * (x - param3.x) + (y - param3.y) * (y - param3.y)));
                        if(!_loc5_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     if(_loc5_)
                     {
                        break loop0;
                     }
                  }
               }
               § f§ = 0;
               if(_loc4_)
               {
                  break loop0;
               }
               break;
            }
            while(true)
            {
               §§push(§§findproperty(§ f§));
               §§push(param3.§ f§);
               if(!_loc5_)
               {
                  §§push(§§pop() + §2i§);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§ f§ = §§pop();
            break;
         }
      }
   }
}

