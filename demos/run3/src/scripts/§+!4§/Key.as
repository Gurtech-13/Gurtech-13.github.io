package §+!4§
{
   import §!!$§.§ 6§;
   import §3!b§.Cutscenes;
   import §3!b§.LightningStrikesTwice;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §>T§.§[C§;
   import §@]§.§4$§;
   import §[!P§.§30§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import openfl.Lib;
   
   public class Key
   {
      
      public static var §,i§:Vector.<Boolean>;
      
      public static var §^!B§:int;
      
      public static var §1J§:Function;
      
      public function Key()
      {
      }
      
      public static function init(param1:Object = undefined) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:* = 0;
         §§push([]);
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc8_)
         {
            while(_loc3_ < 223)
            {
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc7_)
                  {
                     _loc3_++;
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc4_ = §§pop();
               if(!_loc8_)
               {
                  _loc2_.push(false);
               }
            }
         }
         §§push(_loc2_);
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               Key.§,i§ = Vector.<Boolean>(_loc5_);
               if(_loc8_)
               {
                  break;
               }
            }
            Key.§1J§ = param1;
            break;
         }
         var _loc6_:Stage = Lib.get_current().stage;
         if(_loc7_)
         {
            _loc6_.addEventListener(KeyboardEvent.KEY_DOWN,Key.§&!_§);
            while(true)
            {
               if(_loc7_)
               {
                  _loc6_.addEventListener(KeyboardEvent.KEY_UP,Key.§!E§);
                  if(_loc8_)
                  {
                     break;
                  }
               }
               _loc6_.addEventListener(Event.DEACTIVATE,Key.§-8§);
               break;
            }
         }
      }
      
      public static function §&!_§(param1:KeyboardEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         Key.§^!B§ = param1.keyCode;
         if(_loc2_)
         {
            if(Key.§^!B§ >= 223)
            {
               if(_loc2_)
               {
                  return;
               }
            }
            else
            {
               Key.§,i§[Key.§^!B§] = true;
            }
         }
      }
      
      public static function §!E§(param1:KeyboardEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         Key.§<`§(param1.keyCode);
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  §§push(false);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§push(Key.§1J§);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  if(§§pop() == null)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  §§pop();
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               §§push(param1.keyCode == 27);
               if(_loc2_)
               {
                  §§push(Boolean(§§pop()));
               }
               break;
            }
            if(§§pop())
            {
               if(_loc2_)
               {
                  Key.§1J§(param1);
               }
            }
            break;
         }
      }
      
      public static function §-8§(param1:Event = undefined) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = 0;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc6_)
         {
            while(_loc3_ < 223)
            {
               while(true)
               {
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     _loc3_++;
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc4_ = §§pop();
               if(_loc6_)
               {
                  Key.§,i§[_loc4_] = false;
               }
            }
         }
      }
      
      public static function §<`§(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(param1 >= 223)
         {
            if(_loc2_)
            {
               return;
            }
         }
         else
         {
            Key.§,i§[param1] = false;
         }
      }
      
      public static function §5!=§(param1:int) : int
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
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
                                       loop11:
                                       while(true)
                                       {
                                          §§push(false);
                                          §§push(97);
                                          if(_loc2_)
                                          {
                                             §§push(param1);
                                             if(!_loc3_)
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         §§pop();
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(param1);
                                                         §§push(122);
                                                         if(_loc3_)
                                                         {
                                                            break loop12;
                                                         }
                                                         §§push(§§pop() <= §§pop());
                                                         if(!_loc2_)
                                                         {
                                                            break loop10;
                                                         }
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§push(param1);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(-32);
                                                               if(_loc2_)
                                                               {
                                                                  break loop12;
                                                               }
                                                               break loop7;
                                                            }
                                                            break loop8;
                                                         }
                                                         break loop9;
                                                      }
                                                      break;
                                                   }
                                                   §§push(true);
                                                   if(_loc3_)
                                                   {
                                                      break loop1;
                                                   }
                                                   §§push(true);
                                                   if(_loc2_)
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         loop15:
                                                         while(true)
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(true);
                                                                  §§push(false);
                                                                  if(_loc2_)
                                                                  {
                                                                     if(48 > param1)
                                                                     {
                                                                        break loop14;
                                                                     }
                                                                     if(_loc3_)
                                                                     {
                                                                        break loop14;
                                                                     }
                                                                     §§pop();
                                                                     if(_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(param1);
                                                                     if(!_loc2_)
                                                                     {
                                                                        break loop17;
                                                                     }
                                                                     §§push(57);
                                                                     if(!_loc2_)
                                                                     {
                                                                        break loop15;
                                                                     }
                                                                     §§push(§§pop() <= §§pop());
                                                                     if(_loc3_)
                                                                     {
                                                                        break loop14;
                                                                     }
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  break loop14;
                                                               }
                                                               §§goto(addr00d4);
                                                            }
                                                            §§goto(addr00b8);
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§pop();
                                                               if(!_loc2_)
                                                               {
                                                                  break loop11;
                                                               }
                                                               §§goto(addr00c9);
                                                            }
                                                            §§goto(addr00d4);
                                                         }
                                                         §§goto(addr00d5);
                                                      }
                                                      addr00d5:
                                                      if(!§§pop())
                                                      {
                                                         §§pop();
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               addr00cd:
                                                               §§push(false);
                                                               if(!_loc3_)
                                                               {
                                                                  addr00b8:
                                                                  §§push(65);
                                                                  §§push(param1);
                                                                  break loop15;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc2_)
                                                               {
                                                                  addr00d4:
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               break;
                                                            }
                                                            addr00c9:
                                                            §§goto(addr00cd);
                                                         }
                                                         §§push(param1 <= 90);
                                                      }
                                                      if(§§pop())
                                                      {
                                                         break loop0;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         break loop0;
                                                      }
                                                   }
                                                   §§pop();
                                                   §§push(9);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc3_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(_loc2_)
                                                   {
                                                      param1 = §§pop();
                                                      if(_loc2_)
                                                      {
                                                         break loop13;
                                                      }
                                                      break loop2;
                                                   }
                                                   break loop5;
                                                }
                                                break loop6;
                                             }
                                             break loop4;
                                          }
                                          §§push(param1);
                                          break loop4;
                                       }
                                       §§goto(addr00f5);
                                    }
                                    §§goto(addr00fa);
                                 }
                                 §§goto(addr0114);
                              }
                              §§goto(addr02d3);
                           }
                           §§goto(addr0103);
                        }
                        §§goto(addr02a1);
                     }
                     §§goto(addr0301);
                  }
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     addr00f5:
                     §§push(Boolean(§§pop()));
                  }
                  break loop0;
               }
               §§goto(addr029f);
            }
            if(!§§pop())
            {
               switch(param1)
               {
                  case 10:
                  case 13:
                     §§push(13);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                     §§goto(addr0360);
                     break;
                  case 33:
                     §§push(49);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr033b);
                     break;
                  case 34:
                  case 39:
                     §§push(222);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr02e0);
                     break;
                  case 35:
                     §§push(51);
                     if(_loc2_)
                     {
                        addr02d3:
                        return §§pop();
                     }
                     break;
                  case 36:
                     §§push(52);
                     if(_loc2_)
                     {
                        addr02e0:
                        return §§pop();
                     }
                     §§goto(addr036e);
                     break;
                  case 37:
                     return 53;
                  case 38:
                     return 55;
                  case 40:
                     return 57;
                  case 41:
                     §§push(48);
                     if(_loc2_)
                     {
                        addr0301:
                        return §§pop();
                     }
                     §§goto(addr0385);
                     break;
                  case 42:
                     §§push(56);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr031d);
                     break;
                  case 43:
                  case 61:
                     §§push(187);
                     if(_loc2_)
                     {
                        addr033b:
                        return §§pop();
                     }
                     §§goto(addr036e);
                     break;
                  case 44:
                  case 60:
                     return 188;
                  case 45:
                  case 95:
                     addr031d:
                     return §§pop();
                     return 189;
                  case 46:
                  case 62:
                     return 190;
                  case 47:
                  case 63:
                     return 191;
                  case 58:
                  case 59:
                     return 186;
                  case 64:
                     return 50;
                  case 91:
                  case 123:
                     addr0360:
                     return §§pop();
                     return 219;
                  case 92:
                  case 124:
                     §§push(220);
                     if(_loc2_)
                     {
                        addr036e:
                        return §§pop();
                     }
                     break;
                  case 93:
                  case 125:
                     return 221;
                  case 94:
                     return 54;
                  case 96:
                  case 126:
                     addr0385:
                     return §§pop();
                     return 192;
                  default:
                     break loop2;
               }
               return §§pop();
            }
            if(_loc3_)
            {
               break loop2;
            }
            addr0114:
            §§push(param1);
            if(!_loc3_)
            {
               return §§pop();
            }
            return §§pop();
         }
         if(§§pop())
         {
            break loop1;
         }
         addr00fa:
         §§pop();
         if(_loc2_)
         {
            addr0103:
            §§push(32 == param1);
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
            }
            break loop1;
         }
         addr02a1:
         return -1;
         addr029f:
      }
   }
}

