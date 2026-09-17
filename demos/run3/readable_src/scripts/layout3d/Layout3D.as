package layout3d
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
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class Layout3D
   {
      
      public static var defaultLine:Layout3D;
      
      public static var cached:Layout3D;
      
      public function Layout3D()
      {
      }
      
      public static function parseSpec(param1:String) : Layout3D
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
                        return Layout3D.cached = new LineLayout3D();
                     }
                     while(true)
                     {
                        §§push(GridLayout3D.SPEC.match(param1));
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
                                    §§push(GridLayout3D.SPEC.matched(1));
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
                                       §§push(GridLayout3D.SPEC.matched(2));
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
                                       return Layout3D.cached = new GridLayout3D(_loc3_,_loc4_);
                                    }
                                 }
                                 §§goto(addr0196);
                              }
                              §§push(TunnelLayout3D.SPEC.match(param1));
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
                     §§push(TunnelLayout3D.SPEC.matched(1));
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
                  if(Layout3D.defaultLine == null)
                  {
                     if(_loc6_)
                     {
                        Layout3D.defaultLine = new LineLayout3D();
                     }
                  }
                  addr0196:
                  return Layout3D.cached = Layout3D.defaultLine;
               }
               §§push(Std);
               §§push(TunnelLayout3D.SPEC.matched(2));
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
         var _temp_2:* = new TunnelLayout3D(_loc3_,_loc4_);
         return §§pop().cached = new TunnelLayout3D(_loc3_,_loc4_);
      }
      
      public function getRelativeIndex(param1:int, param2:int = 0, param3:int = 0, param4:int = 0) : int
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         Boot.lastError = new Error();
         throw new TypeError("getRelativeIndex() is abstract.");
      }
      
      public function getPosition(param1:int, param2:PositionData3D = undefined) : PositionData3D
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         Boot.lastError = new Error();
         throw new TypeError("getPosition() is abstract.");
      }
      
      public function getIndexNearest(param1:Point3D) : int
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         Boot.lastError = new Error();
         throw new TypeError("getIndexNearest() is abstract.");
      }
      
      public function getAreaBounds() : §,!Z§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         Boot.lastError = new Error();
         throw new TypeError("getAreaBounds() is abstract.");
      }
   }
}

