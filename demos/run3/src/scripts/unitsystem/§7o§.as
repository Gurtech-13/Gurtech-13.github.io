package unitsystem
{
   import §+!4§.§3!O§;
   import §+!4§.§8!_§;
   import §+!4§.Key;
   import §0!J§.§;!3§;
   import §0!J§.§;![§;
   import §2X§.§+F§;
   import §2X§.§>N§;
   import §4!6§.§=s§;
   import §`_§.§^s§;
   import com.player03.run3.level.§ !W§;
   import flash.Boot;
   import flash.Lib;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.system.System;
   import flash.text.TextField;
   import haxe.Log;
   import haxe.Timer;
   import nme3D.Context3DUtils;
   
   public class §7o§ extends Sprite
   {
      
      public static var instance:§7o§;
      
      public static var §-!a§:§;!3§;
      
      public static var controlScheme:§3!O§;
      
      public static var stageWidth:int;
      
      public static var stageHeight:int;
      
      public var paused:Boolean;
      
      public var §>!+§:Boolean;
      
      public var §!!b§:Sprite;
      
      public var §??§:Boolean;
      
      public var mouseDown:Boolean;
      
      public var §79§:§3!O§;
      
      public var §&!P§:Number;
      
      public var §!!L§:Vector.<§+F§>;
      
      public var level:§>N§;
      
      public var §8[§:Number;
      
      public var §58§:Boolean;
      
      public var §^H§:Number;
      
      public var § [§:Number;
      
      public var §]!7§:Boolean;
      
      public function §7o§(param1:Object = undefined, param2:Array = undefined, param3:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc5_:* = null;
         var _loc6_:* = null as §+F§;
         while(true)
         {
            while(true)
            {
               if(_loc8_)
               {
                  §>!+§ = false;
                  if(_loc7_)
                  {
                     continue loop5;
                  }
                  §58§ = false;
                  §]!7§ = false;
                  if(!_loc7_)
                  {
                     §8[§ = 0;
                     if(_loc7_)
                     {
                        break;
                     }
                     §^H§ = 0.5;
                     if(_loc8_)
                     {
                        §&!P§ = 0.15;
                        if(!_loc8_)
                        {
                           break;
                        }
                     }
                  }
                  § [§ = 0;
                  if(_loc7_)
                  {
                     continue loop5;
                  }
               }
               if(§7o§.instance != null)
               {
                  Boot.lastError = new Error();
                  break;
               }
               §7o§.instance = this;
               continue loop5;
            }
            throw new IllegalOperationError("Cannot create multiple games!");
         }
         super();
         var _loc4_:Stage = Lib.current.stage;
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        _loc4_.scaleMode = "noScale";
                        if(_loc7_)
                        {
                           break;
                        }
                        _loc4_.align = "topLeft";
                        _loc4_.stageFocusRect = false;
                        if(!_loc7_)
                        {
                           _loc4_.showDefaultContextMenu = false;
                           if(!_loc8_)
                           {
                              break loop5;
                           }
                           Key.init(param3);
                           if(param2 != null)
                           {
                              if(!_loc8_)
                              {
                                 break loop4;
                              }
                              §7o§.§!!U§(new §8!_§(param2));
                           }
                           §!!b§ = new Sprite();
                           addChild(§!!b§);
                           §+D§(false);
                           §!!L§ = new Vector.<§+F§>();
                           if(!_loc8_)
                           {
                              break loop3;
                           }
                        }
                     }
                     if(param1 != null)
                     {
                        _loc5_ = param1.iterator();
                        if(_loc8_)
                        {
                           while(Boolean(_loc5_.hasNext()))
                           {
                              _loc6_ = _loc5_.next();
                              if(!_loc7_)
                              {
                                 §!!L§.push(_loc6_);
                              }
                           }
                        }
                     }
                     §7o§.stageWidth = _loc4_.stageWidth;
                     §7o§.stageHeight = _loc4_.stageHeight;
                     if(!_loc7_)
                     {
                        addEventListener(Event.ENTER_FRAME,§;l§);
                        if(!_loc7_)
                        {
                           §]!7§ = true;
                           break;
                        }
                        §§goto(addr022c);
                     }
                     §§goto(addr0245);
                  }
                  _loc4_.addEventListener(Event.ACTIVATE,§9;§);
                  if(_loc8_)
                  {
                     break;
                  }
                  §§goto(addr022c);
               }
               _loc4_.addEventListener(Event.DEACTIVATE,§&h§);
               break;
            }
            _loc4_.addEventListener(MouseEvent.MOUSE_DOWN,§&2§);
            addr022c:
            _loc4_.addEventListener(MouseEvent.MOUSE_UP,§&2§);
            if(_loc8_)
            {
               addr0245:
               _loc4_.addEventListener(MouseEvent.MOUSE_MOVE,§&2§);
            }
            break;
         }
      }
      
      public static function §@n§(param1:Object = undefined, param2:String = undefined) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(§7o§.§-!a§ == null)
         {
            if(_loc3_)
            {
               §7o§.§-!a§ = §;!3§.§0!C§(param1,param2);
            }
         }
      }
      
      public static function §]!<§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(§7o§.§-!a§ != null)
         {
            if(!_loc2_)
            {
               §7o§.§-!a§.text = "";
            }
         }
      }
      
      public static function §3t§(param1:*, param2:Object = undefined) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            §§push(§;![§.§@!A§().§ 9§);
            if(!_loc5_)
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc3_:* = §§pop();
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     break;
                  }
                  if(§§pop() == null)
                  {
                     Log.trace(param1,param2);
                     break loop1;
                  }
                  if(!_loc4_)
                  {
                     break loop1;
                  }
               }
               §§push(_loc3_);
               break;
            }
            §§pop()(param1,param2);
            if(_loc5_)
            {
            }
            break;
         }
      }
      
      public static function §!!U§(param1:§3!O§) : §3!O§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(§7o§.controlScheme == param1)
            {
               if(_loc2_)
               {
                  return param1;
               }
               §7o§.controlScheme.§&h§();
               addr0048:
               if(_loc3_)
               {
                  break;
               }
            }
            else if(§7o§.controlScheme != null)
            {
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr0048);
            }
            §7o§.controlScheme = param1;
            if(_loc2_)
            {
               if(§7o§.controlScheme != null)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               §§goto(addr008f);
            }
            break;
         }
         §7o§.controlScheme.§9;§();
         addr008f:
         return §7o§.controlScheme;
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = false;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               §§push(paused);
               if(_loc2_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
               level.update(param1);
               if(!_loc3_)
               {
                  if(level == null)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     break;
                  }
               }
            }
            level.display(param1);
            break;
         }
      }
      
      public function §+D§(param1:Boolean) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            paused = param1;
         }
         return paused;
      }
      
      public function §,Z§(param1:§>N§, param2:Boolean = false) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            while(true)
            {
               if(level != null)
               {
                  §§push(param2);
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     level.dispose();
                  }
               }
               level = param1;
               §79§.reset();
               break;
            }
         }
         §7o§.controlScheme.reset();
      }
      
      public function §&2§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            mouseDown = param1.buttonDown;
         }
      }
      
      final public function §;l§(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            while(true)
            {
               §§push(false);
               if(_loc3_)
               {
                  if(§>!+§)
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(§]!7§);
                           if(_loc3_)
                           {
                              §§push(!§§pop());
                              if(!_loc3_)
                              {
                                 break;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                     }
                  }
               }
               if(§§pop())
               {
                  break;
               }
               while(true)
               {
                  §§push(Timer.stamp());
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               var _loc2_:* = §§pop();
               §§push(§§findproperty(§ [§));
               §§push(_loc2_);
               if(_loc3_)
               {
                  §§push(§§pop() - §8[§);
               }
               §§pop().§ [§ = §§pop();
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           §8[§ = _loc2_;
                           loop6:
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             §§push(true);
                                             if(_loc3_)
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   if(§ [§ <= §^H§)
                                                   {
                                                      §§pop();
                                                      if(_loc4_)
                                                      {
                                                         break loop5;
                                                      }
                                                      §§push(false);
                                                      §§push(§>!+§);
                                                      if(_loc4_)
                                                      {
                                                         break loop12;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         §§push(§]!7§);
                                                         if(!_loc3_)
                                                         {
                                                            break loop10;
                                                         }
                                                         §§push(!§§pop());
                                                         if(_loc4_)
                                                         {
                                                            break loop9;
                                                         }
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      § [§ = §&!P§;
                                                      return;
                                                   }
                                                   loop14:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§ [§ > §&!P§)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            § [§ = §&!P§;
                                                            if(_loc4_)
                                                            {
                                                               break loop14;
                                                            }
                                                         }
                                                         if(§79§ != null)
                                                         {
                                                            break;
                                                         }
                                                         break loop6;
                                                      }
                                                      §79§.update(§ [§);
                                                      §§push(§79§.§+l§("pause"));
                                                      break loop13;
                                                   }
                                                   §§push(!(stage.focus is TextField));
                                                   if(_loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§push(§§findproperty(§+D§));
                                                         §§push(paused);
                                                         if(_loc3_)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                         §§pop().§+D§(§§pop());
                                                         if(!_loc4_)
                                                         {
                                                            break loop6;
                                                         }
                                                         break loop5;
                                                      }
                                                      break loop6;
                                                   }
                                                   break loop7;
                                                }
                                                §§push(Boolean(§§pop()));
                                                if(_loc4_)
                                                {
                                                   break loop8;
                                                }
                                                if(§§pop())
                                                {
                                                   break loop14;
                                                }
                                                §§push(false);
                                             }
                                             §§push(paused);
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             §§pop();
                                             §§push(§79§.§+l§("unpause"));
                                             if(!_loc4_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                break loop9;
                                             }
                                             §§goto(addr01fe);
                                          }
                                          §§goto(addr01a4);
                                       }
                                       §§goto(addr01d9);
                                    }
                                    addr01a4:
                                    if(!Boolean(§§pop()))
                                    {
                                       break loop6;
                                    }
                                    if(_loc4_)
                                    {
                                       break loop6;
                                    }
                                    while(true)
                                    {
                                       §§push(stage.focus is TextField);
                                       if(_loc3_)
                                       {
                                          §§push(!§§pop());
                                          break loop8;
                                       }
                                       §§goto(addr01fc);
                                    }
                                    §§goto(addr01fe);
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       §+D§(false);
                                       if(!_loc4_)
                                       {
                                          break loop6;
                                       }
                                       break loop4;
                                    }
                                 }
                                 break loop6;
                              }
                              §§goto(addr01fe);
                           }
                           addr01fe:
                           addr01d9:
                           §§push(false);
                           if(§7o§.controlScheme != null)
                           {
                              §§pop();
                              addr01fc:
                              §§push(!paused);
                              break loop7;
                           }
                           if(!§§pop())
                           {
                              break loop4;
                           }
                           if(!_loc3_)
                           {
                              break loop3;
                           }
                        }
                        §7o§.controlScheme.update(§ [§);
                        break loop4;
                     }
                     §§goto(addr022e);
                  }
                  update(§ [§);
                  break;
               }
               §??§ = mouseDown;
               addr022e:
               return;
            }
         }
      }
      
      public function §&h§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(true);
               if(!_loc2_)
               {
                  while(true)
                  {
                     if(param1.target == stage)
                     {
                        §§pop();
                        §§push(§]!7§);
                        if(_loc3_)
                        {
                           §§push(!§§pop());
                           if(_loc2_)
                           {
                              break;
                           }
                           §§push(Boolean(§§pop()));
                        }
                     }
                     if(§§pop())
                     {
                        return;
                     }
                     §]!7§ = false;
                     if(_loc3_)
                     {
                        §§push(§>!+§);
                        if(!_loc2_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     break loop1;
                  }
               }
               if(!§§pop())
               {
                  break;
               }
               if(_loc2_)
               {
                  break;
               }
               §+D§(true);
               while(true)
               {
                  if(_loc3_)
                  {
                     break loop1;
                  }
                  §§goto(addr009d);
               }
               §§goto(addr00a4);
            }
            §§push(§58§);
            break;
         }
         if(§§pop())
         {
            if(_loc3_)
            {
               addr009d:
               §8Z§();
            }
         }
         addr00a4:
      }
      
      public function §9;§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §]!7§ = true;
         }
      }
      
      public function §8Z§(param1:int = 0) : void
      {
         System.exit(param1);
      }
   }
}

