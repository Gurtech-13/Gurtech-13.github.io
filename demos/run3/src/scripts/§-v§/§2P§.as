package §-v§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §-!!§.§2!B§;
   import §=w§.§@[§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.character.§'O§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import haxeutils.sound.§5! §;
   
   public class §2P§ extends Sprite implements §@[§
   {
      
      public var §'!3§:Bitmap;
      
      public var §=j§:int;
      
      public var § !3§:Bitmap;
      
      public var §1m§:Number;
      
      public function §2P§(param1:int)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = null as String;
         §1m§ = 0;
         super();
         §=j§ = param1;
         switch(param1)
         {
            case 0:
               loop1:
               while(true)
               {
                  §§push("Music");
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc3_)
                        {
                           break;
                        }
                        addr00ab:
                        addChild(§ !3§);
                        loop2:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 §§push(§§findproperty(§'!3§));
                                 §§push(§2!B§);
                                 §§push("options/");
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() + _loc2_);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(§§pop());
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + "Icon.png");
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§pop().§'!3§ = §§pop().§83§(§§pop());
                                 if(!_loc4_)
                                 {
                                    break loop2;
                                 }
                                 addChild(§'!3§);
                                 § !3§.x = (§'!3§.width - § !3§.width) / 2;
                              }
                              §§goto(addr00e7);
                           }
                           § !3§.y = (§'!3§.height - § !3§.height) / 2;
                           if(_loc4_)
                           {
                              break;
                           }
                           addr0165:
                           buttonMode = true;
                           addr016c:
                           update(0);
                           break loop1;
                        }
                        addEventListener(MouseEvent.CLICK,§%l§);
                        if(!_loc3_)
                        {
                           §§goto(addr0165);
                        }
                        §§goto(addr016c);
                     }
                  }
                  addr0067:
                  _loc2_ = §§pop();
                  addr0065:
                  if(!_loc3_)
                  {
                     break;
                  }
                  break;
               }
               break;
            case 1:
               §§push("Sound");
               if(_loc4_)
               {
                  §§goto(addr0065);
               }
               §§goto(addr0067);
            default:
               while(true)
               {
                  §§push(§§findproperty(§ !3§));
                  §§push(§2!B§);
                  §§push("options/");
                  if(!_loc3_)
                  {
                     §§push(§§pop() + _loc2_);
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                  }
                  §§push(§§pop() + "OffIcon.png");
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                  }
                  break;
               }
               §§pop().§ !3§ = §§pop().§83§(§§pop());
               §§goto(addr00ab);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = false;
         §§push(§=j§);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc5_)
         {
            switch(_loc2_)
            {
               case 0:
                  §§push(§5! §.§@!A§().§[!2§);
                  if(!_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc5_)
                     {
                        addr007e:
                        _loc3_ = §§pop();
                        break;
                     }
                  }
                  _loc3_ = §§pop();
                  break;
               case 1:
                  §§push(§5! §.§@!A§().soundMuted);
                  if(!_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  §§goto(addr007e);
            }
            § !3§.visible = _loc3_;
            §'!3§.visible = !§ !3§.visible;
         }
         if(§'!3§.visible)
         {
            while(true)
            {
               if(_loc5_)
               {
                  §§push(§§findproperty(§1m§));
                  §§push(§1m§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§1m§ = §§pop();
                  if(_loc4_)
                  {
                     break;
                  }
               }
               if(§1m§ <= 0)
               {
                  §1m§ = 2;
                  if(!_loc4_)
                  {
                     Main.instance.§+&§();
                  }
               }
               break;
            }
         }
      }
      
      public function §%l§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = false;
         §§push(§=j§);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop3:
               while(true)
               {
                  if(_loc5_)
                  {
                     §§push(_loc3_);
                     if(_loc6_)
                     {
                        break loop1;
                     }
                     switch(§§pop())
                     {
                        case 0:
                           §§push(§5! §.§@!A§().§[!2§);
                           if(!_loc6_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc5_)
                              {
                                 _loc2_ = §§pop();
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 break loop0;
                              }
                           }
                           else
                           {
                              addr0083:
                              §§push(Boolean(§§pop()));
                              if(!_loc5_)
                              {
                                 break loop3;
                              }
                           }
                           _loc2_ = §§pop();
                           if(_loc5_)
                           {
                              break;
                           }
                           break loop0;
                        case 1:
                           §§push(§5! §.§@!A§().soundMuted);
                           if(!_loc5_)
                           {
                              break loop3;
                           }
                           §§goto(addr0083);
                     }
                  }
                  §§push(_loc2_);
                  break;
               }
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     break loop0;
                  }
               }
               §§goto(addr00b1);
            }
            §§goto(addr00bf);
         }
         Main.instance.§+&§();
         addr00b1:
         §§push(§=j§);
         if(_loc5_)
         {
            break loop1;
         }
         addr00bf:
         var _loc4_:* = §§pop();
         switch(_loc4_)
         {
            case 0:
               §§push(§5! §.§@!A§());
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(!§§pop());
               }
               §§pop().§32§(§§pop());
               §§push(Save.musicMuted);
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(!§§pop());
               }
               §§pop().§?F§(§§pop());
               if(_loc5_)
               {
               }
               break;
            case 1:
               §§push(§5! §.§@!A§());
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(!§§pop());
               }
               §§pop().§6e§(§§pop());
               if(_loc5_)
               {
                  §§push(Save.soundMuted);
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§?F§(§§pop());
               }
         }
         update(0);
      }
      
      public function reset() : void
      {
      }
   }
}

