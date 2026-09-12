package haxeutils.sound
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import flash.Boot;
   import flash.geom.Rectangle;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import motion.actuators.TransformActuator;
   import openfl.Assets;
   
   public class §5! § implements §+<§
   {
      
      public static var init__:Boolean;
      
      public static var §3!P§:§=!U§;
      
      public static var instance:§5! §;
      
      public var volume:Number;
      
      public var soundVolume:Number;
      
      public var soundMuted:Boolean;
      
      public var §&[§:Vector.<String>;
      
      public var §@h§:AdvancedSound;
      
      public var §[!2§:Boolean;
      
      public var §`!?§:Number;
      
      public var §33§:String;
      
      public var §`!P§:AdvancedSound;
      
      public var §2!C§:AdvancedSound;
      
      public var §@!W§:String;
      
      public function §5! §()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §`!?§ = 0;
            while(true)
            {
               if(!_loc2_)
               {
                  §&[§ = new Vector.<String>();
                  if(_loc1_)
                  {
                     §'J§(1);
                     if(!_loc1_)
                     {
                        break;
                     }
                  }
               }
               §3!K§(1);
               break;
            }
         }
      }
      
      public static function §@!A§() : §5! §
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §5! §;
         if(!_loc2_)
         {
            if(§5! §.instance != null)
            {
               return §5! §.instance;
            }
         }
         return §5! §.instance = new §5! §();
      }
      
      public function §'J§(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  §§push(volume);
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(§§pop() == param1)
                  {
                     break loop0;
                  }
                  if(_loc3_)
                  {
                     volume = param1;
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
               }
               §4!=§();
               break loop0;
            }
            return §§pop();
         }
         §§push(volume);
         break loop1;
      }
      
      public function §3!K§(param1:Number) : Number
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
               while(true)
               {
                  if(!_loc2_)
                  {
                     §§push(soundVolume);
                     if(_loc2_)
                     {
                        break;
                     }
                     if(§§pop() == param1)
                     {
                        break loop1;
                     }
                     if(_loc2_)
                     {
                        break loop0;
                     }
                  }
                  soundVolume = param1;
                  if(_loc3_)
                  {
                     break loop0;
                  }
                  break loop1;
               }
               return §§pop();
            }
            §§push(soundVolume);
            break loop2;
         }
         §#!1§();
         break loop1;
      }
      
      public function §6e§(param1:Boolean) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = false;
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
                     §§push(soundMuted);
                     if(!_loc3_)
                     {
                        §§push(param1);
                        if(_loc4_)
                        {
                           if(§§pop() == §§pop())
                           {
                              break;
                           }
                           soundMuted = param1;
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§push(true);
                           if(!_loc4_)
                           {
                              break loop3;
                           }
                           §§push(soundMuted);
                        }
                        if(!§§pop())
                        {
                           if(!_loc4_)
                           {
                              break loop1;
                           }
                           §§pop();
                           §§push(int(§&[§.length) > 0);
                           if(_loc3_)
                           {
                              break loop0;
                           }
                           §§push(Boolean(§§pop()));
                           if(_loc3_)
                           {
                              break loop0;
                           }
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break loop0;
                  }
                  §§goto(addr00dd);
               }
               §§goto(addr00c5);
            }
            return §§pop();
         }
         _loc2_ = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               if(§`!P§ != null)
               {
                  if(!_loc3_)
                  {
                     if(_loc2_)
                     {
                        §`!P§.stop();
                        break;
                     }
                     §`!P§.resume();
                     break;
                  }
               }
               else
               {
                  addr00c5:
                  if(_loc2_)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     break;
                  }
               }
            }
            §<!Z§(§33§);
            break;
         }
         addr00dd:
         §§push(soundMuted);
         break loop1;
      }
      
      public function §32§(param1:Boolean) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = false;
         §§push(§[!2§);
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     break;
                  }
                  §[!2§ = param1;
                  §§push(true);
                  §§push(§[!2§);
               }
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        §§pop();
                        if(_loc3_)
                        {
                           break loop0;
                        }
                        §§push(int(§&[§.length) > 0);
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                        §§push(Boolean(§§pop()));
                     }
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc3_)
                              {
                                 _loc2_ = §§pop();
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§2!C§ != null)
                                    {
                                       if(§2!C§ != §@h§)
                                       {
                                          §2!C§.stop();
                                          if(!_loc4_)
                                          {
                                             break loop4;
                                          }
                                          §96§(§@h§);
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                       }
                                       if(§2!C§ == null)
                                       {
                                          break loop3;
                                       }
                                       §§push(_loc2_);
                                       if(!_loc3_)
                                       {
                                          addr00d2:
                                          if(§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                §2!C§.stop();
                                                break loop3;
                                             }
                                             break loop4;
                                          }
                                          §2!C§.resume();
                                          if(!_loc3_)
                                          {
                                             break loop4;
                                          }
                                          break loop3;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc2_);
                                       if(_loc4_)
                                       {
                                          break loop1;
                                       }
                                    }
                                    §§goto(addr0118);
                                 }
                                 §§goto(addr0122);
                              }
                              §§goto(addr00d2);
                           }
                           §§goto(addr0149);
                        }
                        §4!=§();
                        break;
                     }
                     §§goto(addr0135);
                  }
               }
               addr0118:
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  addr0122:
                  §#v§(§@!W§);
                  if(_loc3_)
                  {
                     break;
                  }
               }
               addr0135:
               if(§`!P§ != null)
               {
                  if(_loc4_)
                  {
                     addr0149:
                     §#!1§();
                  }
               }
               break;
            }
         }
         return §§pop();
      }
      
      public function §6C§(param1:AdvancedSound) : AdvancedSound
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc2_)
               {
                  if(§`!P§ == null)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               §`!P§.stop();
               if(_loc2_)
               {
                  break;
               }
               break loop0;
            }
            §`!P§ = param1;
            break;
         }
         return §`!P§;
      }
      
      public function §96§(param1:AdvancedSound) : AdvancedSound
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               if(§2!C§ != null)
               {
                  if(!_loc3_)
                  {
                     §2!C§.stop();
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
               }
            }
            §2!C§ = param1;
            break;
         }
         return §2!C§;
      }
      
      public function §4e§(param1:AdvancedSound) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            §§push(false);
            if(§2!C§ == param1)
            {
               §§pop();
               §§push(§2!C§ != null);
               if(!_loc3_)
               {
                  break;
               }
            }
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(§§pop())
                  {
                     §§push(§2!C§.§#!b§);
                     if(!_loc2_)
                     {
                        §§push(0);
                        if(!_loc2_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              §§push(§2!C§);
                              §§push(§`!?§);
                              if(_loc3_)
                              {
                                 §§push(§§pop() * 0.8);
                              }
                              §§pop().fadeIn(§§pop());
                           }
                           return;
                        }
                     }
                     else
                     {
                        addr00fe:
                        §§push(0);
                     }
                     addr0101:
                     §§push(§§pop() > §§pop());
                     if(_loc2_)
                     {
                        break loop0;
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        §§push(false);
                        if(!(§@h§ == param1 && Boolean(§§pop())))
                        {
                           break loop2;
                        }
                        if(!_loc2_)
                        {
                           §§pop();
                           if(_loc2_)
                           {
                              break loop1;
                           }
                           §§push(false);
                        }
                        if(§2!C§ != null)
                        {
                           §§pop();
                           §§goto(addr00fe);
                           §§push(§2!C§.§#!b§);
                        }
                     }
                     §§goto(addr0101);
                  }
                  §§push(!§§pop());
                  break loop0;
               }
               addr010a:
               if(!§§pop())
               {
                  §@h§ = param1;
                  break;
               }
               if(_loc3_)
               {
                  return;
               }
               §§goto(addr0167);
            }
            §@!W§ = null;
            if(§2!C§ != null)
            {
               §§push(§2!C§);
               §§push(§`!?§);
               §§push(§-Z§);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().fadeOut(§§pop(),§§pop());
            }
            else
            {
               §-Z§();
            }
            addr0167:
            return;
         }
         §§goto(addr010a);
      }
      
      public function §4!=§() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as SoundTransform;
         loop0:
         while(true)
         {
            if(!_loc2_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(false);
                     §§push(false);
                     if(_loc3_)
                     {
                        if(§2!C§ == null)
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           break loop1;
                        }
                        §§pop();
                        §§push(§2!C§.§[r§ == null);
                        if(!_loc3_)
                        {
                           break loop1;
                        }
                     }
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     break;
                  }
                  loop3:
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 §§push(true);
                                 if(§@h§ != null)
                                 {
                                    break;
                                 }
                                 if(_loc2_)
                                 {
                                    break loop4;
                                 }
                                 §§pop();
                                 if(_loc2_)
                                 {
                                    break loop3;
                                 }
                              }
                              while(true)
                              {
                                 §§push(false);
                                 if(_loc3_)
                                 {
                                    break loop4;
                                 }
                                 §§goto(addr00bc);
                              }
                           }
                        }
                        while(true)
                        {
                           if(§2!C§ != null)
                           {
                              §§pop();
                              if(_loc2_)
                              {
                                 break loop3;
                              }
                              §§push(§2!C§.§4!'§ == null);
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§push(!§§pop());
                           }
                           §§push(Boolean(§§pop()));
                           break loop5;
                        }
                     }
                     if(§§pop())
                     {
                        break;
                     }
                     break loop0;
                  }
               }
               §§push(Boolean(§§pop()));
               break loop2;
            }
            _loc1_ = §2!C§.§[r§.soundTransform;
            while(true)
            {
               if(_loc3_)
               {
                  if(_loc1_ != null)
                  {
                     break;
                  }
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               _loc1_ = new SoundTransform();
               break;
            }
            _loc1_.volume = volume;
            if(_loc3_)
            {
               §2!C§.§[r§.soundTransform = _loc1_;
            }
            break;
         }
      }
      
      public function §#!1§() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as SoundTransform;
         loop0:
         while(true)
         {
            if(!_loc2_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        if(§`!P§ == null)
                        {
                           break loop1;
                        }
                        if(!_loc2_)
                        {
                           §§pop();
                           if(_loc2_)
                           {
                              break;
                           }
                           §§push(§`!P§.§[r§ == null);
                           if(_loc2_)
                           {
                              break loop1;
                           }
                           §§push(!§§pop());
                           if(_loc2_)
                           {
                              break loop1;
                           }
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break loop1;
                  }
               }
               if(§§pop())
               {
                  break loop2;
               }
               break;
            }
            _loc1_ = §`!P§.§[r§.soundTransform;
            if(!_loc2_)
            {
               while(true)
               {
                  if(_loc1_ == null)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     _loc1_ = new SoundTransform();
                  }
                  _loc1_.volume = soundVolume;
                  if(!_loc2_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            §`!P§.§[r§.soundTransform = _loc1_;
            break;
         }
      }
      
      public function §<!Z§(param1:String, param2:Boolean = true, param3:Boolean = true) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:* = null as AdvancedSound;
         var _loc5_:* = null as StringMap;
         var _loc6_:* = null as Sound;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(!_loc8_)
                        {
                           §§push(true);
                           §§push(param1);
                           if(_loc8_)
                           {
                              break;
                           }
                           if(§§pop() == §33§)
                           {
                              if(_loc8_)
                              {
                                 break loop4;
                              }
                              §§pop();
                              §§push(§`!P§ == null);
                              if(_loc8_)
                              {
                                 break loop3;
                              }
                              §§push(Boolean(§§pop()));
                              if(_loc8_)
                              {
                                 break loop1;
                              }
                           }
                           if(!§§pop())
                           {
                              §§push(true);
                              §§push(§[!2§);
                              break loop0;
                           }
                        }
                        §§push(true);
                        §§push(true);
                        if(!_loc7_)
                        {
                           break loop0;
                        }
                        loop12:
                        while(true)
                        {
                           if(param1 != null)
                           {
                              addr0089:
                              if(_loc7_)
                              {
                                 §§pop();
                                 §§push(param1);
                                 break loop5;
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc7_)
                              {
                                 break;
                              }
                           }
                           loop13:
                           while(true)
                           {
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    §§pop();
                                    §§push(param1);
                                    if(!_loc7_)
                                    {
                                       break loop13;
                                    }
                                    §§push(§§pop() == "none");
                                    if(_loc8_)
                                    {
                                       break loop3;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    §6C§(null);
                                    return;
                                 }
                                 §§push(true);
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 §§goto(addr02f1);
                              }
                              §§push(soundMuted);
                              if(!_loc8_)
                              {
                                 break loop12;
                              }
                              break loop0;
                           }
                           §§goto(addr00f0);
                        }
                        if(!§§pop())
                        {
                           if(!_loc8_)
                           {
                              break loop4;
                           }
                        }
                        §§goto(addr0102);
                     }
                     §§push(§§pop().length == 0);
                     if(_loc8_)
                     {
                        continue loop13;
                     }
                     §§goto(addr0089);
                  }
                  §§pop();
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(§&[§.length);
                        if(_loc7_)
                        {
                           addr00f0:
                           §§push(int(§§pop()));
                           if(!_loc8_)
                           {
                              §§push(0);
                              if(!_loc7_)
                              {
                                 break;
                              }
                              if(§§pop() > §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    §33§ = param1;
                                    if(_loc7_)
                                    {
                                       return;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr0306);
                                 }
                              }
                              else
                              {
                                 _loc4_ = null;
                                 if(param2)
                                 {
                                    _loc5_ = §5! §.§3!P§;
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          if(!(param1 in StringMap.§+!#§))
                                          {
                                             _loc4_ = _loc5_.h[param1];
                                             break;
                                          }
                                       }
                                       _loc4_ = _loc5_.getReserved(param1);
                                       break;
                                    }
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(_loc4_ == null)
                                       {
                                          if(_loc7_)
                                          {
                                             while(true)
                                             {
                                                §§push(false);
                                                if(_loc7_)
                                                {
                                                   §§push(Assets.exists(param1,"SOUND"));
                                                   if(_loc7_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc7_)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      break;
                                                   }
                                                   §§pop();
                                                   §§push(Assets.exists(param1,"MUSIC"));
                                                }
                                                §§push(!§§pop());
                                                if(!_loc8_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                _loc6_ = Assets.§,L§(param1);
                                                if(_loc7_)
                                                {
                                                   if(_loc6_ == null)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §6C§(null);
                                                         if(_loc8_)
                                                         {
                                                            addr0215:
                                                            Boot.lastError = new Error();
                                                            if(!_loc8_)
                                                            {
                                                               throw new Error(param1 + " wasn\'t embedded properly.");
                                                            }
                                                            addr0232:
                                                            _loc4_ = new AdvancedSound(_loc6_,0,param3);
                                                            while(true)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(!param2)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               _loc5_ = §5! §.§3!P§;
                                                               if(!_loc8_)
                                                               {
                                                                  if(!(param1 in StringMap.§+!#§))
                                                                  {
                                                                     _loc5_.h[param1] = _loc4_;
                                                                     break;
                                                                  }
                                                                  if(_loc8_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               _loc5_.setReserved(param1,_loc4_);
                                                               if(_loc8_)
                                                               {
                                                               }
                                                               break;
                                                            }
                                                            addr028d:
                                                            §6C§(_loc4_);
                                                            if(!_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            break loop8;
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   if(_loc6_.bytesTotal == 0)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         §§goto(addr0215);
                                                      }
                                                   }
                                                }
                                                §§goto(addr0232);
                                             }
                                          }
                                          return;
                                       }
                                       §§goto(addr028d);
                                    }
                                    _loc4_.play();
                                    break;
                                 }
                                 §33§ = param1;
                                 §#!1§();
                              }
                              §§goto(addr030d);
                           }
                        }
                        else
                        {
                           §§goto(addr02e4);
                        }
                        §§goto(addr02e5);
                     }
                     §§goto(addr02e7);
                  }
                  §§goto(addr030d);
               }
               §§goto(addr02f0);
            }
            §§push(Boolean(§§pop()));
            break loop3;
         }
         while(true)
         {
            if(!§§pop())
            {
               if(!_loc8_)
               {
                  §§pop();
                  if(_loc8_)
                  {
                     break;
                  }
                  §§push(int(§&[§.length) > 0);
                  if(_loc7_)
                  {
                     break loop1;
                  }
               }
            }
            addr02f0:
            addr02f1:
            if(!§§pop())
            {
               if(_loc7_)
               {
                  break;
               }
               addr0306:
               §#!1§();
            }
            addr030d:
            return;
         }
         §`!P§.play(false);
         §§goto(addr0306);
      }
      
      public function §#v§(param1:String, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:* = null as AdvancedSound;
         var _loc5_:* = null as StringMap;
         var _loc6_:* = null as Sound;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc8_)
               {
                  while(true)
                  {
                     while(true)
                     {
                        loop13:
                        while(true)
                        {
                           loop16:
                           while(true)
                           {
                              loop17:
                              while(true)
                              {
                                 §§push(true);
                                 §§push(param1);
                                 if(_loc8_)
                                 {
                                    while(true)
                                    {
                                       if(§§pop() == §@!W§)
                                       {
                                          if(_loc7_)
                                          {
                                             break loop17;
                                          }
                                          §§pop();
                                          if(!_loc8_)
                                          {
                                             break loop16;
                                          }
                                          §§push(§2!C§ == null);
                                          if(!_loc7_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc7_)
                                             {
                                                break loop14;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr00c7);
                                          }
                                       }
                                       if(!§§pop())
                                       {
                                          §§push(true);
                                          §§push(§[!2§);
                                          break;
                                       }
                                       §§push(true);
                                       §§push(true);
                                       if(_loc7_)
                                       {
                                          break loop13;
                                       }
                                       if(param1 == null)
                                       {
                                          continue loop14;
                                       }
                                       if(!_loc8_)
                                       {
                                          continue loop14;
                                       }
                                       §§pop();
                                       if(!_loc8_)
                                       {
                                          continue loop6;
                                       }
                                       §§push(param1);
                                    }
                                    §§goto(addr02c2);
                                 }
                                 §§push(§§pop().length == 0);
                                 if(!_loc7_)
                                 {
                                    break loop13;
                                 }
                                 continue loop14;
                              }
                              §§goto(addr011c);
                           }
                           §§goto(addr0121);
                        }
                        §§push(Boolean(§§pop()));
                        if(!_loc7_)
                        {
                           continue loop14;
                        }
                        §§goto(addr00f1);
                     }
                     while(true)
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§pop();
                              if(_loc7_)
                              {
                                 break loop1;
                              }
                              §§push(param1);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() == "none");
                                 if(_loc8_)
                                 {
                                    continue loop6;
                                 }
                              }
                              else
                              {
                                 §§goto(addr0104);
                              }
                              §§goto(addr011c);
                           }
                           else
                           {
                              §§goto(addr00c7);
                           }
                        }
                        §§goto(addr02cf);
                     }
                     §§goto(addr02d4);
                  }
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
                              §§push(Boolean(§§pop()));
                              if(_loc8_)
                              {
                                 addr00c7:
                                 if(§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       break loop1;
                                    }
                                    §4e§(null);
                                    if(_loc8_)
                                    {
                                       return;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(true);
                                       §§push(§[!2§);
                                       if(_loc8_)
                                       {
                                          addr00f1:
                                          if(!§§pop())
                                          {
                                             §§pop();
                                             §§push(§&[§.length);
                                             if(_loc7_)
                                             {
                                                break loop7;
                                             }
                                             §§push(int(§§pop()));
                                             if(_loc7_)
                                             {
                                                break loop6;
                                             }
                                             §§push(0);
                                             if(_loc7_)
                                             {
                                                break loop5;
                                             }
                                             §§push(§§pop() > §§pop());
                                             if(!_loc8_)
                                             {
                                                addr02c6:
                                                §§pop();
                                                break loop4;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          addr011d:
                                          if(§§pop())
                                          {
                                             addr0121:
                                             §@!W§ = param1;
                                             if(_loc8_)
                                             {
                                                return;
                                             }
                                             break loop4;
                                          }
                                          _loc4_ = null;
                                          if(param2)
                                          {
                                             _loc5_ = §5! §.§3!P§;
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   if(!(param1 in StringMap.§+!#§))
                                                   {
                                                      _loc4_ = _loc5_.h[param1];
                                                      break;
                                                   }
                                                }
                                                _loc4_ = _loc5_.getReserved(param1);
                                                break;
                                             }
                                          }
                                          if(_loc4_ == null)
                                          {
                                             if(!_loc8_)
                                             {
                                                break loop0;
                                             }
                                             while(true)
                                             {
                                                §§push(false);
                                                if(_loc8_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Assets.exists(param1,"SOUND"));
                                                      if(_loc8_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc8_)
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
                                                   if(!_loc7_)
                                                   {
                                                      §§pop();
                                                      §§push(!Assets.exists(param1,"MUSIC"));
                                                   }
                                                }
                                                §§push(Boolean(§§pop()));
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                return;
                                             }
                                             _loc6_ = Assets.§,L§(param1);
                                             if(_loc8_)
                                             {
                                                if(_loc6_ == null)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §4e§(null);
                                                      if(!_loc7_)
                                                      {
                                                         §§goto(addr0211);
                                                      }
                                                   }
                                                   addr0223:
                                                   Boot.lastError = new Error();
                                                   if(!_loc7_)
                                                   {
                                                      §§goto(addr0234);
                                                   }
                                                }
                                                else if(_loc6_.bytesTotal == 0)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr0223);
                                                   }
                                                   addr0234:
                                                   throw new Error(param1 + " wasn\'t embedded properly.");
                                                }
                                                _loc4_ = new AdvancedSound(_loc6_,0,true);
                                                while(true)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      if(!param2)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   _loc5_ = §5! §.§3!P§;
                                                   if(_loc8_)
                                                   {
                                                      if(param1 in StringMap.§+!#§)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            _loc5_.setReserved(param1,_loc4_);
                                                            if(_loc8_)
                                                            {
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      _loc5_.h[param1] = _loc4_;
                                                   }
                                                   break;
                                                }
                                                addr029c:
                                                §4e§(_loc4_);
                                                §@!W§ = param1;
                                                break loop0;
                                             }
                                             addr0211:
                                             return;
                                          }
                                          §§goto(addr029c);
                                       }
                                       else
                                       {
                                          addr02c2:
                                          if(§§pop())
                                          {
                                             break;
                                          }
                                       }
                                       §§goto(addr02c6);
                                    }
                                    §§goto(addr02d4);
                                 }
                                 addr02d9:
                                 §2!C§.play(param3);
                                 if(!_loc7_)
                                 {
                                    break loop1;
                                 }
                                 break loop0;
                              }
                              §§goto(addr011d);
                           }
                           §§goto(addr02cf);
                        }
                        §§goto(addr02d0);
                     }
                     addr02d4:
                     if(§§pop() > §§pop())
                     {
                        break loop0;
                     }
                  }
                  addr02d0:
                  addr02cf:
                  §§push(int(§&[§.length));
                  §§push(0);
                  break loop5;
               }
               §§goto(addr02d9);
            }
            §4!=§();
            break;
         }
      }
      
      public function §-Z§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §96§(§@h§);
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc1_)
               {
                  §@h§ = null;
                  if(!_loc1_)
                  {
                     §§push(false);
                     if(!_loc1_)
                     {
                        if(§2!C§ == null)
                        {
                           break;
                        }
                     }
                     §§pop();
                     §§push(true);
                  }
               }
               §§push(int(§&[§.length) > 0);
               break loop0;
            }
            if(§§pop())
            {
               §2!C§.play();
               §4!=§();
            }
            else if(§2!C§ == null)
            {
               §'J§(1);
            }
            return;
         }
         §§push(!§§pop());
         break loop1;
      }
   }
}

