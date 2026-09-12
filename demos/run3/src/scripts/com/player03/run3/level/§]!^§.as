package com.player03.run3.level
{
   import §%!Q§.§>K§;
   import §1^§.Transform;
   import §3F§.§4!V§;
   import com.player03.run3.save.§]k§;
   import flash.display.MovieClip;
   import flash.display3D.Context3DClearMask;
   import flash.events.Event;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§1!1§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Matrix3D;
   import haxeutils.math.geom.Point3D;
   import nme3D.§1![§;
   import nme3D.Context3DUtils;
   import nme3D.model.§6U§;
   import nme3D.model.Model;
   import openfl.Lib;
   
   public class §]!^§ extends §6U§
   {
      
      public static var §-6§:Boolean;
      
      public static var §1t§:Point3D;
      
      public static var §9!Y§:§4!V§;
      
      public var §"[§:§1![§;
      
      public var §8!-§:Vector.<§-p§>;
      
      public var §7@§:Boolean;
      
      public var §<!3§:§1!1§;
      
      public var §<!M§:Transform;
      
      public function §]!^§(param1:§1![§, param2:Transform)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §7@§ = true;
         super();
         §"[§ = param1;
         §<!M§ = param2;
         if(_loc5_)
         {
            §§push(param2);
            §§push(§;u§);
            if(!_loc4_)
            {
               §§push(§§pop());
            }
            §§pop().§ !%§(§§pop());
         }
         §<!3§ = new §1!1§();
         var _loc3_:Vector.<§-p§> = new Vector.<§-p§>(0,false);
         while(true)
         {
            if(_loc5_)
            {
               §8!-§ = _loc3_;
               if(_loc5_)
               {
                  §8!-§.push(new §-p§(this));
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            Lib.get_current().stage.addEventListener(Event.RESIZE,§9n§);
            break;
         }
      }
      
      override public function update(param1:Number, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = null as §-p§;
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Vector.<§-p§> = §8!-§;
         if(!_loc6_)
         {
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               if(!_loc6_)
               {
                  _loc3_++;
                  if(_loc7_)
                  {
                     if(_loc5_.§9_§ == null)
                     {
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc5_.update(param1,param2);
                     }
                  }
               }
            }
         }
      }
      
      override public function §%!B§(param1:§4!V§, param2:Boolean) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:* = null as §-p§;
         var _loc6_:* = null as §4!V§;
         if(!_loc8_)
         {
            §4!R§.§,![§(§<!M§.§+n§(),§<!3§);
            if(_loc7_)
            {
               var _temp_1:* = §<!3§;
               §§push(_temp_1);
               §§push(_temp_1.angle);
               if(!_loc8_)
               {
                  §§push(§§pop() * -57.29577951308232);
               }
               §§pop().angle = §§pop();
            }
         }
         §§push(0);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Vector.<§-p§> = §8!-§;
         loop1:
         while(true)
         {
            if(_loc7_)
            {
               while(_loc3_ < int(_loc4_.length))
               {
                  _loc5_ = _loc4_[_loc3_];
                  if(_loc8_)
                  {
                     break loop1;
                  }
                  _loc3_++;
                  if(_loc8_)
                  {
                     break;
                  }
                  if(_loc5_.§9_§ == null)
                  {
                     if(!_loc8_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  _loc6_ = §]!^§.§9!Y§;
                  _loc6_.rawData[0] = 1;
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc8_)
                        {
                           _loc6_.rawData[1] = 0;
                           _loc6_.rawData[2] = 0;
                           if(_loc8_)
                           {
                              break;
                           }
                           _loc6_.rawData[3] = 0;
                           if(!_loc7_)
                           {
                              break loop2;
                           }
                        }
                        _loc6_.rawData[4] = 0;
                        _loc6_.rawData[5] = 1;
                        if(!_loc8_)
                        {
                           _loc6_.rawData[6] = 0;
                           _loc6_.rawData[7] = 0;
                           if(!_loc8_)
                           {
                              break;
                           }
                        }
                        §§goto(addr0188);
                     }
                     _loc6_.rawData[8] = 0;
                     while(true)
                     {
                        if(!_loc8_)
                        {
                           _loc6_.rawData[9] = 0;
                           _loc6_.rawData[10] = 1;
                           _loc6_.rawData[11] = 0;
                           if(!_loc8_)
                           {
                              break loop2;
                           }
                           §§goto(addr0188);
                        }
                        §§goto(addr0199);
                     }
                     §§goto(addr01c6);
                  }
                  _loc6_.rawData[12] = 0;
                  _loc6_.rawData[13] = 0;
                  addr0188:
                  _loc6_.rawData[14] = 0;
                  while(true)
                  {
                     if(_loc7_)
                     {
                        addr0199:
                        _loc6_.rawData[15] = 1;
                        §§push(§]!^§.§9!Y§);
                        §§push(_loc5_.§="§);
                        if(_loc7_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().§%V§(§§pop(),§]!^§.§1t§);
                        if(_loc8_)
                        {
                           break;
                        }
                     }
                     addr01c6:
                     §]!^§.§9!Y§.§%V§(§<!3§.angle,§<!3§);
                     break;
                  }
                  _loc6_ = §]!^§.§9!Y§;
                  if(!_loc8_)
                  {
                     Matrix3D.§-!1§(_loc6_.rawData,§"[§.§-4§.rawData,_loc6_.rawData);
                     if(_loc7_)
                     {
                        _loc5_.§>!P§.§%!B§(param1,param2);
                        if(_loc8_)
                        {
                           continue;
                        }
                     }
                     _loc5_.§%!B§(§]!^§.§9!Y§,§7@§);
                     if(!_loc7_)
                     {
                        continue;
                     }
                  }
                  Context3DUtils.context3D.clear(0,0,0,1,1,0,Context3DClearMask.DEPTH);
               }
            }
            §7@§ = false;
            break;
         }
      }
      
      public function §9n§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = null as §-p§;
         §§push(Lib.get_current().stage.stageWidth / Lib.get_current().stage.stageHeight);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Vector.<§-p§> = §8!-§;
         if(_loc7_)
         {
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               if(!_loc6_)
               {
                  _loc3_++;
                  if(_loc7_)
                  {
                     _loc5_.§6!;§.setFragmentUniform1f(4,3,_loc2_);
                  }
               }
            }
         }
      }
      
      public function §;u§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            if(param2)
            {
               if(!_loc5_)
               {
                  §7@§ = true;
               }
            }
         }
      }
      
      public function §"!b§(param1:int) : §-p§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            while(param1 >= int(§8!-§.length))
            {
               §8!-§.push(new §-p§(this));
            }
         }
         return §8!-§[param1];
      }
      
      override public function dispose() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super.dispose();
               if(_loc1_)
               {
                  break;
               }
            }
            Lib.get_current().stage.removeEventListener(Event.RESIZE,§9n§);
            break;
         }
      }
      
      public function §5L§(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = 0;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(!_loc5_)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(param1);
                        §§push(int(§8!-§.length));
                        if(_loc6_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(!_loc5_)
                              {
                                 return;
                              }
                              break;
                           }
                           §§push(param1);
                           if(_loc5_)
                           {
                              break loop2;
                           }
                           §§push(0);
                           if(!_loc6_)
                           {
                              break loop1;
                           }
                        }
                        if(§§pop() < §§pop())
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                        }
                        break loop3;
                     }
                     param1 = 0;
                     break;
                  }
               }
               break loop3;
            }
            var _loc2_:int = §§pop();
            §§push(int(§8!-§.length));
            if(_loc6_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc6_)
            {
               while(_loc2_ < _loc3_)
               {
                  §§push(_loc2_);
                  if(_loc6_)
                  {
                     _loc2_++;
                     if(_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc4_ = §§pop();
                  if(!_loc5_)
                  {
                     §8!-§[_loc4_].§9_§ = null;
                     if(!_loc6_)
                     {
                        continue;
                     }
                  }
                  §8!-§[_loc4_].§`2§ = true;
               }
            }
            return;
         }
         §§push(§§pop() + §§pop());
         break loop2;
      }
      
      override public function §&!2§(param1:Model) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §8!-§[0].§&!2§(param1);
         }
      }
   }
}

