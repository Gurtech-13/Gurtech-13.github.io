package §6!Q§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §=w§.§@[§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§4$§;
   import §[!P§.§@$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Main;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.TunnelSection;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import haxeutils.math.geom.Point3D;
   import nme3D.§1![§;
   import unitsystem.§7o§;
   
   public class §<!_§ extends TextField implements §@[§
   {
      
      public var layout:§&d§;
      
      public var §`!;§:String;
      
      public function §<!_§()
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(_loc5_)
            {
               §`!;§ = null;
               if(_loc4_)
               {
                  break;
               }
            }
            super();
            break;
         }
         var _loc1_:TextFormat = new TextFormat();
         while(true)
         {
            loop2:
            while(true)
            {
               if(_loc5_)
               {
                  _loc1_.font = Main.§81§;
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        _loc1_.size = 80;
                        if(!_loc5_)
                        {
                           break;
                        }
                     }
                     _loc1_.color = 16777215;
                     if(!_loc4_)
                     {
                        _loc1_.align = "center";
                        defaultTextFormat = _loc1_;
                        if(_loc4_)
                        {
                           break loop2;
                        }
                        embedFonts = true;
                     }
                     selectable = false;
                     multiline = true;
                     if(!_loc5_)
                     {
                        break;
                     }
                     wordWrap = true;
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop3;
                  }
                  mouseEnabled = false;
               }
               text = "";
               if(!_loc4_)
               {
                  break;
               }
               addr00d1:
               layout = §&d§.§1$§();
               continue loop3;
            }
            autoSize = "center";
            §§goto(addr00d1);
         }
         var _loc2_:* = null;
         loop3:
         while(true)
         {
            while(true)
            {
               if(_loc5_)
               {
                  if(_loc2_ != null)
                  {
                     break;
                  }
                  if(!_loc5_)
                  {
                     break loop3;
                  }
               }
               _loc2_ = int(Number(defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(this),new §=!]§(int(_loc2_)));
            break;
         }
         var _loc3_:§ 7§ = new §?y§(this);
         if(!_loc4_)
         {
            §&d§.§1$§().add(_loc3_,new §@$§(true,0));
         }
         _loc3_ = new §?y§(this);
         if(_loc5_)
         {
            §&d§.§1$§().add(_loc3_,new §4$§(false,0.5));
            if(!_loc4_)
            {
               visible = false;
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:* = false;
         var _loc4_:* = null as §]u§;
         var _loc2_:§ !W§ = Main.instance.tunnel;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc7_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(true);
                        §§push(true);
                        if(!_loc6_)
                        {
                           if(_loc2_ == null)
                           {
                              break loop2;
                           }
                           if(_loc6_)
                           {
                              break loop2;
                           }
                           §§pop();
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§push(_loc2_.§"[§ == null);
                           if(_loc6_)
                           {
                              break loop2;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop2;
                     }
                     §§goto(addr0103);
                  }
                  if(!§§pop())
                  {
                     §§pop();
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§push(_loc2_.§&^§);
                     if(!_loc7_)
                     {
                        break loop3;
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        break loop0;
                     }
                  }
                  else
                  {
                     if(§7o§.instance.paused)
                     {
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§push(false);
                        if(!_loc6_)
                        {
                           break loop3;
                        }
                        addr0103:
                        _loc3_ = §§pop();
                     }
                     addr0104:
                     var _loc5_:§6M§ = _loc2_.characters[0];
                     §§push(false);
                     §§push(false);
                     if(!_loc6_)
                     {
                        §§push(false);
                        if(_loc7_)
                        {
                           §§push(_loc3_);
                           if(!_loc6_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          §§push(true);
                                          if(!_loc6_)
                                          {
                                             §§push(_loc5_.§4!Z§);
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             §§push(0);
                                             if(_loc6_)
                                             {
                                                break loop5;
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                break loop4;
                                             }
                                          }
                                          §§pop();
                                       }
                                       §§push(false);
                                       §§push(_loc5_.§4!Z§);
                                       break;
                                    }
                                    §§push(1);
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       §§pop();
                                       §§push(_loc5_.physicsData.onGround);
                                       if(!_loc7_)
                                       {
                                          break loop4;
                                       }
                                    }
                                    §§push(Boolean(§§pop()));
                                    break loop4;
                                 }
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc7_)
                           {
                              §§pop();
                              §§push(_loc2_.§5§ == §,a§.CHALLENGE);
                           }
                           §§push(!§§pop());
                        }
                     }
                     loop8:
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           if(_loc6_)
                           {
                              break;
                           }
                           §§push(_loc5_.§]!L§ != null);
                        }
                        loop9:
                        while(true)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 §`!;§ = null;
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(true);
                                 if(!_loc7_)
                                 {
                                    break loop9;
                                 }
                                 _loc3_ = Boolean(§§pop());
                                 §§push(_loc5_.§]!L§.startZ);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() - _loc5_.transform.position.z);
                                 }
                                 if(§§pop() < 400)
                                 {
                                    if(!_loc6_)
                                    {
                                       _loc3_ = false;
                                    }
                                 }
                              }
                              §§push(_loc3_);
                              break loop9;
                           }
                           text = _loc2_.§?!I§.§5i§(_loc5_.§]!L§.§[9§);
                           if(_loc6_)
                           {
                           }
                           §§goto(addr02ba);
                        }
                        if(§§pop() != visible)
                        {
                           visible = _loc3_;
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 if(visible)
                                 {
                                    if(§`!;§ != null)
                                    {
                                       if(!_loc7_)
                                       {
                                          break loop8;
                                       }
                                       text = §`!;§;
                                       if(!_loc6_)
                                       {
                                          addr02ba:
                                          layout.§%X§(new §?y§(this));
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       if(_loc5_.§]!L§ != null)
                                       {
                                          break loop10;
                                       }
                                       if(_loc5_.§73§ != null)
                                       {
                                          if(_loc7_)
                                          {
                                             break loop8;
                                          }
                                          §§goto(addr02ba);
                                       }
                                       else
                                       {
                                          visible = false;
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                       }
                                    }
                                    return;
                                 }
                                 break;
                              }
                              §§goto(addr02ba);
                           }
                        }
                        return;
                     }
                     text = _loc2_.§?!I§.§5i§(_loc5_.§73§.§[9§);
                     §§goto(addr02ba);
                  }
               }
               visible = false;
               if(!_loc6_)
               {
                  break loop0;
               }
               break;
            }
            _loc4_ = §]u§.§@!A§();
            loop12:
            while(true)
            {
               loop13:
               while(true)
               {
                  while(true)
                  {
                     if(_loc7_)
                     {
                        §§push(false);
                        if(_loc6_)
                        {
                           break loop13;
                        }
                        if(!_loc4_.visible)
                        {
                           break;
                        }
                        if(_loc6_)
                        {
                           break loop13;
                        }
                        §§pop();
                        if(!_loc7_)
                        {
                           break loop12;
                        }
                     }
                     §§push(int(_loc4_.blockingOverlays.length) > 0);
                     if(!_loc6_)
                     {
                        break loop13;
                     }
                     addr00f5:
                     §§goto(addr00f6);
                  }
                  §§push(!§§pop());
                  if(_loc7_)
                  {
                     §§goto(addr00f5);
                  }
                  §§goto(addr00f6);
               }
               §§push(Boolean(§§pop()));
               if(_loc7_)
               {
                  break loop14;
               }
               addr00f6:
               _loc3_ = §§pop();
               break;
            }
            §§goto(addr0104);
         }
      }
      
      public function §9R§(param1:String) : String
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
                  §§push(§`!;§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  if(§§pop() == param1)
                  {
                     break loop0;
                  }
                  if(_loc3_)
                  {
                     break loop0;
                  }
                  §`!;§ = param1;
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               reset();
               break loop0;
            }
            return §§pop();
         }
         §§push(param1);
         break loop1;
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            visible = false;
            if(!_loc2_)
            {
               update(0);
            }
         }
      }
   }
}

