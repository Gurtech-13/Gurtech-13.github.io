package §4!8§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §1!a§.§#r§;
   import §1!a§.§,!7§;
   import §^!0§.§%2§;
   import §^!0§.§7P§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§2!,§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   import haxe.§%!-§;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import openfl.Assets;
   
   public class §1!3§ extends EventDispatcher
   {
      
      public static var save:SharedObject;
      
      public static var §"$§:String = "version_";
      
      public static var §++§:String = "text_";
      
      public var §%!@§:§1!3§;
      
      public var §?V§:int;
      
      public var path:String;
      
      public var http:§%!-§;
      
      public var §8m§:Boolean;
      
      public var §1!Z§:int;
      
      public var §3e§:String;
      
      public var §72§:Boolean;
      
      public var data:String;
      
      public var §>X§:Boolean;
      
      public function §1!3§(param1:String, param2:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(param2 == null)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§push(true);
                  if(_loc3_)
                  {
                     break loop0;
                  }
                  param2 = §§pop();
               }
               §8m§ = false;
               break;
            }
            §72§ = false;
            §1!Z§ = 0;
            § L§.low = 570952;
            super();
            loop3:
            while(true)
            {
               while(true)
               {
                  if(_loc4_)
                  {
                     path = param1;
                     §>X§ = param2;
                     if(_loc3_)
                     {
                        break;
                     }
                     if(!param2)
                     {
                        break;
                     }
                     if(!_loc4_)
                     {
                        break loop3;
                     }
                  }
                  while(true)
                  {
                     §§push(Reflect.hasField(§1!3§.save.data,"version_" + param1));
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                     }
                     §§goto(addr00f2);
                  }
                  §§goto(addr00f3);
               }
               §§goto(addr012b);
            }
            §§goto(addr00fc);
         }
         while(true)
         {
            if(§§pop())
            {
               if(_loc3_)
               {
                  break;
               }
               §1!Z§ = Reflect.field(§1!3§.save.data,"version_" + param1);
            }
            addr00f3:
            §§push(Reflect.hasField(§1!3§.save.data,"text_" + param1));
            if(_loc4_)
            {
               addr00f2:
               §§push(Boolean(§§pop()));
            }
            if(§§pop())
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            §§goto(addr012b);
         }
         addr00fc:
         §§push(§§findproperty(data));
         §§push(§2!,§.§-e§(Reflect.field(§1!3§.save.data,"text_" + param1),param1));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         §§pop().data = §§pop();
         addr012b:
      }
      
      public function § !8§(param1:§%2§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §8m§ = false;
            while(true)
            {
               if(_loc2_)
               {
                  if(!Boolean(hasEventListener(IOErrorEvent.IO_ERROR)))
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     break;
                  }
               }
               dispatchEvent(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,param1.errorMessage,param1.errorCode));
               break;
            }
         }
      }
      
      public function §%!I§(param1:§,!7§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §8m§ = false;
            while(true)
            {
               if(_loc3_)
               {
                  §3e§ = param1.URL;
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               §2![§();
               break;
            }
         }
      }
      
      public function §;!5§(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(Boolean(hasEventListener(HTTPStatusEvent.HTTP_STATUS)))
            {
               if(!_loc2_)
               {
                  dispatchEvent(new HTTPStatusEvent(HTTPStatusEvent.HTTP_STATUS,false,false,param1));
               }
            }
         }
      }
      
      public function §6w§(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               if(Boolean(hasEventListener(IOErrorEvent.IO_ERROR)))
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  dispatchEvent(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,param1));
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            http = null;
            break;
         }
      }
      
      public function §8!E§(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         § L§.low = 705550;
         if(!_loc3_)
         {
            §1!Z§ = §?V§;
            §1!3§.save.data["version_" + path] = §1!Z§;
            data = param1;
            §1!3§.save.data["text_" + path] = §2!,§.§^P§(param1,path);
            if(!_loc3_)
            {
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(!_loc3_)
                        {
                           if(§%!@§ == null)
                           {
                              break;
                           }
                           if(_loc2_)
                           {
                              §§pop();
                              if(!_loc2_)
                              {
                                 break loop1;
                              }
                              §§push(§%!@§.§72§);
                              if(_loc3_)
                              {
                                 break loop0;
                              }
                           }
                        }
                        §§push(!§§pop());
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                        break;
                     }
                     §§goto(addr00cd);
                  }
               }
               addr00cd:
               if(Boolean(§§pop()))
               {
                  §%!@§.addEventListener(Event.COMPLETE,§@!&§);
                  if(_loc2_)
                  {
                  }
               }
               else
               {
                  §@!&§();
               }
               http = null;
            }
         }
         break loop1;
      }
      
      public function §!!!§(param1:Object) : Boolean
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = null as §#r§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  if(!_loc4_)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(false);
                        if(!_loc4_)
                        {
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!_loc4_)
                                    {
                                       if(data == null)
                                       {
                                          break;
                                       }
                                       if(!_loc4_)
                                       {
                                          §§pop();
                                          if(!_loc3_)
                                          {
                                             break loop5;
                                          }
                                          §§push(param1 == null);
                                          if(_loc4_)
                                          {
                                             break loop4;
                                          }
                                       }
                                    }
                                    §§push(!§§pop());
                                    if(!_loc4_)
                                    {
                                       break loop4;
                                    }
                                    break;
                                 }
                                 §§goto(addr0065);
                              }
                              §§pop();
                              §§push(§1!Z§ >= param1);
                              if(!_loc3_)
                              {
                                 break loop3;
                              }
                           }
                           addr0065:
                           if(!Boolean(§§pop()))
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              break loop5;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break;
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     §§pop();
                     §§push(true);
                     if(§%!@§ == null)
                     {
                        break loop1;
                     }
                     if(_loc4_)
                     {
                        break loop0;
                     }
                  }
                  §§pop();
                  §§push(§%!@§.§72§);
                  break loop1;
               }
               if(§§pop())
               {
                  §§push(false);
                  if(!_loc4_)
                  {
                     break loop0;
                  }
                  addr0103:
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        addr010d:
                        §8m§ = true;
                     }
                     addr0114:
                     _loc2_ = new §#r§();
                     if(!_loc4_)
                     {
                        _loc2_.Key = path;
                        if(_loc3_)
                        {
                           _loc2_.ThruCDN = true;
                           if(_loc3_)
                           {
                              §§push(§7P§);
                              §§push(_loc2_);
                              §§push(§%!I§);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                              }
                              §§push(§ !8§);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                              }
                              §§pop().GetContentDownloadUrl(§§pop(),§§pop(),§§pop());
                           }
                        }
                     }
                  }
               }
               else
               {
                  § L§.low = 721828;
                  if(_loc3_)
                  {
                     §?V§ = param1;
                     while(true)
                     {
                        if(_loc3_)
                        {
                           if(§3e§ != null)
                           {
                              if(!_loc4_)
                              {
                                 §2![§();
                                 break;
                              }
                              §§goto(addr010d);
                           }
                           else
                           {
                              §§push(§8m§);
                              if(!_loc4_)
                              {
                                 §§push(!§§pop());
                              }
                              §§goto(addr0103);
                           }
                        }
                        §§goto(addr0114);
                     }
                  }
               }
               return true;
            }
            return Boolean(§§pop());
         }
         return §§pop();
      }
      
      public function §^v§(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(_loc3_)
                        {
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(false);
                                    §§push(false);
                                    if(!_loc2_)
                                    {
                                       §§push(false);
                                       if(_loc2_)
                                       {
                                          break loop6;
                                       }
                                       if(data == null)
                                       {
                                          break;
                                       }
                                       if(_loc2_)
                                       {
                                          break loop6;
                                       }
                                       §§pop();
                                       if(!_loc3_)
                                       {
                                          break loop5;
                                       }
                                    }
                                    §§push(param1 == null);
                                    if(!_loc2_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc3_)
                                       {
                                          break loop6;
                                       }
                                       break;
                                    }
                                    break loop6;
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       break loop5;
                                    }
                                    §§pop();
                                    if(_loc2_)
                                    {
                                       break loop3;
                                    }
                                    §§push(§1!Z§ >= param1);
                                    if(!_loc2_)
                                    {
                                       break loop5;
                                    }
                                 }
                                 §§goto(addr0077);
                              }
                              §§push(Boolean(§§pop()));
                              break loop7;
                           }
                           addr0077:
                           if(!Boolean(§§pop()))
                           {
                              break;
                           }
                           §§pop();
                           §§push(true);
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(§%!@§ == null)
                           {
                              break loop3;
                           }
                           if(_loc2_)
                           {
                              break loop1;
                           }
                           §§pop();
                           if(_loc2_)
                           {
                              break loop0;
                           }
                        }
                        §§push(§%!@§.§72§);
                        break loop1;
                     }
                     §§goto(addr00b8);
                  }
                  §§push(Boolean(§§pop()));
                  break loop4;
               }
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  break loop3;
               }
               addr00b8:
               if(!§§pop())
               {
                  break;
               }
               §§pop();
               §§push(§72§);
               if(_loc3_)
               {
                  §§push(Boolean(§§pop()));
                  break;
               }
               §§goto(addr00ff);
            }
            if(§§pop())
            {
               if(_loc3_)
               {
                  return;
               }
               addr010a:
               §?V§ = param1;
               while(true)
               {
                  §§push(§§findproperty(§8!E§));
                  §§push(Assets);
                  §§push("text/content/");
                  if(_loc3_)
                  {
                     §§push(§§pop() + path);
                     if(_loc2_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop());
                  break;
               }
               §§push(§§pop().getText(§§pop()));
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().§8!E§(§§pop());
            }
            else
            {
               addr00ff:
               §§push(Assets);
               §§push("text/content/");
               if(!_loc2_)
               {
                  §§push(§§pop() + path);
                  if(_loc3_)
                  {
                     §§push(§§pop());
                  }
               }
               if(Boolean(§§pop().exists(§§pop(),"TEXT")))
               {
                  § L§.low = 530427;
                  §§goto(addr010a);
               }
            }
         }
      }
      
      public function §2![§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(true);
                     if(_loc2_)
                     {
                        if(§3e§ == null)
                        {
                           break;
                        }
                        if(_loc1_)
                        {
                           break loop0;
                        }
                        §§pop();
                        if(_loc1_)
                        {
                           break loop1;
                        }
                        §§push(http == null);
                        if(_loc1_)
                        {
                           break loop0;
                        }
                     }
                     §§push(!§§pop());
                     if(_loc2_)
                     {
                        break loop0;
                     }
                     break;
                  }
                  §§goto(addr005c);
               }
               http = new §%!-§(§3e§);
               if(!_loc1_)
               {
                  §§push(http);
                  §§push(§;!5§);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§3!]§ = §§pop();
                  §§push(http);
                  §§push(§6w§);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().onError = §§pop();
                  §§goto(addr00c4);
               }
               §§goto(addr00db);
            }
            addr005c:
            if(Boolean(§§pop()))
            {
               if(_loc2_)
               {
                  return;
               }
            }
            else
            {
               § L§.low = 959583;
               if(!_loc1_)
               {
                  break loop1;
               }
               addr00c4:
               §§push(http);
               §§push(§8!E§);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().§?H§ = §§pop();
            }
            addr00db:
            http.§3!=§();
         }
      }
      
      public function §@!&§(param1:Event = undefined) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               if(§72§)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
                  break;
               }
               if(§%!@§ != null)
               {
                  if(!_loc2_)
                  {
                     §%!@§.removeEventListener(Event.COMPLETE,§@!&§);
                     if(_loc2_)
                     {
                        break;
                     }
                  }
               }
            }
            §72§ = true;
            if(!_loc2_)
            {
               break;
            }
            §§goto(addr0090);
         }
         dispatchEvent(new Event(Event.COMPLETE));
         addr0090:
      }
   }
}

