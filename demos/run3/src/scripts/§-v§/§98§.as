package §-v§
{
   import §!!$§.§ 6§;
   import §'!W§.§&!A§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §-!!§.§,C§;
   import §-!!§.§`h§;
   import §-#§.§3H§;
   import §-#§.§7Y§;
   import §4n§.Achievement;
   import §6!Q§.§'!E§;
   import §=w§.§,D§;
   import §=w§.§@[§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.save.§]k§;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §98§ extends §,C§ implements §@[§
   {
      
      public var §#k§:int;
      
      public var §5!&§:int;
      
      public var mode:§,a§;
      
      public var §<I§:Boolean;
      
      public var §?]§:int;
      
      public var achievements:Vector.<§7Y§>;
      
      public function §98§()
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this);
            §§push("menu/Achievements.png");
            §§push(§#_§);
            if(!_loc3_)
            {
               §§push(§§pop());
            }
            §§pop().super(§§pop(),§§pop());
         }
         var _loc1_:Vector.<§7Y§> = new Vector.<§7Y§>(0,false);
         while(true)
         {
            if(_loc2_)
            {
               achievements = _loc1_;
               if(!_loc2_)
               {
                  break;
               }
            }
            §6h§(true);
            if(_loc2_)
            {
               break;
            }
            §§goto(addr008e);
         }
         §§push(GlobalEventManager);
         §§push("tunnelFirstSection");
         §§push(clear);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         §§pop().addEventListener(§§pop(),§§pop());
         addr008e:
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:* = false;
         var _loc5_:* = 0;
         var _loc6_:* = null as Vector.<§7Y§>;
         var _loc7_:* = null as §7Y§;
         var _loc2_:§ !W§ = Main.instance.tunnel;
         if(_loc8_)
         {
            while(true)
            {
               §§push(true);
               if(!_loc9_)
               {
                  §§push(true);
                  if(_loc8_)
                  {
                     if(_loc2_ != null)
                     {
                        if(!_loc9_)
                        {
                           §§pop();
                           if(!_loc8_)
                           {
                              break;
                           }
                           §§push(_loc2_.characters == null);
                           if(_loc8_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                     }
                  }
                  if(§§pop())
                  {
                     break;
                  }
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               §§pop();
               if(!_loc9_)
               {
                  §§push(int(_loc2_.characters.length) == 0);
                  if(!_loc9_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  break;
               }
            }
            if(!§§pop())
            {
               var _loc3_:TunnelSection = _loc2_.characters[0].§]!L§;
               if(_loc3_ == null)
               {
                  _loc3_ = _loc2_.characters[0].§73§;
                  if(!_loc9_)
                  {
                     if(_loc3_ != null)
                     {
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(true);
                                 if(_loc8_)
                                 {
                                    §§push(true);
                                    if(_loc9_)
                                    {
                                       break loop3;
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       §§push(true);
                                       if(!_loc9_)
                                       {
                                          if(_loc2_.§5§ == mode)
                                          {
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      break loop10;
                                                   }
                                                   §§push(_loc3_.§[9§ == §#k§);
                                                   if(_loc8_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                }
                                                §§push(Boolean(§§pop()));
                                                break;
                                             }
                                          }
                                       }
                                       if(!§§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                          break loop3;
                                       }
                                       break loop9;
                                    }
                                    §§pop();
                                    if(_loc9_)
                                    {
                                       break loop2;
                                    }
                                 }
                                 §§push(_loc3_.id == §5!&§);
                                 if(_loc8_)
                                 {
                                    break loop3;
                                 }
                                 §§goto(addr0154);
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    §§push(_loc2_.characters[0].§!8§.id);
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() != §?]§);
                                 }
                                 if(§§pop())
                                 {
                                    mode = _loc2_.§5§;
                                    if(!_loc9_)
                                    {
                                       §#k§ = _loc3_.§[9§;
                                       §5!&§ = _loc3_.id;
                                       §?]§ = _loc2_.characters[0].§!8§.id;
                                       §§push(false);
                                       break loop2;
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr028b);
                              }
                              §§goto(addr01c3);
                           }
                           §§push(!§§pop());
                           if(!_loc9_)
                           {
                              addr0154:
                              §§push(Boolean(§§pop()));
                           }
                           break loop9;
                        }
                        _loc4_ = Boolean(§§pop());
                        §§push(0);
                        if(_loc8_)
                        {
                           addr01c3:
                           §§push(int(§§pop()));
                        }
                        _loc5_ = §§pop();
                        _loc6_ = achievements;
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              if(!_loc9_)
                              {
                                 loop0:
                                 while(_loc5_ < int(_loc6_.length))
                                 {
                                    _loc7_ = _loc6_[_loc5_];
                                    loop6:
                                    while(true)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(!_loc9_)
                                             {
                                                _loc5_++;
                                                §§push(false);
                                                if(_loc7_.id != §5!&§)
                                                {
                                                   break;
                                                }
                                                §§pop();
                                                §§push(true);
                                                if(_loc9_)
                                                {
                                                   break loop7;
                                                }
                                                §§push(_loc7_.§<g§);
                                                if(_loc8_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                if(§§pop() == null)
                                                {
                                                   break loop6;
                                                }
                                                §§pop();
                                                if(_loc9_)
                                                {
                                                   break loop5;
                                                }
                                             }
                                             §§push(Boolean(_loc7_.§<g§(_loc2_)));
                                             if(!_loc9_)
                                             {
                                                break loop6;
                                             }
                                             break loop4;
                                          }
                                          §§goto(addr0237);
                                       }
                                       _loc4_ = §§pop();
                                       break loop0;
                                    }
                                    addr0237:
                                    if(Boolean(§§pop()))
                                    {
                                       if(!_loc9_)
                                       {
                                          §§push(true);
                                          if(_loc8_)
                                          {
                                             break loop7;
                                          }
                                          break loop4;
                                       }
                                       break;
                                    }
                                 }
                              }
                              §§push(_loc4_);
                              break loop4;
                           }
                           §§push(§§findproperty(§6h§));
                           §§push(_loc4_);
                           if(_loc8_)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().§6h§(§§pop());
                           §§goto(addr028b);
                        }
                        if(§§pop() == §<I§)
                        {
                           if(_loc8_)
                           {
                              break loop5;
                           }
                        }
                        addr028b:
                        return;
                     }
                  }
                  return;
               }
               continue loop3;
            }
         }
      }
      
      public function §6h§(param1:Boolean) : Boolean
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               if(!param1)
               {
                  filters = null;
                  break;
               }
               if(_loc4_)
               {
                  break;
               }
            }
            filters = §`h§.§6c§;
            if(_loc4_)
            {
            }
            break;
         }
         §§push(§§findproperty(§<I§));
         §§push(param1);
         if(_loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         return §§pop().§<I§ = §§pop();
      }
      
      public function reset() : void
      {
      }
      
      public function §#_§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc3_:* = null as §'!E§;
         var _loc4_:* = null as §3!I§;
         var _loc5_:* = null as §3!I§;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         §§push(§4f§(true));
         if(!_loc8_)
         {
            §§push(Boolean(§§pop()));
            if(_loc9_)
            {
               §§push(Boolean(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         loop1:
         while(true)
         {
            if(!_loc8_)
            {
               loop2:
               while(true)
               {
                  §§push(false);
                  if(!_loc8_)
                  {
                     §§push(false);
                     if(!_loc8_)
                     {
                        §§push(_loc2_);
                        if(!_loc8_)
                        {
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(_loc9_)
                              {
                                 §§pop();
                                 if(!_loc9_)
                                 {
                                    break loop2;
                                 }
                                 §§push(mode == §,a§.INFINITE);
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break;
                           }
                        }
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  §§pop();
                  if(_loc9_)
                  {
                     §§push(§5!&§ >= 0);
                     if(!_loc8_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     break;
                  }
               }
               if(!§§pop())
               {
                  break;
               }
            }
            _loc3_ = §'!E§.§@!A§();
            while(true)
            {
               §§push(§=B§);
               §§push(int(_loc3_.§6a§.length));
               if(_loc9_)
               {
                  §§push(1);
                  if(_loc8_)
                  {
                     break;
                  }
                  §§push(§§pop() - §§pop());
               }
               §§push(-1);
               break;
            }
            _loc4_ = §§pop().§@W§(§§pop(),§§pop(),-1);
            if(_loc8_)
            {
               break;
            }
            loop0:
            while(_loc4_.§#1§ != _loc4_.end)
            {
               _loc5_ = _loc4_;
               while(true)
               {
                  if(_loc9_)
                  {
                     loop6:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc5_);
                           §§push(_loc5_.§#1§);
                           if(_loc9_)
                           {
                              §§push(_loc4_.§['§);
                              if(!_loc9_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc8_)
                              {
                                 break loop6;
                              }
                           }
                           §§push(int(§§pop()));
                           if(_loc9_)
                           {
                              var _temp_2:* = §§pop();
                              §§push(_temp_2);
                              §§push(_temp_2);
                              break;
                           }
                           break loop6;
                        }
                        _loc7_ = §§pop();
                        break;
                     }
                     §§pop().§#1§ = §§pop();
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  §§push(_loc7_);
                  if(_loc9_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc6_ = §§pop();
                  if(!_loc8_)
                  {
                     break;
                  }
                  continue loop0;
               }
               _loc3_.§6a§[_loc6_].hide();
            }
            if(_loc8_)
            {
               break;
            }
            while(true)
            {
               §§push(§'!E§.§@!A§());
               §§push("There\'s no achievement here yet. If you want to suggest one, be sure to mention the number ");
               if(_loc9_)
               {
                  §§push(§§pop() + §5!&§);
                  if(_loc8_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               if(!_loc8_)
               {
                  break;
               }
               addr01c5:
               §§pop().§>!W§(§§pop());
               break loop1;
            }
            §§push(§§pop() + ".");
            if(_loc9_)
            {
               §§push(§§pop());
            }
            §§goto(addr01c5);
         }
      }
      
      public function §8!§(param1:§ !W§) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:§,D§ = §3H§.§@!A§();
         if(_loc4_)
         {
            if(int(param1.animations.indexOf(_loc2_)) < 0)
            {
               if(!_loc3_)
               {
                  param1.registerAnimation(§3H§.§@!A§());
                  if(!_loc3_)
                  {
                     §3H§.§@!A§().reset();
                  }
               }
            }
         }
      }
      
      public function §4f§(param1:Object = undefined) : Boolean
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc5_:* = null as §7Y§;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:* = null as §]k§;
         var _loc9_:* = false;
         var _loc10_:* = null as §'!E§;
         var _loc11_:* = null as §3!I§;
         var _loc12_:* = null as §3!I§;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = null as String;
         while(true)
         {
            if(_loc17_)
            {
               if(param1 != null)
               {
                  break;
               }
            }
            §§push(false);
            if(_loc17_)
            {
               param1 = §§pop();
               break;
            }
            §§goto(addr006a);
         }
         §§push(false);
         if(_loc17_)
         {
            §§push(Boolean(§§pop()));
         }
         addr006a:
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc17_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Vector.<§7Y§> = achievements;
         if(_loc17_)
         {
            loop0:
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               loop3:
               while(true)
               {
                  if(_loc17_)
                  {
                     _loc3_++;
                     if(_loc16_)
                     {
                        break;
                     }
                  }
                  if(_loc5_.id == §5!&§)
                  {
                     if(_loc17_)
                     {
                        §§push(!param1);
                        if(_loc17_)
                        {
                           if(!§§pop())
                           {
                              §§push(true);
                              if(!_loc16_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc16_)
                                 {
                                    addr0114:
                                    _loc7_ = §§pop();
                                    if(_loc17_)
                                    {
                                    }
                                    break;
                                 }
                              }
                              else
                              {
                                 addr0128:
                                 §§push(Boolean(§§pop()));
                              }
                              addr0129:
                              _loc7_ = §§pop();
                              break;
                           }
                           if(_loc16_)
                           {
                              break;
                           }
                           _loc8_ = _loc5_.achievement.§3!X§;
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(!Boolean(Save.§@!A§().get(_loc8_.§=-§,Boolean(_loc8_.§ -§))));
                                    if(_loc17_)
                                    {
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc16_)
                                          {
                                             _loc7_ = §§pop();
                                             break loop3;
                                          }
                                          §§goto(addr01a9);
                                       }
                                       §§goto(addr01ad);
                                    }
                                    addr0175:
                                    §§push(Boolean(§§pop()));
                                    if(!_loc16_)
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc17_)
                                       {
                                          break;
                                       }
                                       break loop5;
                                    }
                                    break loop4;
                                 }
                                 addr0193:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(!_loc16_)
                                    {
                                       break loop4;
                                    }
                                    §§goto(addr0217);
                                 }
                                 §§goto(addr0227);
                              }
                              _loc8_ = _loc5_.achievement.§3!X§;
                              if(_loc17_)
                              {
                                 loop21:
                                 while(true)
                                 {
                                    §§push(Boolean(Save.§@!A§().get(_loc8_.§=-§,Boolean(_loc8_.§ -§))));
                                    if(!_loc16_)
                                    {
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          if(!_loc16_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!_loc17_)
                                             {
                                                break;
                                             }
                                          }
                                          _loc9_ = §§pop();
                                          if(_loc16_)
                                          {
                                             break loop21;
                                          }
                                          §§goto(addr0227);
                                       }
                                    }
                                    §§goto(addr0229);
                                 }
                              }
                              §§goto(addr0308);
                           }
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(_loc17_)
                                 {
                                    addr01a9:
                                    addr01a8:
                                    if(_loc2_)
                                    {
                                       §§push(false);
                                       if(!_loc16_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc9_ = §§pop();
                                       break;
                                    }
                                 }
                                 addr01ad:
                                 if(!param1)
                                 {
                                    if(!_loc16_)
                                    {
                                       break loop5;
                                    }
                                    break;
                                 }
                                 addr0217:
                                 addr0217:
                                 §§push(true);
                                 if(_loc17_)
                                 {
                                    addr0216:
                                    §§push(Boolean(§§pop()));
                                 }
                                 _loc9_ = §§pop();
                                 break;
                              }
                              addr0227:
                              addr0229:
                              while(true)
                              {
                                 if(_loc9_)
                                 {
                                    if(_loc16_)
                                    {
                                       break;
                                    }
                                    _loc10_ = §'!E§.§@!A§();
                                    while(true)
                                    {
                                       §§push(§=B§);
                                       §§push(int(_loc10_.§6a§.length));
                                       if(_loc17_)
                                       {
                                          §§push(1);
                                          if(!_loc17_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§push(-1);
                                       break;
                                    }
                                    _loc11_ = §§pop().§@W§(§§pop(),§§pop(),-1);
                                    if(_loc17_)
                                    {
                                       while(_loc11_.§#1§ != _loc11_.end)
                                       {
                                          _loc12_ = _loc11_;
                                          if(!_loc16_)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc12_);
                                                   §§push(_loc12_.§#1§);
                                                   if(_loc17_)
                                                   {
                                                      §§push(_loc11_.§['§);
                                                      if(!_loc17_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc16_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(!_loc17_)
                                                         {
                                                            break loop9;
                                                         }
                                                      }
                                                   }
                                                   var _temp_2:* = §§pop();
                                                   §§push(_temp_2);
                                                   §§push(_temp_2);
                                                   break;
                                                }
                                                _loc14_ = §§pop();
                                                break;
                                             }
                                             §§pop().§#1§ = §§pop();
                                             if(_loc16_)
                                             {
                                                continue;
                                             }
                                          }
                                          §§push(_loc14_);
                                          if(!_loc16_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          _loc13_ = §§pop();
                                          if(!_loc16_)
                                          {
                                             _loc10_.§6a§[_loc13_].hide();
                                          }
                                       }
                                       if(_loc17_)
                                       {
                                          §§push(true);
                                          if(_loc17_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          _loc2_ = §§pop();
                                       }
                                    }
                                 }
                                 §§push(_loc5_.achievement.name);
                                 if(_loc17_)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc15_ = §§pop();
                                 break;
                              }
                              addr0308:
                              _loc8_ = _loc5_.achievement.§3!X§;
                              if(_loc17_)
                              {
                                 loop11:
                                 while(true)
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                §§push(Boolean(Save.§@!A§().get(_loc8_.§=-§,Boolean(_loc8_.§ -§))));
                                                if(_loc17_)
                                                {
                                                   loop16:
                                                   while(true)
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc17_)
                                                            {
                                                               break loop11;
                                                            }
                                                            §§push(_loc15_);
                                                            if(_loc16_)
                                                            {
                                                               break loop14;
                                                            }
                                                            §§push(" (earned)\n");
                                                            if(_loc16_)
                                                            {
                                                               break loop13;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc16_)
                                                            {
                                                               break loop12;
                                                            }
                                                            _loc15_ = §§pop();
                                                            if(!_loc16_)
                                                            {
                                                               break loop11;
                                                            }
                                                            addr0387:
                                                            §§push(true);
                                                            if(_loc17_)
                                                            {
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     if(!_loc16_)
                                                                     {
                                                                        if(_loc13_ == 46)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc16_)
                                                                        {
                                                                           break loop18;
                                                                        }
                                                                     }
                                                                     §§pop();
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(_loc13_ == 33);
                                                                        if(_loc17_)
                                                                        {
                                                                           break loop18;
                                                                        }
                                                                        break;
                                                                     }
                                                                     break loop17;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     break loop16;
                                                                  }
                                                                  if(_loc16_)
                                                                  {
                                                                     break loop16;
                                                                  }
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               break loop19;
                                                            }
                                                            §§pop();
                                                            §§push(_loc13_);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc15_);
                                                            if(!_loc17_)
                                                            {
                                                               break loop15;
                                                            }
                                                            §§push(int(§§pop().charCodeAt(_loc15_.length - 1)));
                                                            if(!_loc16_)
                                                            {
                                                               _loc13_ = §§pop();
                                                               §§goto(addr0387);
                                                            }
                                                         }
                                                         §§push(§§pop() == 63);
                                                         if(_loc17_)
                                                         {
                                                            break;
                                                         }
                                                         break loop16;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      break;
                                                   }
                                                }
                                                break loop16;
                                             }
                                             §§push(": ");
                                             break loop13;
                                          }
                                          §§push("\n");
                                          if(!_loc17_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc16_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc16_)
                                             {
                                                §§push(§§pop());
                                             }
                                             _loc15_ = §§pop();
                                             if(_loc17_)
                                             {
                                             }
                                             break loop11;
                                          }
                                          §§goto(addr0421);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc17_)
                                       {
                                          addr0421:
                                          §§push(§§pop());
                                       }
                                       break;
                                    }
                                    _loc15_ = §§pop();
                                    break;
                                 }
                              }
                              break loop11;
                           }
                           continue loop0;
                        }
                        §§goto(addr0114);
                     }
                     continue loop5;
                  }
                  §§push(false);
                  if(!_loc16_)
                  {
                     §§goto(addr0128);
                  }
                  §§goto(addr0129);
               }
               while(true)
               {
                  §§push(_loc7_);
                  if(!_loc16_)
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§push(_loc5_.§<g§);
                           if(_loc17_)
                           {
                              §§push(§§pop());
                           }
                           if(§§pop() != null)
                           {
                              if(!_loc17_)
                              {
                                 break loop5;
                              }
                              §§push(Boolean(_loc5_.§<g§(Main.instance.tunnel)));
                              if(!_loc17_)
                              {
                                 break loop4;
                              }
                              _loc6_ = §§pop();
                              if(_loc16_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr0175);
                              §§push(true);
                           }
                           §§goto(addr0193);
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(false);
                              if(!_loc16_)
                              {
                                 _loc6_ = Boolean(§§pop());
                                 §§goto(addr0193);
                              }
                              §§goto(addr0216);
                           }
                        }
                        §§goto(addr0217);
                     }
                     §§goto(addr0227);
                  }
                  §§goto(addr01a8);
               }
               §§goto(addr01ad);
            }
         }
         return _loc2_;
      }
      
      public function clear() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc2_)
               {
                  achievements.length = 0;
                  §§push(§<I§);
                  if(_loc2_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     §6h§(true);
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
                  mode = null;
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               §#k§ = -1;
               break loop0;
            }
            §?]§ = -1;
            return;
         }
         §5!&§ = -1;
         break loop1;
      }
      
      public function §=! §(param1:int, param2:Achievement, param3:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:* = null as §7Y§;
         if(!_loc7_)
         {
            if(param2 != null)
            {
               §§push(0);
               if(!_loc7_)
               {
                  §§push(int(§§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:Vector.<§7Y§> = achievements;
               while(true)
               {
                  if(!_loc7_)
                  {
                     loop0:
                     while(_loc4_ < int(_loc5_.length))
                     {
                        _loc6_ = _loc5_[_loc4_];
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              _loc4_++;
                              if(_loc7_)
                              {
                                 break;
                              }
                           }
                           if(_loc6_.achievement == param2)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        return;
                     }
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  achievements.push(new §7Y§(param2,param1,param3));
                  break;
               }
               return;
            }
         }
      }
   }
}

