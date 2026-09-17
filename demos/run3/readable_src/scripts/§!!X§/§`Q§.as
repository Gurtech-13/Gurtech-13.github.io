package §!!X§
{
   import §!!"§.§-m§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import world3d.Entity3D;
   import com.player03.run3.Save;
   import com.player03.run3.save.§-Q§;
   import flash.geom.Point;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Point3D;
   
   public class §`Q§
   {
      
      public static var init__:Boolean;
      
      public static var §@1§:Number;
      
      public static var §1]§:Point;
      
      public static var §20§:Number = 4.2;
      
      public function §`Q§()
      {
      }
      
      public static function §7!=§(param1:§ !>§) : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc2_:§-Q§ = param1.§0!R§;
         §§push(int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§))));
         if(!_loc15_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param1.levelCount);
         if(!_loc15_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc14_)
         {
            while(true)
            {
               §§push(param1);
               if(_loc14_)
               {
                  §§push(_loc3_);
                  if(_loc15_)
                  {
                     break;
                  }
                  if(§§pop() >= _loc4_)
                  {
                     §§push(_loc4_);
                     break;
                  }
               }
               §§push(_loc3_);
               if(_loc14_)
               {
               }
               break;
            }
            §§pop().§`!R§(§§pop(),§`Q§.§1]§);
         }
         var _loc5_:Point = §`Q§.§1]§;
         §§push(§!_§.§+5§);
         if(_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Point = §`Q§.§1]§;
         loop1:
         while(true)
         {
            if(_loc7_ == null)
            {
               if(!_loc14_)
               {
                  break;
               }
               _loc7_ = new Point(0,0);
            }
            _loc7_.x = _loc5_.x * _loc6_;
            loop2:
            while(true)
            {
               while(true)
               {
                  if(_loc14_)
                  {
                     _loc7_.y = _loc5_.y * _loc6_;
                     _temp_1.x -= §!_§.§,K§ * §!_§.§+5§;
                     _temp_2.y -= §!_§.§#!4§ * §!_§.§+5§;
                     break loop1;
                  }
                  addr0157:
                  §§push(_loc6_);
                  break loop2;
               }
               addr0165:
               §§goto(addr016c);
            }
            §§push(§`Q§.§20§);
            if(_loc14_)
            {
               break loop3;
            }
            addr016c:
            if(§§pop() < §§pop())
            {
               if(_loc14_)
               {
                  §`Q§.§20§ = Number(Math.sqrt(_loc6_));
               }
            }
            var _loc8_:§-Q§ = param1.§0!R§;
            §§push(int(Save.§@!A§().get(_loc8_.§=-§,int(_loc8_.§ -§))));
            if(!_loc15_)
            {
               §§push(int(§§pop()));
            }
            var _loc9_:* = §§pop();
            §§push(param1.levelCount);
            if(!_loc15_)
            {
               §§push(int(§§pop()));
            }
            var _loc10_:* = §§pop();
            loop4:
            while(true)
            {
               while(true)
               {
                  if(_loc14_)
                  {
                     §§push(_loc9_);
                     if(_loc15_)
                     {
                        break loop4;
                     }
                     if(§§pop() >= _loc10_)
                     {
                        §§push(_loc10_);
                        if(_loc14_)
                        {
                           break;
                        }
                        break loop4;
                     }
                  }
                  §§push(_loc9_);
                  if(!_loc15_)
                  {
                     break;
                  }
                  break loop4;
               }
               §§push(int(§§pop()));
               break;
            }
            var _loc11_:* = §§pop();
            §§push(param1.availableUntil);
            if(!_loc15_)
            {
               §§push(§§pop() + 1);
               if(_loc14_)
               {
                  §§push(int(§§pop()));
               }
            }
            var _loc12_:* = §§pop();
            while(true)
            {
               §§push(param1);
               if(!_loc15_)
               {
                  §§push(_loc11_);
                  if(_loc15_)
                  {
                     break;
                  }
                  if(§§pop() >= _loc12_)
                  {
                     §§push(_loc12_);
                     break;
                  }
               }
               §§push(_loc11_);
               if(_loc15_)
               {
               }
               break;
            }
            §§push(§§pop().§99§(§§pop()));
            if(!_loc15_)
            {
               §§push(Number(§§pop()));
               if(_loc14_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc13_:* = §§pop();
            if(_loc14_)
            {
               if(_loc13_ > §`Q§.§@1§)
               {
                  if(!_loc15_)
                  {
                     §`Q§.§@1§ = _loc13_;
                  }
               }
            }
            return;
         }
         §§push(§`Q§.§1]§.x * §`Q§.§1]§.x);
         if(!_loc14_)
         {
            break loop2;
         }
         §§push(§`Q§.§1]§.y * §`Q§.§1]§.y);
         if(!_loc15_)
         {
            while(true)
            {
               §§push(§§pop() + §§pop());
               if(_loc14_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc14_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               if(!_loc15_)
               {
                  break;
               }
               break loop2;
            }
            _loc6_ = §§pop();
            §§goto(addr0157);
         }
         §§goto(addr0165);
      }
      
      public static function init() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as § !>§;
         var _loc1_:StringMap = §>K§.§@!A§().§2! §;
         var _loc2_:* = new §-m§(_loc1_.h,_loc1_.rh);
         if(_loc4_)
         {
            while(Boolean(_loc2_.hasNext()))
            {
               _loc3_ = _loc2_.next();
               if(!_loc5_)
               {
                  §§push(_loc3_.§<o§());
                  if(!_loc5_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     continue;
                  }
               }
               §`Q§.§7!=§(_loc3_);
            }
         }
      }
   }
}

