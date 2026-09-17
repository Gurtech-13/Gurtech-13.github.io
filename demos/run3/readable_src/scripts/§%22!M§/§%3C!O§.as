package §"!M§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §%!Z§.§`! §;
   import §-v§.§@5§;
   import scenes.MyTurn;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §>T§.§[C§;
   import §>T§.§^d§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import openfl.Lib;
   
   public class §<!O§ implements §+<§, §^d§
   {
      
      public static var init__:Boolean;
      
      public static var §@!+§:Point3D;
      
      public static var §0!H§:Point3D;
      
      public static var instance:§<!O§;
      
      public static var §[!U§:Number = 10;
      
      public function §<!O§()
      {
      }
      
      public static function §@!A§() : §<!O§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as §<!O§;
         if(_loc2_)
         {
            if(§<!O§.instance != null)
            {
               return §<!O§.instance;
            }
         }
         return §<!O§.instance = new §<!O§();
      }
      
      public function update(param1:§[C§, param2:Number) : void
      {
         var _temp_1:* = false;
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = _temp_1;
         var _loc3_:* = null as Point3D;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = null as Point3D;
         var _loc7_:* = null as Point3D;
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  if(_loc8_)
                  {
                     while(true)
                     {
                        §§push(param1.§5!J§);
                        if(_loc8_)
                        {
                           §§push(3599.55);
                           if(_loc9_)
                           {
                              break;
                           }
                           if(§§pop() < §§pop())
                           {
                              if(!_loc9_)
                              {
                                 return;
                              }
                              break loop5;
                           }
                           §§push(param1.§5!J§);
                        }
                        §§push(3600);
                        if(!_loc9_)
                        {
                           §§push(§§pop() + §<!O§.§[!U§);
                           if(_loc8_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        break;
                     }
                     if(§§pop() > §§pop())
                     {
                        if(!_loc8_)
                        {
                           break loop3;
                        }
                     }
                     else
                     {
                        _loc3_ = param1.transform.§<!C§();
                        loop7:
                        while(true)
                        {
                           loop8:
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 QuaternionUtils.rotateVector(param1.transform.§+n§(),§<!O§.§@!+§,§<!O§.§0!H§);
                                 if(param1.§5!J§ > 3600)
                                 {
                                    while(true)
                                    {
                                       §§push(param1.§5!J§);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() - 3600);
                                          §§push(75);
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             §§push(20);
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§push(Number(§§pop()));
                                       if(!_loc8_)
                                       {
                                          break loop7;
                                       }
                                       §§push(Number(§§pop()));
                                       if(!_loc8_)
                                       {
                                          break loop8;
                                       }
                                       _loc4_ = §§pop();
                                       §§goto(addr0160);
                                    }
                                    §§goto(addr015c);
                                 }
                                 else
                                 {
                                    _loc4_ = 20;
                                 }
                              }
                              §§push(param1.§5!J§ - 3600);
                              if(!_loc9_)
                              {
                                 break;
                              }
                              break loop7;
                           }
                           §§push(§§pop() + 0.45);
                           if(!_loc8_)
                           {
                              break;
                           }
                           _loc5_ = Number(§§pop());
                           §§goto(addr0158);
                        }
                        loop2:
                        while(true)
                        {
                           §§push(0.1);
                           addr015c:
                           while(§§pop() >= §§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() - 0.1);
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       §§push(Number(§§pop()));
                                       if(_loc9_)
                                       {
                                          break loop9;
                                       }
                                    }
                                    _loc5_ = §§pop();
                                    if(!_loc9_)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc9_)
                                       {
                                          §§push(-§§pop());
                                          if(_loc8_)
                                          {
                                             break loop9;
                                          }
                                          break;
                                       }
                                       break loop9;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       continue loop2;
                                    }
                                    addr0158:
                                 }
                                 _loc4_ = §§pop();
                                 §§goto(addr0158);
                              }
                              §§push(Number(§§pop()));
                              break loop10;
                           }
                           addr0160:
                           _loc6_ = §<!O§.§0!H§;
                           if(!_loc9_)
                           {
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() * param2);
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 break;
                              }
                              _loc5_ = §§pop();
                           }
                           _loc7_ = _loc3_;
                           while(true)
                           {
                              if(!_loc9_)
                              {
                                 if(_loc7_ == null)
                                 {
                                    if(!_loc8_)
                                    {
                                       break loop3;
                                    }
                                    _loc7_ = new Point3D(0,0,0);
                                 }
                                 _loc7_.x = _loc3_.x + _loc6_.x * _loc5_;
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                              }
                              _loc7_.y = _loc3_.y + _loc6_.y * _loc5_;
                              if(_loc8_)
                              {
                                 §§push(_loc7_);
                                 §§push(_loc3_.z);
                                 if(_loc8_)
                                 {
                                    §§push(_loc6_.z);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() * _loc5_);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc9_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§pop().z = §§pop();
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                              }
                              break loop3;
                           }
                           param1.transform.§"w§(_loc3_);
                           break loop3;
                        }
                     }
                  }
                  param1.model.§#"§(false);
                  if(_loc8_)
                  {
                     break;
                  }
                  break loop4;
               }
               param1.§2!9§ = false;
               if(_loc8_)
               {
                  break;
               }
               break loop3;
            }
            param1.§5!J§ = -1;
            break;
         }
      }
      
      public function reset(param1:§[C§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         param1.model.§#"§(true);
         if(!_loc3_)
         {
            param1.§2!9§ = true;
         }
      }
   }
}

