package §@!^§
{
   import layout3d.§>N§;
   import com.player03.run3.Main;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.character.§]!W§;
   import com.player03.run3.level.Level;
   import flash.Boot;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.media.SoundChannel;
   import motion.Actuate;
   import motion.actuators.TransformActuator;
   
   public class §2+§ extends CharacterDef
   {
      
      public var character:CharacterDef;
      
      public function §2+§(param1:int)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super(param1,null,-2,null);
         }
      }
      
      public function §[!`§(param1:CharacterDef) : CharacterDef
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
               if(character == param1)
               {
                  if(_loc2_)
                  {
                     return character;
                  }
                  addr0068:
                  §=!!§ = character.§=!!§;
                  §#!H§ = character.§#!H§;
                  while(true)
                  {
                     if(_loc2_)
                     {
                        §=!B§ = character.§=!B§;
                        color = character.color;
                        if(_loc3_)
                        {
                           break;
                        }
                        §[P§ = character.§[P§;
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        §§push(§§findproperty(§-!X§));
                        §§push(character.§-!X§);
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().§-!X§ = §§pop();
                     }
                     frames = character.frames;
                     if(!_loc3_)
                     {
                        break;
                     }
                     break loop0;
                  }
               }
               else
               {
                  character = param1;
                  name = character.name;
                  §]w§ = character.name;
                  if(_loc2_)
                  {
                     §6<§ = character.§6<§;
                     if(!_loc3_)
                     {
                        §§goto(addr0068);
                     }
                  }
               }
               §6! § = character.§6! §;
               if(_loc2_)
               {
                  §,#§ = character.§,#§;
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §§goto(addr018a);
            }
            §2t§ = character.§2t§;
            §>t§ = character.§>t§;
            § j§ = character.§ j§;
            §3>§ = character.§3>§;
            §%!+§ = character.§%!+§;
            break;
         }
         §+Q§ = character.§+Q§;
         addr018a:
         return character;
      }
      
      public function §4!a§(param1:Vector.<String> = undefined, param2:Vector.<CharacterDef> = undefined) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc6_:* = null as CharacterDef;
         var _loc7_:int = 0;
         var _loc8_:* = null as Vector.<CharacterDef>;
         var _loc9_:* = null as CharacterDef;
         §§push([]);
         if(_loc10_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:Vector.<CharacterDef> = CharacterRegistry.available;
         if(!_loc11_)
         {
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(!_loc10_)
               {
                  break;
               }
               loop2:
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
                           loop6:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(int(_loc5_.length));
                                 if(_loc10_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       _loc6_ = _loc5_[_loc4_];
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc10_)
                                          {
                                             _loc4_++;
                                             if(_loc11_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(false);
                                          §§push(false);
                                          §§push(false);
                                          if(_loc10_)
                                          {
                                             if(_loc6_ != this)
                                             {
                                                while(true)
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      §§pop();
                                                      §§push(_loc6_.§<!,§());
                                                      if(_loc11_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc10_)
                                                   {
                                                      break;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   if(!_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   loop14:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(true);
                                                         if(!_loc11_)
                                                         {
                                                            if(param1 == null)
                                                            {
                                                               break;
                                                            }
                                                            §§pop();
                                                            if(!_loc10_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            §§push(int(param1.indexOf(_loc6_.name,0)) >= 0);
                                                            if(_loc11_)
                                                            {
                                                               break loop14;
                                                            }
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                         break;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      break;
                                                   }
                                                }
                                                break loop14;
                                             }
                                             if(!§§pop())
                                             {
                                                continue loop0;
                                             }
                                             if(!_loc10_)
                                             {
                                                break loop8;
                                             }
                                             _loc3_.push(_loc6_);
                                             if(_loc6_.§[P§ == null)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr013b);
                                          }
                                          loop12:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(param2 != null)
                                                {
                                                   §§pop();
                                                   if(_loc11_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(int(param2.indexOf(_loc6_,0)));
                                                   if(_loc11_)
                                                   {
                                                      break loop12;
                                                   }
                                                   §§push(§§pop() < 0);
                                                   if(_loc11_)
                                                   {
                                                      break loop11;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc10_)
                                                   {
                                                      break loop11;
                                                   }
                                                }
                                                §§push(Boolean(§§pop()));
                                                break loop11;
                                             }
                                             addr013b:
                                             §§push(0);
                                             if(!_loc11_)
                                             {
                                                break;
                                             }
                                             §§goto(addr0151);
                                          }
                                          addr0151:
                                          _loc7_ = §§pop();
                                          break;
                                       }
                                       _loc8_ = _loc6_.§[P§.§@D§;
                                       if(_loc10_)
                                       {
                                          loop1:
                                          while(_loc7_ < int(_loc8_.length))
                                          {
                                             _loc9_ = _loc8_[_loc7_];
                                             loop16:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      _loc7_++;
                                                      if(_loc11_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(false);
                                                      if(!_loc11_)
                                                      {
                                                         if(_loc9_ == _loc6_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc11_)
                                                         {
                                                            break loop16;
                                                         }
                                                      }
                                                      §§pop();
                                                      if(!_loc10_)
                                                      {
                                                         continue loop1;
                                                      }
                                                   }
                                                   §§push(_loc9_.§<!,§());
                                                   if(!_loc11_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc10_)
                                                      {
                                                         break loop16;
                                                      }
                                                   }
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc10_)
                                                   {
                                                      _loc3_.push(_loc9_);
                                                   }
                                                }
                                                continue loop1;
                                             }
                                             §§push(Boolean(§§pop()));
                                             break loop17;
                                          }
                                       }
                                       continue loop0;
                                    }
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    §§push(false);
                                    if(!_loc10_)
                                    {
                                       break loop6;
                                    }
                                    if(int(_loc3_.length) <= 1)
                                    {
                                       break loop5;
                                    }
                                    if(_loc11_)
                                    {
                                       break loop5;
                                    }
                                    §§pop();
                                    if(_loc11_)
                                    {
                                       break loop4;
                                    }
                                    §§push(_loc3_);
                                    if(!_loc10_)
                                    {
                                       break loop3;
                                    }
                                    §§push(int(§§pop().indexOf(character)));
                                    if(!_loc10_)
                                    {
                                       break loop0;
                                    }
                                    §§push(0);
                                    if(!_loc10_)
                                    {
                                       break loop2;
                                    }
                                 }
                                 §§push(§§pop() >= §§pop());
                                 if(_loc10_)
                                 {
                                    break loop6;
                                 }
                                 break loop5;
                              }
                              §§goto(addr0270);
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                        if(§§pop())
                        {
                           §§push(_loc3_);
                           if(!_loc11_)
                           {
                              break loop3;
                           }
                           §§goto(addr0261);
                        }
                        §§goto(addr0260);
                     }
                     §§goto(addr02bb);
                  }
                  §§pop().splice(int(_loc3_.indexOf(character)),1);
                  if(_loc10_)
                  {
                     addr0261:
                     addr0260:
                     §§push(int(_loc3_.length));
                     break loop0;
                  }
                  §§goto(addr0270);
               }
               if(§§pop() > §§pop())
               {
                  if(_loc10_)
                  {
                     addr0270:
                     §§push(§§findproperty(§[!`§));
                     §§push(_loc3_);
                     §§push(Number(Math.random()));
                     if(_loc10_)
                     {
                        §§push(§§pop() * int(_loc3_.length));
                     }
                     §§pop().§[!`§(§§pop()[int(§§pop())]);
                     if(_loc10_)
                     {
                        §§goto(addr02d0);
                     }
                  }
                  else
                  {
                     addr02bb:
                     Boot.lastError = new Error();
                  }
                  §§goto(addr02c5);
               }
               Main.instance.§,Z§(null);
               if(_loc10_)
               {
                  §§goto(addr02bb);
               }
               addr02d0:
               return;
            }
            §§push(0);
            break loop2;
         }
         addr02c5:
         throw new IllegalOperationError("Out of options!");
      }
      
      override public function §2!F§(param1:Level) : CharacterBase
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(character == null)
            {
               if(!_loc2_)
               {
                  §4!a§();
               }
            }
         }
         return super.§2!F§(param1);
      }
   }
}

