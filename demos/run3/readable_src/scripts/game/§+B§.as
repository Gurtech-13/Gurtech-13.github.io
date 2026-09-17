package game
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §-!!§.§&!;§;
   import §-!!§.§+"§;
   import §-!!§.§8!8§;
   import §6!Q§.§"q§;
   import §6!Q§.§'!E§;
   import §6!Q§.§]u§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Main;
   import com.player03.run3.Music;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.§!!Q§;
   import com.player03.run3.level.§59§;
   import com.player03.run3.menu.§=!>§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.§%@§;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import nme3D.Context3DUtils;
   
   public class §+B§ extends §'!O§
   {
      
      public static var §-6§:Boolean;
      
      public static var §8!4§:§%@§;
      
      public static var §&_§:EReg;
      
      public static var §1!T§:int = 10;
      
      public var §[!^§:§<!0§;
      
      public var §%7§:§+"§;
      
      public var §"A§:§+"§;
      
      public var §%!O§:§<!0§;
      
      public var §@%§:TextField;
      
      public var §#!&§:§<!0§;
      
      public var §=n§:String;
      
      public var §%]§:String;
      
      public var §'!A§:§5v§;
      
      public function §+B§(param1:§5v§)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  §=n§ = null;
                  if(!_loc2_)
                  {
                     break;
                  }
                  §%]§ = null;
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               super(100,100);
               if(!_loc3_)
               {
                  break;
               }
               break loop0;
            }
            §'!A§ = param1;
            break;
         }
      }
      
      public function §5_§(param1:int) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  if(§'!A§.editor == null)
                  {
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  else
                  {
                     §§push(§'!A§.editor.§?!_§.§;!P§);
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr009a);
                  }
               }
               §§push(param1);
               if(!_loc3_)
               {
                  return §§pop();
               }
               break;
            }
            while(true)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0087);
            }
            §§goto(addr009a);
         }
         §§push(param1);
         if(!_loc3_)
         {
            return §§pop();
         }
         addr0085:
         addr0087:
         if(§§pop() >= 1)
         {
            §§push(§'!A§.editor.§?!_§);
            §§push(param1);
            if(_loc4_)
            {
               §§push(int(§§pop()));
            }
            return §§pop().§;!P§ = §§pop();
         }
         addr009a:
         return §'!A§.editor.§?!_§.§;!P§;
         addr008b:
      }
      
      public function §0n§(param1:int) : int
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
               if(_loc3_)
               {
                  if(§'!A§.editor == null)
                  {
                     §§push(param1);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     break;
                  }
                  §§push(param1);
                  if(_loc3_)
                  {
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(0);
                           if(!_loc2_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    §'!A§.editor.§]K§("power","0");
                                    if(_loc3_)
                                    {
                                       §§push(0);
                                       if(_loc3_)
                                       {
                                          §§goto(addr0075);
                                       }
                                       break loop1;
                                    }
                                    break loop2;
                                 }
                                 break;
                              }
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 break loop1;
                              }
                              §§push(10);
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(!_loc2_)
                              {
                                 §'!A§.editor.§;T§("power");
                              }
                              break;
                           }
                           §§push(§'!A§.editor);
                           §§push("power");
                           §§push(Std.string(Number(§+B§.§8!4§.§[=§(param1 / 10))));
                           if(_loc3_)
                           {
                              §§push(§§pop());
                           }
                           §§pop().§]K§(§§pop(),§§pop());
                           break loop2;
                        }
                        addr00a7:
                        §§push(10);
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        break loop0;
                     }
                     §§push(param1);
                     break loop0;
                  }
                  addr0075:
                  return §§pop();
               }
               §§goto(addr00a7);
            }
            return §§pop();
         }
         return §§pop();
      }
      
      public function §05§(param1:int) : int
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = 0;
         if(§'!A§.editor == null)
         {
            §'!6§(null);
            return param1;
         }
         while(true)
         {
            if(§%]§ == null)
            {
               _loc2_ = §'!A§.editor.§?!_§.§=F§.§+K§;
               if(_loc6_)
               {
               }
               addr0093:
               §§push(_loc2_);
            }
            else
            {
               §§push(Std);
               §§push(§%]§);
               if(_loc5_)
               {
                  §§push(§§pop().substr("tunnel".length));
               }
               §§push(int(§§pop().parseInt(§§pop())));
               if(!_loc6_)
               {
                  _loc2_ = §§pop();
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§goto(addr0093);
               }
            }
            if(§§pop() == param1)
            {
               break;
            }
            var _loc3_:int = §'!A§.editor.§?!_§.§5k§;
            while(true)
            {
               if(_loc5_)
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     break;
                  }
                  if(§§pop() <= _loc2_)
                  {
                     §§push(-1);
                     if(!_loc6_)
                     {
                        break;
                     }
                     var _loc4_:* = §§pop();
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              loop0:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc6_)
                                    {
                                       §§push(param1);
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       §§push(int(§§pop() % §§pop()));
                                    }
                                    §§push(0);
                                    break;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(param1);
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       param1 = §§pop() + §§pop();
                                       §§push(param1);
                                       §§push(3);
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(3);
                                       if(_loc6_)
                                       {
                                          break loop4;
                                       }
                                       param1 = §§pop();
                                       _loc4_ = 1;
                                       if(!_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       addr014e:
                                       §§push(_loc3_);
                                    }
                                    else
                                    {
                                       §§push(param1);
                                       if(_loc5_)
                                       {
                                          §§push(_loc3_);
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          break loop3;
                                       }
                                    }
                                    param1 = §§pop();
                                    break loop0;
                                 }
                                 if(§§pop() <= §§pop())
                                 {
                                    continue;
                                 }
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§goto(addr014e);
                              }
                           }
                           break loop0;
                        }
                        return §§pop();
                     }
                     if(§§pop() < §§pop())
                     {
                        §§push(_loc2_);
                        if(_loc5_)
                        {
                           break loop4;
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           §§push(§§findproperty(§'!6§));
                           §§push("tunnel");
                           §§push(param1);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + §§pop() + ",");
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 break;
                              }
                           }
                           §§push(int(§§pop() / param1));
                           break;
                        }
                        §§pop().§'!6§(§§pop() + §§pop());
                     }
                     return §§pop();
                  }
               }
               §§push(1);
               if(_loc5_)
               {
               }
               break;
            }
            §§push(int(§§pop()));
            continue loop3;
         }
         §'!6§(null);
         return param1;
      }
      
      public function §6!M§(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               if(§'!A§.editor == null)
               {
                  break;
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            §§push(§'!A§.editor);
            §§push("music");
            §§push(Music.§,!0§[param1]);
            if(_loc3_)
            {
               §§push(§§pop());
            }
            §§pop().§]K§(§§pop(),§§pop());
            break;
         }
      }
      
      public function §90§(param1:String, param2:String = undefined, param3:int = 1) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc4_:BitmapData = new BitmapData(93,74,false,16777215);
         if(!_loc8_)
         {
            §'!A§.editor.§1P§(_loc4_);
            if(!_loc8_)
            {
               §%,§(_loc4_,param3);
            }
         }
         var _loc5_:§9'§ = §9'§.§@!A§();
         var _loc6_:DisplayObject = new Bitmap(_loc4_);
         §§push(param2);
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc7_ == null)
               {
                  if(_loc9_)
                  {
                     §§push("Level");
                     if(_loc9_)
                     {
                        §§push(§§pop());
                     }
                     _loc7_ = §§pop();
                     if(_loc8_)
                     {
                        break;
                     }
                  }
               }
               _loc5_.§?!;§.§8!<§(_loc7_,param1,_loc6_);
               if(_loc8_)
               {
                  break;
               }
               _loc4_.dispose();
               if(!_loc9_)
               {
                  break;
               }
            }
            Context3DUtils.§"[§ = §'!A§.editor.§"[§;
            break;
         }
      }
      
      public function §+x§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc4_:* = null as String;
         var _loc8_:* = null as String;
         §§push(null);
         if(!_loc10_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc10_)
         {
            while(true)
            {
               §§push(§+B§.§&_§.match(§'!A§.editor.title));
               if(!_loc10_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               §§push(!§§pop());
               break;
            }
            if(§§pop())
            {
               if(!_loc10_)
               {
                  §'!E§.§@!A§().§>!W§("You need to number your levels to submit a set.");
                  if(!_loc9_)
                  {
                     §§goto(addr00bf);
                  }
               }
               return;
            }
            while(true)
            {
               §§push(§+B§.§&_§.matched(1));
               if(_loc9_)
               {
                  §§push(§§pop());
                  if(_loc9_)
                  {
                     if(§§pop().length == 0)
                     {
                        if(_loc9_)
                        {
                           §'!E§.§@!A§().§>!W§("Your title can\'t just be a number.");
                           if(_loc10_)
                           {
                              §§goto(addr00e2);
                           }
                        }
                        §§goto(addr00bf);
                     }
                     else
                     {
                        §§push(§+B§.§&_§.matched(1));
                        if(!_loc10_)
                        {
                           §§push(§§pop());
                           if(_loc10_)
                           {
                              break;
                           }
                        }
                     }
                  }
               }
               §§push(§§pop());
               break;
            }
            _loc2_ = §§pop();
            addr00e2:
            §§push("");
            if(!_loc10_)
            {
               §§push(§§pop());
            }
            var _loc3_:* = §§pop();
            §§push(0);
            if(_loc9_)
            {
               §§push(int(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(0);
            if(_loc9_)
            {
               §§push(int(§§pop()));
            }
            var _loc6_:* = §§pop();
            var _loc7_:Vector.<String> = §8A§.§@!A§().§ !0§(true);
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  if(_loc9_)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(_loc6_);
                        if(!_loc9_)
                        {
                           break;
                        }
                        §§push(int(_loc7_.length));
                        if(!_loc10_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              addr024e:
                              if(!_loc10_)
                              {
                                 §§push(_loc5_);
                                 break;
                              }
                              §§push(§'!E§.§@!A§());
                              §§push("You need at least two levels in the \"");
                              if(_loc9_)
                              {
                                 §§push(§§pop() + _loc2_);
                                 if(!_loc10_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc10_)
                                       {
                                          §§push(§§pop() + "\" series.");
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(§§pop());
                                       break;
                                    }
                                 }
                              }
                              §§pop().§>!W§(§§pop());
                              if(!_loc10_)
                              {
                                 break loop3;
                              }
                              break loop4;
                           }
                           _loc8_ = _loc7_[_loc6_];
                           if(!_loc10_)
                           {
                              _loc6_++;
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
                                             §§push(_loc8_);
                                             if(_loc9_)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!_loc10_)
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(int(§§pop().indexOf(§§pop())));
                                                               if(_loc9_)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc10_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  if(_loc10_)
                                                                  {
                                                                     break loop13;
                                                                  }
                                                                  §§push(§8A§.§@!A§().§`e§(_loc8_,""));
                                                                  if(_loc10_)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  _loc4_ = §§pop();
                                                                  §§push(_loc4_);
                                                                  if(!_loc9_)
                                                                  {
                                                                     break loop11;
                                                                  }
                                                                  §§push("");
                                                                  if(_loc10_)
                                                                  {
                                                                     break loop7;
                                                                  }
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§push(_loc5_);
                                                               }
                                                               §§push(0);
                                                               break;
                                                            }
                                                            if(§§pop() > §§pop())
                                                            {
                                                               §§push(_loc3_);
                                                               §§push("\n");
                                                               if(_loc9_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc9_)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           break;
                                                                        }
                                                                     }
                                                                     break loop8;
                                                                  }
                                                                  break loop9;
                                                               }
                                                               break loop10;
                                                            }
                                                            break;
                                                         }
                                                         §§push(_loc3_);
                                                         if(_loc9_)
                                                         {
                                                            break;
                                                         }
                                                         break loop11;
                                                      }
                                                   }
                                                   if(§§pop() == null)
                                                   {
                                                      break;
                                                   }
                                                   §§push("");
                                                   if(_loc9_)
                                                   {
                                                      break loop6;
                                                   }
                                                   break loop10;
                                                }
                                             }
                                             §§push("null");
                                             if(!_loc10_)
                                             {
                                                break loop7;
                                             }
                                             break loop6;
                                          }
                                          §§goto(addr0203);
                                       }
                                       §§goto(addr0215);
                                    }
                                    _loc3_ = §§pop();
                                    if(_loc10_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc9_)
                                    {
                                       break loop8;
                                    }
                                 }
                                 addr0215:
                                 §§push(§§pop());
                                 break loop8;
                              }
                              §§push(§§pop() + _loc4_);
                              if(!_loc10_)
                              {
                                 addr0203:
                                 §§push(§§pop());
                              }
                              break loop7;
                           }
                           _loc5_++;
                           continue;
                        }
                        if(§§pop() > §§pop())
                        {
                           §90§(_loc3_,"Level set",_loc5_);
                           break loop4;
                        }
                        if(!_loc9_)
                        {
                           break loop3;
                        }
                     }
                     §§goto(addr0244);
                     §§push(1);
                  }
                  §§goto(addr024e);
               }
               return;
            }
            return;
         }
         addr00bf:
      }
      
      public function §!!>§(param1:MouseEvent = undefined) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(§§findproperty(§90§));
            §§push(§'!A§.editor.§?!_§.§][§());
            if(!_loc3_)
            {
               §§push(§§pop());
            }
            §§pop().§90§(§§pop());
         }
      }
      
      public function §'!6§(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               §§push(true);
               if(_loc3_)
               {
                  if(param1 == null)
                  {
                     break;
                  }
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §§pop();
            }
            §§push(§'!A§.editor == null);
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               if(_loc3_)
               {
                  §%]§ = null;
                  §=n§ = null;
                  §§push(param1);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
                  break;
               }
            }
            else
            {
               §%]§ = param1;
            }
            §=n§ = §'!A§.editor.title;
            return param1;
         }
         return §§pop();
      }
      
      public function §%1§(param1:int, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               if(§'!A§.editor == null)
               {
                  break;
               }
               if(!_loc4_)
               {
                  break;
               }
            }
            §'!A§.editor.§?!_§.§,!_§.§%^§(param1,param2);
            break;
         }
      }
      
      public function § 4§(param1:Boolean) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:* = null as String;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           if(param1)
                           {
                              §§push(§9'§.§@!A§().§?!;§.isGuest());
                              if(_loc6_)
                              {
                                 continue loop7;
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc5_)
                              {
                                 break loop1;
                              }
                              _loc2_ = §§pop();
                              §§push(§"A§);
                              §§push(_loc2_);
                              if(!_loc6_)
                              {
                                 §§push(!§§pop());
                              }
                              §§pop().visible = §§pop();
                              §@%§.visible = §"A§.visible;
                              if(!_loc5_)
                              {
                                 break loop0;
                              }
                           }
                           else
                           {
                              §§push(§%]§);
                              if(_loc5_)
                              {
                                 if(§§pop() == null)
                                 {
                                    break loop4;
                                 }
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr02c3);
                              }
                              §§goto(addr0317);
                           }
                        }
                        if(§%7§ == null)
                        {
                           break loop0;
                        }
                        if(!_loc5_)
                        {
                           break loop4;
                        }
                        §§push(false);
                        if(§"A§.visible)
                        {
                           if(!_loc6_)
                           {
                              continue loop7;
                           }
                        }
                        else
                        {
                           §§goto(addr00ca);
                        }
                        §§goto(addr00cb);
                     }
                     §§goto(addr0254);
                  }
                  §§goto(addr0347);
               }
               §§pop();
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              §§push(§+B§.§&_§.match(§'!A§.editor.title));
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc5_)
                              {
                                 break loop7;
                              }
                              _loc3_ = Boolean(§§pop());
                              §%7§.visible = _loc3_;
                              if(_loc5_)
                              {
                                 if(§%7§.visible)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(§+B§.§&_§.matched(1));
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop());
                                          if(_loc5_)
                                          {
                                             if(§§pop() == "Level")
                                             {
                                                if(!_loc5_)
                                                {
                                                   break loop4;
                                                }
                                                §%7§.§-7§.text = "Submit level set";
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push("Submit level set: \"");
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§+B§.§&_§.matched(1));
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc6_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   §§push(§§pop());
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   break;
                                                }
                                                _loc4_ = §§pop();
                                                if(!_loc6_)
                                                {
                                                   §%7§.§-7§.text = _loc4_ + "\"";
                                                }
                                                else
                                                {
                                                   addr0254:
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                      §§push(true);
                                                      if(!_loc6_)
                                                      {
                                                         if(§'!A§.editor == null)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         §§pop();
                                                         if(_loc5_)
                                                         {
                                                            break loop1;
                                                         }
                                                         §§goto(addr02bc);
                                                      }
                                                      §§goto(addr029c);
                                                   }
                                                   §§goto(addr029d);
                                                }
                                             }
                                             layout.§%X§(new §?y§(§%7§));
                                             if(_loc5_)
                                             {
                                                break loop0;
                                             }
                                             break loop4;
                                          }
                                          break loop5;
                                       }
                                       break loop6;
                                    }
                                    break loop4;
                                 }
                                 break loop0;
                              }
                              §§goto(addr01fe);
                           }
                           §§goto(addr0254);
                        }
                        §§goto(addr02a8);
                     }
                     §§goto(addr02bd);
                  }
                  §§goto(addr0315);
               }
               §§goto(addr030d);
            }
            addr029d:
            §§push(§=n§ == §'!A§.editor.title);
            if(!_loc6_)
            {
               §§push(!§§pop());
               if(!_loc6_)
               {
                  addr029c:
                  §§push(Boolean(§§pop()));
               }
            }
            if(!§§pop())
            {
               if(_loc5_)
               {
                  §§goto(addr02a8);
               }
               §§goto(addr02be);
            }
            §§goto(addr02bf);
         }
         §'!6§(null);
         §%!O§.§?F§(§'!A§.editor.§?!_§.§=F§.§+K§);
         while(true)
         {
            if(!_loc6_)
            {
               §[!^§.§?F§(§'!A§.editor.§?!_§.§;!P§);
               §§push(§'!A§.editor.§4<§("power"));
               if(!_loc5_)
               {
                  addr02a8:
                  §§pop();
                  addr02be:
                  addr02bf:
                  addr02bd:
                  addr02bc:
                  if(!§8A§.§@!A§().§9q§(§=n§))
                  {
                     addr02c3:
                     §'!6§(null);
                     break;
                  }
                  addr0317:
                  §§push(§59§);
                  §§push(§'!A§.editor.§?!_§.§][§());
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                  }
                  §§push(§§pop().§<!S§(§§pop(),"layout",§%]§));
                  if(!_loc6_)
                  {
                     addr030d:
                     §§push(§§pop());
                     if(_loc5_)
                     {
                        addr0315:
                        §§push(§§pop());
                     }
                  }
                  _loc4_ = §§pop();
                  if(!_loc6_)
                  {
                     §'!6§(null);
                     Main.instance.§,Z§(new Game(§'!A§.editor.title,_loc4_));
                  }
                  break;
               }
               if(!§§pop())
               {
                  break;
               }
            }
            addr01fe:
            §#!&§.§?F§(int(Math.round(Number(§+B§.§8!4§.inverse(Std.parseFloat(§'!A§.editor.§>!]§("power")))) * 10)));
            break;
         }
         addr0347:
      }
      
      public function §6&§(param1:Game) : void
      {
      }
      
      public function §%,§(param1:BitmapData, param2:int) : void
      {
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc5_:* = null as § 7§;
         var _loc6_:* = null as § 7§;
         var _loc8_:* = null as §8!8§;
         var _loc9_:* = null as §&d§;
         var _loc1_:Number = 6;
         §§push(§§findproperty(§`z§));
         §§push(§6!M§);
         if(!_loc11_)
         {
            §§push(§§pop());
         }
         var _loc2_:§`z§ = new §§pop().§`z§(§§pop());
         if(!_loc11_)
         {
            addChild(_loc2_);
         }
         while(true)
         {
            §§push(§&!;§);
            §§push(16777215);
            §§push(24);
            §§push(null);
            §§push("(Color selection has moved! To pick a color,\n");
            if(_loc10_)
            {
               §§push(§§pop() + "press the + button in the toolbar.)");
               if(!_loc10_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc3_:TextField = §§pop().§9Q§(§§pop(),§§pop(),§§pop(),§§pop());
         var _loc4_:* = null;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc10_)
               {
                  if(_loc4_ != null)
                  {
                     break;
                  }
                  if(_loc11_)
                  {
                     break loop1;
                  }
               }
               _loc4_ = int(Number(_loc3_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc3_),new §=!]§(int(_loc4_)));
            break;
         }
         _loc5_ = new §?y§(_loc3_);
         _loc6_ = new §?y§(_loc2_);
         while(true)
         {
            if(!_loc11_)
            {
               §&d§.§1$§().add(_loc5_,new §+X§(_loc1_,§2u§.BOTTOM),_loc6_);
               if(!_loc11_)
               {
                  addChild(_loc3_);
                  if(!_loc10_)
                  {
                     break;
                  }
               }
            }
            §§push(§§findproperty(§%!O§));
            §§push(§§findproperty(§<!0§));
            §§push(20);
            §§push(§05§);
            if(!_loc11_)
            {
               §§push(§§pop());
            }
            §§pop().§%!O§ = new §§pop().§<!0§(§§pop(),§§pop(),null,"Sides:");
            break;
         }
         _loc5_ = new §?y§(§%!O§);
         _loc6_ = new §?y§(_loc3_);
         while(true)
         {
            if(_loc10_)
            {
               §&d§.§1$§().add(_loc5_,new §+X§(50,§2u§.BOTTOM),_loc6_);
               if(!_loc11_)
               {
                  addChild(§%!O§);
                  if(!_loc10_)
                  {
                     break;
                  }
               }
            }
            §§push(§§findproperty(§[!^§));
            §§push(§§findproperty(§<!0§));
            §§push(100);
            §§push(§5_§);
            if(!_loc11_)
            {
               §§push(§§pop());
            }
            §§pop().§[!^§ = new §§pop().§<!0§(§§pop(),§§pop(),5,"Tile size:");
            break;
         }
         _loc5_ = new §?y§(§[!^§);
         _loc6_ = new §?y§(§%!O§);
         while(true)
         {
            if(!_loc11_)
            {
               §&d§.§1$§().add(_loc5_,new §+X§(0,§2u§.BOTTOM),_loc6_);
               if(!_loc10_)
               {
                  break;
               }
               addChild(§[!^§);
               if(!_loc10_)
               {
                  break;
               }
            }
            §§push(§§findproperty(§#!&§));
            §§push(§§findproperty(§<!0§));
            §§push(10);
            §§push(§0n§);
            if(_loc10_)
            {
               §§push(§§pop());
            }
            §§pop().§#!&§ = new §§pop().§<!0§(§§pop(),§§pop(),null,"Power:");
            break;
         }
         _loc5_ = new §?y§(§#!&§);
         _loc6_ = new §?y§(§[!^§);
         while(true)
         {
            if(!_loc11_)
            {
               §&d§.§1$§().add(_loc5_,new §+X§(0,§2u§.BOTTOM),_loc6_);
               if(_loc10_)
               {
                  addChild(§#!&§);
                  if(_loc11_)
                  {
                     break;
                  }
               }
            }
            §@%§ = §&!;§.§9Q§(16777215,28,null,"Remember to playtest before you");
            break;
         }
         var _loc7_:TextField = §@%§;
         _loc4_ = null;
         loop7:
         while(true)
         {
            while(true)
            {
               if(_loc10_)
               {
                  if(_loc4_ != null)
                  {
                     break;
                  }
                  if(!_loc10_)
                  {
                     break loop7;
                  }
               }
               _loc4_ = int(Number(_loc7_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc7_),new §=!]§(int(_loc4_)));
            break;
         }
         _loc5_ = new §?y§(§@%§);
         _loc6_ = new §?y§(§#!&§);
         while(true)
         {
            if(!_loc11_)
            {
               §&d§.§1$§().add(_loc5_,new §+X§(40,§2u§.BOTTOM),_loc6_);
               if(!_loc10_)
               {
                  break;
               }
            }
            addChildAt(§@%§,0);
            if(_loc10_)
            {
               §§push(§§findproperty(§"A§));
               §§push(§§findproperty(§+"§));
               §§push(§!!>§);
               if(_loc10_)
               {
                  §§push(§§pop());
               }
               §§pop().§"A§ = new §§pop().§+"§(§§pop(),0,40,"Submit");
            }
            break;
         }
         _loc8_ = §"A§;
         if(!_loc11_)
         {
            §&d§.§1$§().add(new §?y§(_loc8_),new §"q§(11184810,6710886,3.6));
         }
         _loc5_ = new §?y§(§"A§);
         _loc6_ = new §?y§(§@%§);
         loop10:
         while(true)
         {
            loop11:
            while(true)
            {
               if(_loc10_)
               {
                  §&d§.§1$§().add(_loc5_,new §+X§(_loc1_,§2u§.BOTTOM),_loc6_);
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        addChildAt(§"A§,0);
                        if(!_loc10_)
                        {
                           break;
                        }
                     }
                     if(§9'§.§@!A§().§?!;§.§ G§)
                     {
                        if(!_loc11_)
                        {
                           break;
                        }
                        break loop10;
                     }
                     break loop11;
                  }
               }
               §§push(§§findproperty(§%7§));
               §§push(§§findproperty(§+"§));
               §§push(§+x§);
               if(!_loc11_)
               {
                  §§push(§§pop());
               }
               §§pop().§%7§ = new §§pop().§+"§(§§pop(),0,40,"Submit level set");
               if(_loc10_)
               {
                  _loc8_ = §%7§;
                  if(_loc10_)
                  {
                     §&d§.§1$§().add(new §?y§(_loc8_),new §"q§(11184810,6710886,3.6));
                  }
                  _loc5_ = new §?y§(§%7§);
                  _loc6_ = new §?y§(§"A§);
                  _loc9_ = null;
                  loop13:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc11_)
                        {
                           if(_loc9_ != null)
                           {
                              _loc9_ = _loc9_;
                              break;
                           }
                        }
                        _loc9_ = §&d§.§1$§();
                        if(_loc10_)
                        {
                           break;
                        }
                        break loop13;
                     }
                     §§push(_loc9_);
                     §§push(_loc5_);
                     §§push(§§findproperty(§+X§));
                     §§push(_loc1_);
                     if(_loc10_)
                     {
                        §§push(§§pop() * 3);
                     }
                     §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.RIGHT),_loc6_);
                     if(!_loc11_)
                     {
                        break;
                     }
                     §§goto(addr0544);
                  }
                  _loc9_.add(_loc5_,new §4$§(false,0.5),_loc6_);
                  if(!_loc11_)
                  {
                     addr0544:
                     addChildAt(§%7§,0);
                  }
                  break;
               }
               break loop10;
            }
            §6&§(§'!A§.editor);
            break;
         }
      }
   }
}

