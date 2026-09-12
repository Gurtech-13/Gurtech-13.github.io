package §2X§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §0!"§.§,!Z§;
   import §4!6§.§'P§;
   import §4!6§.§=s§;
   import §4n§.Achievement;
   import §<B§.§6!_§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§4!^§;
   import flash.Boot;
   import flash.events.IOErrorEvent;
   import flash.geom.Rectangle;
   import haxe.§%!-§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class Layout3D
   {
      
      public static var §0!X§:Layout3D;
      
      public static var §;!Y§:Layout3D;
      
      public function Layout3D()
      {
      }
      
      public static function §&!`§(param1:String) : Layout3D
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = null as Layout3D;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc6_)
               {
                  while(true)
                  {
                     §§push(param1);
                     if(_loc6_)
                     {
                        if(§§pop() == null)
                        {
                           break;
                        }
                        §§push(param1);
                     }
                     if(§§pop() == "line")
                     {
                        return Layout3D.§;!Y§ = new LineLayout3D();
                     }
                     while(true)
                     {
                        §§push(GridLayout3D.§`4§.match(param1));
                        if(!_loc5_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc5_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(Std);
                                    §§push(GridLayout3D.§`4§.matched(1));
                                    if(_loc6_)
                                    {
                                       §§push(§§pop());
                                    }
                                    §§push(int(§§pop().parseInt(§§pop())));
                                    if(!_loc5_)
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc5_)
                                       {
                                          break loop0;
                                       }
                                       §§push(Std);
                                       §§push(GridLayout3D.§`4§.matched(2));
                                       if(_loc6_)
                                       {
                                          §§push(§§pop());
                                       }
                                       §§push(int(§§pop().parseInt(§§pop())));
                                       if(!_loc6_)
                                       {
                                          break loop1;
                                       }
                                    }
                                    _loc4_ = §§pop();
                                    if(_loc6_)
                                    {
                                       return Layout3D.§;!Y§ = new GridLayout3D(_loc3_,_loc4_);
                                    }
                                 }
                                 §§goto(addr0196);
                              }
                              §§push(§>x§.§`4§.match(param1));
                              if(_loc5_)
                              {
                                 break;
                              }
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break;
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     §§push(Std);
                     §§push(§>x§.§`4§.matched(1));
                     if(_loc6_)
                     {
                        §§push(§§pop());
                     }
                     §§push(int(§§pop().parseInt(§§pop())));
                     if(_loc5_)
                     {
                        break loop1;
                     }
                     _loc3_ = §§pop();
                     if(!_loc6_)
                     {
                        break loop0;
                     }
                  }
                  if(Layout3D.§0!X§ == null)
                  {
                     if(_loc6_)
                     {
                        Layout3D.§0!X§ = new LineLayout3D();
                     }
                  }
                  addr0196:
                  return Layout3D.§;!Y§ = Layout3D.§0!X§;
               }
               §§push(Std);
               §§push(§>x§.§`4§.matched(2));
               if(!_loc5_)
               {
                  §§push(§§pop());
               }
               §§push(int(§§pop().parseInt(§§pop())));
               break;
            }
            _loc4_ = §§pop();
            break;
         }
         §§push(Layout3D);
         var _temp_2:* = new §>x§(_loc3_,_loc4_);
         return §§pop().§;!Y§ = new §>x§(_loc3_,_loc4_);
      }
      
      public function §6!,§(param1:int, param2:int = 0, param3:int = 0, param4:int = 0) : int
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         Boot.lastError = new Error();
         throw new TypeError("getRelativeIndex() is abstract.");
      }
      
      public function §<!C§(param1:int, param2:PositionData3D = undefined) : PositionData3D
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         Boot.lastError = new Error();
         throw new TypeError("getPosition() is abstract.");
      }
      
      public function §!N§(param1:Point3D) : int
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         Boot.lastError = new Error();
         throw new TypeError("getIndexNearest() is abstract.");
      }
      
      public function §4L§() : §,!Z§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         Boot.lastError = new Error();
         throw new TypeError("getAreaBounds() is abstract.");
      }
   }
}

