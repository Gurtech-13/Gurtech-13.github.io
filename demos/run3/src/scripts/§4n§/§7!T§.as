package §4n§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §-!!§.§&!;§;
   import §-!!§.§-;§;
   import §-!!§.§`h§;
   import §-v§.§+'§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.save.§]k§;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §7!T§ extends §'!O§
   {
      
      public var §6P§:Boolean;
      
      public var textColor:int;
      
      public var text:TextField;
      
      public var §^"§:TextField;
      
      public var payout:int;
      
      public var image:§!L§;
      
      public var §46§:TextFormat;
      
      public var backgroundColor:Object;
      
      public var achievement:Achievement;
      
      public function §7!T§(param1:Achievement, param2:Boolean, param3:Object = undefined, param4:Object = undefined)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         super(600,200);
         achievement = param1;
         while(true)
         {
            if(!_loc6_)
            {
               §6P§ = param2;
               backgroundColor = param3;
               if(param4 == null)
               {
                  payout = param1.payout;
                  break;
               }
            }
            payout = param4;
            if(_loc5_)
            {
            }
            break;
         }
      }
      
      public function setTo(param1:Achievement, param2:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:* = false;
         var _loc5_:* = null as §]k§;
         while(true)
         {
            if(_loc7_)
            {
               achievement = param1;
               if(_loc6_)
               {
                  break;
               }
            }
            image.§?!L§(param1);
            break;
         }
         §§push(param1.name);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(§6P§)
         {
            _loc5_ = param1.§3!X§;
            while(true)
            {
               if(!Boolean(Save.§@!A§().get(_loc5_.§=-§,Boolean(_loc5_.§ -§))))
               {
                  if(!_loc7_)
                  {
                     break;
                  }
                  _loc4_ = param1.§='§ == 0;
               }
               else
               {
                  §§push(true);
                  if(_loc7_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  _loc4_ = §§pop();
               }
               if(_loc4_)
               {
                  break;
               }
               addr0100:
               addr00ef:
               addr00ec:
               §§push(_loc3_ + "\n???");
               if(!_loc6_)
               {
                  §§push(§§pop());
                  if(_loc7_)
                  {
                     addr00fe:
                     §§push(§§pop());
                  }
               }
               _loc3_ = §§pop();
            }
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(_loc3_);
                  if(!_loc6_)
                  {
                     §§push("\n");
                     if(_loc7_)
                     {
                        §§push(§§pop() + param1.description);
                        if(!_loc6_)
                        {
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              addr00ce:
                              §§push(§§pop() + §§pop());
                              if(_loc7_)
                              {
                                 §§push(§§pop());
                                 if(_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(_loc7_)
                                    {
                                       _loc3_ = §§pop();
                                       §§goto(addr0101);
                                    }
                                 }
                                 break loop2;
                              }
                              break;
                           }
                        }
                        §§goto(addr00ef);
                     }
                     §§goto(addr00ce);
                  }
                  else
                  {
                     §§goto(addr00ec);
                  }
               }
               §§goto(addr00fe);
            }
            §§goto(addr0100);
         }
         addr0101:
         text.text = _loc3_;
         if(param2 != null)
         {
            payout = param2;
            if(!_loc6_)
            {
               addr0140:
               §^"§.text = Std.string(payout);
               if(_loc7_)
               {
                  reset();
               }
            }
         }
         else
         {
            payout = param1.payout;
            if(!_loc6_)
            {
               §§goto(addr0140);
            }
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         image.reset();
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(true);
               if(_loc2_)
               {
                  if(image.filters == null)
                  {
                     break;
                  }
                  if(_loc1_)
                  {
                     break loop0;
                  }
               }
               §§pop();
               §§push(int(image.filters.length) == 0);
               if(!_loc2_)
               {
                  break loop0;
               }
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr0096);
            }
            if(§§pop())
            {
               §46§.color = §-;§.§+c§(65280,textColor,0.5);
               §§goto(addr00c7);
            }
            else
            {
               §§push(achievement.§!O§());
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr0096);
            }
         }
         addr0096:
         if(Boolean(§§pop()))
         {
            if(_loc2_)
            {
               §46§.color = textColor;
               addr00c7:
               layout.apply();
               if(!_loc1_)
               {
                  visible = true;
               }
            }
            else
            {
               §§goto(addr00c6);
            }
         }
         else
         {
            visible = false;
            if(!_loc1_)
            {
               addr00c6:
               return;
            }
         }
         addr00da:
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc1_:* = null as § 7§;
         var _loc2_:* = null as § 7§;
         var _loc4_:* = null;
         var _loc11_:* = null as Shape;
         var _loc12_:* = 0;
         var _loc13_:* = null as Rectangle;
         image = new §!L§(achievement);
         loop0:
         while(true)
         {
            if(_loc14_)
            {
               addChild(image);
               if(_loc15_)
               {
                  break;
               }
            }
            textColor = 16777215;
            if(_loc14_)
            {
               while(true)
               {
                  §§push(false);
                  if(!_loc15_)
                  {
                     if(backgroundColor != null)
                     {
                        if(!_loc15_)
                        {
                           §§pop();
                           if(!_loc14_)
                           {
                              break;
                           }
                           §§push(§`h§.§@_§(backgroundColor));
                           if(!_loc15_)
                           {
                              §§push(int(§§pop()));
                           }
                           §§push(§§pop() > 128);
                           if(!_loc15_)
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
                  break loop0;
               }
            }
            textColor = 0;
            if(!_loc15_)
            {
               break;
            }
            §§goto(addr00f3);
         }
         §§push(§§findproperty(§^"§));
         §§push(§&!;§);
         §§push(textColor);
         §§push(26);
         §§push(null);
         §§push(Std.string(payout));
         if(!_loc15_)
         {
            §§push(§§pop());
         }
         §§pop().§^"§ = §§pop().§9Q§(§§pop(),§§pop(),§§pop(),§§pop());
         addr00f3:
         _loc1_ = new §?y§(§^"§);
         _loc2_ = new §?y§(image);
         while(true)
         {
            if(!_loc15_)
            {
               §&d§.§1$§().add(_loc1_,new §+X§(4,§2u§.BOTTOM),_loc2_);
               if(_loc15_)
               {
                  break;
               }
            }
            if(§6P§)
            {
               break;
            }
            §§goto(addr01d9);
         }
         _loc1_ = new §?y§(§^"§);
         _loc2_ = new §?y§(image);
         if(!_loc15_)
         {
            §§push(§&d§.§1$§());
            §§push(_loc1_);
            §§push(§§findproperty(§+X§));
            §§push(30);
            if(_loc14_)
            {
               §§push(Number(§§pop()));
            }
            §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.RIGHT),_loc2_);
            if(_loc15_)
            {
               continue loop3;
            }
         }
         addr01d9:
         _loc1_ = new §?y§(§^"§);
         if(!_loc15_)
         {
            §§push(§&d§.§1$§());
            §§push(_loc1_);
            §§push(§§findproperty(§;!!§));
            §§push(30);
            if(!_loc15_)
            {
               §§push(Number(§§pop()));
            }
            §§pop().add(§§pop(),new §§pop().§;!!§(§§pop(),§2u§.LEFT));
         }
         addChild(§^"§);
         if(_loc14_)
         {
            §!1§(null,new §?y§(§^"§));
         }
         var _loc3_:Shape = new Shape();
         var _loc5_:§]k§ = achievement.§3!X§;
         while(true)
         {
            while(true)
            {
               if(_loc14_)
               {
                  if(!Boolean(Save.§@!A§().get(_loc5_.§=-§,Boolean(_loc5_.§ -§))))
                  {
                     _loc4_ = 10066329;
                     break;
                  }
               }
               _loc4_ = null;
               if(!_loc15_)
               {
                  break;
               }
               continue loop5;
            }
            §+'§.§0!D§(_loc3_,15,_loc4_);
            continue loop5;
         }
         _loc1_ = new §?y§(_loc3_);
         _loc2_ = new §?y§(§^"§);
         var _loc6_:§&d§ = null;
         loop5:
         while(true)
         {
            while(true)
            {
               if(_loc14_)
               {
                  if(_loc6_ != null)
                  {
                     _loc6_ = _loc6_;
                     break;
                  }
               }
               _loc6_ = §&d§.§1$§();
               if(_loc14_)
               {
                  break;
               }
               break loop5;
            }
            §§push(_loc6_);
            §§push(_loc1_);
            §§push(§§findproperty(§+X§));
            §§push(15);
            if(!_loc15_)
            {
               §§push(Number(§§pop()));
            }
            §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.LEFT),_loc2_);
            if(!_loc15_)
            {
               break;
            }
            §§goto(addr02e3);
         }
         _loc6_.add(_loc1_,new §4$§(false,0.5),_loc2_);
         if(!_loc15_)
         {
            addr02e3:
            addChild(_loc3_);
         }
         §§push(achievement.name);
         if(!_loc15_)
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         while(true)
         {
            while(true)
            {
               if(!_loc15_)
               {
                  if(!§6P§)
                  {
                     break;
                  }
                  if(_loc15_)
                  {
                     continue loop9;
                  }
               }
               while(true)
               {
                  §§push(_loc7_);
                  §§push("\n");
                  if(_loc14_)
                  {
                     §§push(§§pop() + achievement.description);
                     if(!_loc14_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop());
                  break;
               }
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc15_)
                  {
                     §§push(§§pop());
                     if(!_loc14_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop());
                  break;
               }
               _loc7_ = §§pop();
               if(!_loc15_)
               {
                  break;
               }
               continue loop9;
            }
            while(true)
            {
               §§push(§§findproperty(text));
               §§push(§&!;§);
               §§push(textColor);
               §§push(30);
               §§push(null);
               §§push(_loc7_);
               if(!_loc15_)
               {
                  if(!§6P§)
                  {
                     §§push(null);
                     break;
                  }
               }
               §§push(image.width * 2);
               break;
            }
            §§pop().text = §§pop().§9Q§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
            continue loop9;
         }
         var _loc8_:TextField = text;
         var _loc9_:* = null;
         while(true)
         {
            while(true)
            {
               if(_loc14_)
               {
                  if(_loc9_ != null)
                  {
                     break;
                  }
                  if(_loc15_)
                  {
                     continue loop11;
                  }
               }
               _loc9_ = int(Number(_loc8_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc8_),new §=!]§(int(_loc9_)));
            continue loop11;
         }
         _loc1_ = new §?y§(text);
         _loc2_ = new §?y§(image);
         §&d§.§1$§().add(_loc1_,new §4$§(false,0.5),_loc2_);
         loop11:
         while(true)
         {
            while(true)
            {
               if(_loc14_)
               {
                  if(!§6P§)
                  {
                     _loc1_ = new §?y§(text);
                     _loc2_ = new §?y§(image);
                     if(!_loc15_)
                     {
                        §&d§.§1$§().add(_loc1_,new §+X§(3,§2u§.RIGHT),_loc2_);
                        if(_loc14_)
                        {
                           §!1§(new §?y§(text));
                        }
                     }
                     break;
                  }
                  if(_loc15_)
                  {
                     break loop11;
                  }
               }
               §"!9§.§0>§(new §?y§(text),new §?y§(image),5);
               if(!_loc15_)
               {
                  break;
               }
               break loop11;
            }
            §46§ = new TextFormat();
            break;
         }
         §46§.font = Main.§6i§;
         §46§.bold = true;
         while(true)
         {
            §§push(§#w§);
            if(!_loc15_)
            {
               §§push(§§pop());
               if(!_loc14_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc10_:* = §§pop();
         while(true)
         {
            if(!_loc15_)
            {
               layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc10_)));
               if(!_loc14_)
               {
                  break;
               }
               _loc10_();
               if(!_loc14_)
               {
                  break;
               }
            }
            addChild(text);
            if(!_loc15_)
            {
               if(backgroundColor != null)
               {
                  break;
               }
               §§goto(addr06af);
            }
            break;
         }
         _loc11_ = new Shape();
         if(!_loc15_)
         {
            §§push(8);
            if(!_loc15_)
            {
               §§push(int(§§pop()));
            }
            _loc12_ = §§pop();
         }
         _loc13_ = new Rectangle();
         _loc1_ = new § 6§(_loc13_);
         if(!_loc15_)
         {
            §§push(§&d§.§1$§());
            §§push(_loc1_);
            §§push(§§findproperty(§@$§));
            §§push(true);
            §§push(_loc12_);
            if(!_loc15_)
            {
               §§push(-§§pop());
               if(_loc14_)
               {
                  §§push(§§pop() * 2);
               }
            }
            §§pop().add(§§pop(),new §§pop().§@$§(§§pop(),Number(§§pop())));
         }
         _loc1_ = new § 6§(_loc13_);
         if(!_loc15_)
         {
            §§push(§&d§.§1$§());
            §§push(_loc1_);
            §§push(§§findproperty(§@$§));
            §§push(false);
            §§push(_loc12_);
            if(_loc14_)
            {
               §§push(-§§pop());
               if(_loc14_)
               {
                  §§push(§§pop() * 2);
               }
            }
            §§pop().add(§§pop(),new §§pop().§@$§(§§pop(),Number(§§pop())));
         }
         _loc1_ = new § 6§(_loc13_);
         if(_loc14_)
         {
            §§push(§&d§.§1$§());
            §§push(_loc1_);
            §§push(§§findproperty(§;!!§));
            §§push(_loc12_);
            if(_loc14_)
            {
               §§push(-§§pop());
            }
            §§pop().add(§§pop(),new §§pop().§;!!§(§§pop(),§2u§.LEFT));
         }
         _loc1_ = new § 6§(_loc13_);
         if(_loc14_)
         {
            §§push(§&d§.§1$§());
            §§push(_loc1_);
            §§push(§§findproperty(§;!!§));
            §§push(_loc12_);
            if(_loc14_)
            {
               §§push(-§§pop());
            }
            §§pop().add(§§pop(),new §§pop().§;!!§(§§pop(),§2u§.TOP));
            while(true)
            {
               if(!_loc15_)
               {
                  §<!T§.fillRect(_loc11_,§^F§.SOLID(backgroundColor),10,null,null,new § 6§(_loc13_));
                  if(_loc15_)
                  {
                     break;
                  }
               }
               addChildAt(_loc11_,0);
               break;
            }
         }
         addr06af:
      }
      
      public function §#w§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            text.setTextFormat(§46§,0,achievement.name.length);
         }
      }
   }
}

