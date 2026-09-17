package §-v§
{
   import §!!$§.§?y§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §2n§.§7%§;
   import scenes.§+!"§;
   import §=w§.§@[§;
   import §>!O§.§=!]§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.save.§0d§;
   import com.player03.run3.save.§]k§;
   import flash.display.Stage;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import unitsystem.§7o§;
   
   public class §+S§ extends TextField implements §@[§
   {
      
      public var § !'§:Number;
      
      public var active:Boolean;
      
      public function §+S§()
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               super();
               if(_loc2_)
               {
                  break;
               }
               defaultTextFormat = new TextFormat(Main.§81§,28,16777215);
               embedFonts = true;
               selectable = false;
               mouseEnabled = false;
               multiline = true;
               if(!_loc3_)
               {
                  break;
               }
            }
            autoSize = "left";
            break;
         }
         var _loc1_:* = null;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc3_)
               {
                  if(_loc1_ != null)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     break loop1;
                  }
               }
               _loc1_ = int(Number(defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(this),new §=!]§(int(_loc1_)));
            break;
         }
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = null as CharacterBase;
         var _loc3_:* = NaN;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(!_loc5_)
                  {
                     while(true)
                     {
                        §§push(true);
                        if(!_loc5_)
                        {
                           §§push(active);
                           if(_loc4_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              break;
                           }
                        }
                        §§pop();
                        if(!_loc5_)
                        {
                           §§push(Main.instance.tunnel == null);
                           if(_loc4_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           break;
                        }
                        break loop2;
                     }
                     if(!§§pop())
                     {
                        visible = !§7o§.instance.paused || §7%§.§@!A§().stage != null && Boolean(§7%§.§@!A§().visible);
                        if(_loc4_)
                        {
                           break loop1;
                        }
                        break;
                     }
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                  }
                  visible = false;
                  if(_loc4_)
                  {
                     break loop0;
                  }
                  break loop1;
               }
               _loc2_ = Main.instance.tunnel.characters[0];
               loop4:
               while(true)
               {
                  while(true)
                  {
                     if(_loc4_)
                     {
                        §§push(_loc2_.transform.position.z);
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(Number(§§pop()));
                        if(_loc5_)
                        {
                           break;
                        }
                        _loc3_ = §§pop();
                        if(_loc5_)
                        {
                           break loop4;
                        }
                     }
                     text = int(Math.round(_loc3_ * 0.03333333333333333)) + "m";
                     if(_loc4_)
                     {
                        addr0158:
                        §§push(false);
                        if(!_loc5_)
                        {
                           if(§ !'§ > 0)
                           {
                              if(!_loc5_)
                              {
                                 §§pop();
                                 if(_loc4_)
                                 {
                                    §§push(_loc3_);
                                    break;
                                 }
                                 break loop4;
                              }
                              addr0157:
                              §§push(Boolean(§§pop()));
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              appendText("\nNew high score!");
                           }
                        }
                     }
                     break loop4;
                  }
                  §§push(§§pop() > § !'§);
                  if(!_loc5_)
                  {
                     §§goto(addr0157);
                  }
                  §§goto(addr0158);
               }
               §§goto(addr016d);
            }
            if(visible)
            {
               break loop2;
            }
            addr016d:
            return;
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(§§findproperty(active));
                  if(_loc3_)
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        if(Main.instance.tunnel == null)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                     }
                     §§pop();
                  }
                  §§push(Main.instance.tunnel.§5§ == §,a§.INFINITE);
                  if(!_loc2_)
                  {
                     break loop0;
                  }
                  break;
               }
               §§pop().active = §§pop();
               if(_loc3_)
               {
                  text = "";
               }
            }
            §§push(Boolean(§§pop()));
            break loop1;
         }
         var _loc1_:§0d§ = Save.§,>§;
         if(_loc3_)
         {
            § !'§ = Number(Save.§@!A§().get(_loc1_.§=-§,Number(_loc1_.§ -§)));
            if(_loc3_)
            {
               visible = active && !§7o§.instance.paused;
            }
         }
      }
   }
}

