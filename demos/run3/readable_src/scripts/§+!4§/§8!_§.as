package §+!4§
{
   import §!!$§.§ 6§;
   import §&!J§.§7=§;
   import geom3d.Transform;
   import scenes.BoatRide;
   import com.player03.layout.§ 7§;
   import flash.Lib;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import haxe.Timer;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import motion.actuators.GenericActuator;
   import motion.easing.§2f§;
   import motion.easing.IEasing;
   import motion.easing.Quad;
   
   public class §8!_§ extends §3!O§
   {
      
      public static var §>n§:Array = [37,65,81];
      
      public static var §+!6§:Array = [39,68,69];
      
      public static var §`!T§:Array = [38,87,90,188];
      
      public static var §2,§:Array = [40,83,79];
      
      public static var §"t§:Array = [32,88];
      
      public static var §?!"§:Array = [16,67,86];
      
      public static var §&!Y§:Array = [32,88,38,87,90,188];
      
      public static var §`!<§:Array = [27,80,13,8];
      
      public var §4`§:Number;
      
      public function §8!_§(param1:Array = undefined, param2:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc5_:* = null as String;
         var _loc6_:* = null as String;
         if(!_loc7_)
         {
            §4`§ = -1;
            if(!_loc7_)
            {
               super();
               if(!_loc7_)
               {
                  if(param1 != null)
                  {
                     §§push(0);
                     if(_loc8_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     if(_loc8_)
                     {
                        loop0:
                        while(_loc4_ < int(param1.length))
                        {
                           §§push(param1[_loc4_]);
                           if(!_loc7_)
                           {
                              §§push(§§pop());
                           }
                           _loc5_ = §§pop();
                           _loc4_++;
                           _loc6_ = _loc5_;
                           while(true)
                           {
                              §§push(_loc6_);
                              §§push("action");
                              if(!_loc7_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    §'S§("action",§8!_§.§"t§);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 if(_loc6_ != "down")
                                 {
                                    if(_loc6_ == "jump")
                                    {
                                       §'S§("jump",§8!_§.§&!Y§);
                                    }
                                    else
                                    {
                                       §§push(_loc6_);
                                       if(!_loc7_)
                                       {
                                          if(§§pop() == "left")
                                          {
                                             addr0108:
                                             §'S§("left",§8!_§.§>n§);
                                             continue loop0;
                                          }
                                          if(_loc6_ == "pause")
                                          {
                                             §'S§("pause",§8!_§.§`!<§);
                                             continue loop0;
                                          }
                                          §§push(_loc6_);
                                       }
                                       addr013e:
                                       if(§§pop() == "right")
                                       {
                                          if(_loc8_)
                                          {
                                             §'S§("right",§8!_§.§+!6§);
                                          }
                                       }
                                       else if(_loc6_ == "secondary action")
                                       {
                                          if(_loc8_)
                                          {
                                             §'S§("secondary action",§8!_§.§?!"§);
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       else if(_loc6_ == "up")
                                       {
                                          if(_loc8_)
                                          {
                                             break;
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                                 if(!_loc8_)
                                 {
                                    continue loop0;
                                 }
                                 §'S§("down",§8!_§.§2,§);
                                 if(_loc8_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr0108);
                              }
                              §§goto(addr013e);
                           }
                           §'S§("up",§8!_§.§`!T§);
                        }
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              if(!param2)
                              {
                                 break;
                              }
                              if(_loc7_)
                              {
                                 break;
                              }
                           }
                           Lib.current.stage.addEventListener(Event.ENTER_FRAME,§;l§);
                           break;
                        }
                     }
                     return;
                  }
               }
            }
         }
      }
      
      public function §&M§(param1:String, param2:int) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:* = null as Vector.<int>;
         var _loc5_:* = null as Vector.<int>;
         var _loc6_:* = 0;
         var _loc7_:* = null as Vector.<int>;
         var _loc3_:StringMap = §7x§;
         while(true)
         {
            while(true)
            {
               if(!_loc9_)
               {
                  §§push(param1);
                  if(_loc8_)
                  {
                     §§push(§§pop() in StringMap.§+!#§);
                     if(!_loc8_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        if(_loc8_)
                        {
                           addr0060:
                           §§push(_loc3_.existsReserved(param1));
                           if(_loc8_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc9_)
                              {
                              }
                           }
                           break;
                        }
                        continue loop2;
                     }
                     §§push(param1);
                  }
                  §§push(§§pop() in _loc3_.h);
                  break;
               }
               §§goto(addr0060);
            }
            if(§§pop())
            {
               continue loop2;
            }
            §§goto(addr00fc);
         }
         _loc4_ = §7x§.get(param1).§2!O§;
         _loc5_ = _loc4_;
         loop2:
         while(true)
         {
            while(true)
            {
               if(_loc8_)
               {
                  §§push(int(_loc5_.indexOf(param2,0)));
                  if(!_loc9_)
                  {
                     §§push(int(§§pop()));
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  _loc6_ = §§pop();
                  if(!_loc8_)
                  {
                     break loop2;
                  }
               }
               §§push(_loc6_);
               break;
            }
            if(§§pop() != -1)
            {
               break;
            }
            §§goto(addr00fc);
         }
         _loc7_ = _loc5_.splice(_loc6_,1);
         addr00fc:
      }
      
      public function §;l§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(Timer.stamp());
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
            if(!_loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  if(§4`§ >= 0)
                  {
                     §§push(§§findproperty(update));
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        §§push(§§pop() - §4`§);
                     }
                     §§pop().update(§§pop());
                     if(_loc4_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               update(0);
               if(_loc3_)
               {
               }
               break;
            }
            §4`§ = _loc2_;
            break;
         }
      }
      
      override public function §0!4§() : §5!§
      {
         return new §`N§();
      }
      
      public function §;!'§(param1:String) : Object
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:StringMap = §7x§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(§§pop() in StringMap.§+!#§);
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           addr004f:
                           §§push(_loc2_.existsReserved(param1));
                           if(_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc3_)
                              {
                              }
                           }
                           break;
                        }
                        break loop0;
                     }
                     §§push(param1);
                  }
                  §§push(§§pop() in _loc2_.h);
                  break;
               }
               §§goto(addr004f);
            }
            if(§§pop())
            {
               break;
            }
            return null;
         }
         return new §7=§(§7x§.get(param1).§2!O§);
      }
      
      public function §'S§(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:* = null as §5!§;
         var _loc4_:* = null as Vector.<§5!§>;
         var _loc5_:* = 0;
         var _loc6_:* = null as Vector.<§5!§>;
         while(true)
         {
            if(_loc10_)
            {
               §§push(§7x§.exists(param1));
               if(_loc10_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc10_)
                  {
                     §§push(!§§pop());
                  }
               }
               if(!§§pop())
               {
                  break;
               }
            }
            _loc3_ = §0!4§();
            if(!_loc9_)
            {
               §§push(§7x§.exists(param1));
               if(_loc10_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  if(_loc9_)
                  {
                     break;
                  }
                  _loc4_ = §=c§;
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc10_)
                        {
                           §§push(int(_loc4_.indexOf(§7x§.get(param1),0)));
                           if(_loc9_)
                           {
                              break;
                           }
                           §§push(int(§§pop()));
                           if(!_loc10_)
                           {
                              break;
                           }
                           _loc5_ = §§pop();
                           if(_loc9_)
                           {
                              break loop2;
                           }
                        }
                        §§push(_loc5_);
                        break;
                     }
                     if(§§pop() != -1)
                     {
                        break;
                     }
                  }
                  _loc6_ = _loc4_.splice(_loc5_,1);
               }
               §7x§.§1!R§(param1,_loc3_);
               if(!_loc10_)
               {
                  break;
               }
            }
            §=c§.push(_loc3_);
            break;
         }
         var _loc7_:Vector.<int> = §7x§.get(param1).§2!O§;
         var _loc8_:* = param2.iterator();
         if(!_loc9_)
         {
            while(Boolean(_loc8_.hasNext()))
            {
               §§push(int(_loc8_.next()));
               if(_loc10_)
               {
                  §§push(int(§§pop()));
                  if(_loc10_)
                  {
                     _loc5_ = §§pop();
                     if(_loc9_)
                     {
                        continue;
                     }
                     §§push(int(_loc7_.indexOf(_loc5_)));
                  }
               }
               if(§§pop() == -1)
               {
                  if(_loc10_)
                  {
                     _loc7_.push(_loc5_);
                  }
               }
            }
         }
      }
      
      public function §<!E§(param1:String, param2:int) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:* = null as §5!§;
         var _loc4_:* = null as Vector.<§5!§>;
         var _loc5_:* = 0;
         var _loc6_:* = null as Vector.<§5!§>;
         while(true)
         {
            if(_loc8_)
            {
               while(true)
               {
                  §§push(§7x§.exists(param1));
                  if(!_loc9_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  §§push(!§§pop());
                  break;
               }
               if(!§§pop())
               {
                  break;
               }
            }
            _loc3_ = §0!4§();
            if(!_loc9_)
            {
               §§push(§7x§.exists(param1));
               if(_loc8_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  if(_loc9_)
                  {
                     break;
                  }
                  _loc4_ = §=c§;
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc8_)
                        {
                           §§push(int(_loc4_.indexOf(§7x§.get(param1),0)));
                           if(_loc8_)
                           {
                              §§push(int(§§pop()));
                              if(!_loc8_)
                              {
                                 break;
                              }
                           }
                           _loc5_ = §§pop();
                           if(!_loc8_)
                           {
                              break loop2;
                           }
                        }
                        §§push(_loc5_);
                        break;
                     }
                     if(§§pop() != -1)
                     {
                        break;
                     }
                  }
                  _loc6_ = _loc4_.splice(_loc5_,1);
               }
               §7x§.§1!R§(param1,_loc3_);
               if(!_loc9_)
               {
                  §=c§.push(_loc3_);
               }
            }
            break;
         }
         var _loc7_:Vector.<int> = §7x§.get(param1).§2!O§;
         if(_loc8_)
         {
            if(int(_loc7_.indexOf(param2)) == -1)
            {
               if(!_loc9_)
               {
                  _loc7_.push(param2);
               }
            }
         }
      }
   }
}

