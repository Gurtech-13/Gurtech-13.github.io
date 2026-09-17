package com.player03.run3.menu
{
   import §!!$§.§?y§;
   import §-!!§.§&!;§;
   import §-!!§.§+"§;
   import §-!!§.§2!B§;
   import §-!!§.§8!8§;
   import §6!Q§.§"q§;
   import §6!Q§.§]u§;
   import game.§#a§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §>T§.§[C§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§`!W§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Currency;
   import com.player03.run3.Save;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§]k§;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.text.TextField;
   
   public class §<#§ extends Sprite
   {
      
      public var §9C§:String;
      
      public var §-!<§:§]k§;
      
      public var §02§:§2!;§;
      
      public var §5a§:int;
      
      public var layout:§&d§;
      
      public var §3G§:Function;
      
      public var § J§:int;
      
      public var §=!K§:Bitmap;
      
      public var §[A§:§+"§;
      
      public function §<#§(param1:int, param2:String, param3:String, param4:§]k§ = undefined, param5:§2!;§ = undefined, param6:Number = undefined, param7:String = undefined, param8:int = 1)
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc13_:* = null as § 7§;
         var _loc14_:* = null as § 7§;
         if(_loc16_)
         {
            §9C§ = null;
         }
         super();
         § J§ = param1;
         §9C§ = param2;
         loop0:
         while(true)
         {
            if(!_loc17_)
            {
               §-!<§ = param4;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(_loc16_)
                     {
                        §02§ = param5;
                        §5a§ = param8;
                        if(!_loc16_)
                        {
                           break;
                        }
                        if(param4 != null)
                        {
                           §1!?§.§@!A§().§#!U§.§4Z§(param4);
                           if(_loc17_)
                           {
                              break loop1;
                           }
                        }
                        if(param5 != null)
                        {
                           §1!?§.§@!A§().§#!U§.§4Z§(param5);
                        }
                        layout = §&d§.§1$§();
                        §=!K§ = §2!B§.§83§("menu/CheckMark.png");
                        if(!_loc16_)
                        {
                           break loop0;
                        }
                     }
                     §=!K§.visible = §?!F§();
                     if(_loc16_)
                     {
                        break loop1;
                     }
                     break;
                  }
               }
               addChild(§=!K§);
               if(_loc16_)
               {
                  break loop2;
               }
               break;
            }
            §§push(§§findproperty(§[A§));
            §§push(§§findproperty(§+"§));
            §§push(§2!Z§);
            if(_loc16_)
            {
               §§push(§§pop());
            }
            while(true)
            {
               §§push(0);
               §§push(48);
               §§push("");
               if(!_loc17_)
               {
                  §§push(§§pop() + param1);
                  if(_loc17_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            §§pop().§[A§ = new §§pop().§+"§(§§pop(),§§pop(),§§pop(),§§pop());
            break;
         }
         var _loc9_:§8!8§ = §[A§;
         if(!_loc17_)
         {
            §&d§.§1$§().add(new §?y§(_loc9_),new §"q§(11184810,6710886,3.6));
            while(true)
            {
               if(_loc16_)
               {
                  layout.add(new §?y§(§[A§),new §;!!§(10,§2u§.RIGHT),new §?y§(§=!K§));
                  if(!_loc17_)
                  {
                     §[A§.visible = !§=!K§.visible;
                     if(!_loc16_)
                     {
                        break;
                     }
                  }
               }
               addChild(§[A§);
               break;
            }
         }
         var _loc10_:DisplayObject = §[A§;
         if(!_loc17_)
         {
            mouseEnabled = §=!K§.visible;
         }
         var _loc11_:TextField = §&!;§.§9Q§(16777215,40,null,param3,100);
         var _loc12_:* = null;
         loop5:
         while(true)
         {
            while(true)
            {
               if(!_loc17_)
               {
                  if(_loc12_ != null)
                  {
                     break;
                  }
                  if(_loc17_)
                  {
                     break loop5;
                  }
               }
               _loc12_ = int(Number(_loc11_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc11_),new §=!]§(int(_loc12_)));
            break;
         }
         _loc13_ = new §?y§(_loc11_);
         _loc14_ = new §?y§(§=!K§);
         if(_loc16_)
         {
            §&d§.§1$§().add(_loc13_,new §+X§(0,§2u§.RIGHT),_loc14_);
            if(_loc16_)
            {
               addChild(_loc11_);
            }
         }
         var _loc15_:Bitmap = null;
         while(true)
         {
            if(!_loc17_)
            {
               if(param7 == null)
               {
                  break;
               }
            }
            _loc15_ = §2!B§.§83§(param7);
            _loc13_ = new §?y§(_loc15_);
            _loc14_ = new §?y§(§[A§);
            while(true)
            {
               if(!_loc17_)
               {
                  §&d§.§1$§().add(_loc13_,new §+X§(4,§2u§.RIGHT),_loc14_);
                  if(!_loc17_)
                  {
                     addChild(_loc15_);
                     if(!_loc16_)
                     {
                        break;
                     }
                  }
               }
               §"!9§.§0>§(new §?y§(_loc11_),new §?y§(_loc15_));
               break;
            }
            _loc10_ = _loc15_;
            break;
         }
         _loc13_ = new §?y§(_loc11_);
         while(true)
         {
            §§push(param6);
            if(_loc16_)
            {
               §§push(_loc10_.x + _loc10_.width);
               if(_loc16_)
               {
                  §§push(§§pop() / layout.scale.x);
               }
               §§push(§§pop() - §§pop());
               if(_loc17_)
               {
                  break;
               }
            }
            §§push(§§pop() - 20);
            break;
         }
         _loc12_ = §§pop();
         loop10:
         while(true)
         {
            if(!_loc17_)
            {
               while(true)
               {
                  §§push(§&d§.§1$§());
                  §§push(_loc13_);
                  if(!_loc17_)
                  {
                     if(_loc12_ == null)
                     {
                        §§push(new §;R§(true));
                        break;
                     }
                  }
                  §§push(new §`!W§(true,_loc12_));
                  break;
               }
               §§pop().add(§§pop(),§§pop());
               if(_loc16_)
               {
                  while(true)
                  {
                     if(_loc15_ != null)
                     {
                        if(_loc17_)
                        {
                           break;
                        }
                        _loc13_ = new §?y§(_loc15_);
                        _loc14_ = new §?y§(_loc11_);
                        if(!_loc17_)
                        {
                           §&d§.§1$§().add(_loc13_,new §4$§(false,0.5),_loc14_);
                        }
                     }
                     if(§[A§ != null)
                     {
                        break;
                     }
                     break loop10;
                  }
               }
            }
            _loc13_ = new §?y§(§[A§);
            _loc14_ = new §?y§(_loc11_);
            if(!_loc17_)
            {
               §&d§.§1$§().add(_loc13_,new §4$§(false,0.5),_loc14_);
            }
            break;
         }
         _loc13_ = new §?y§(§=!K§);
         _loc14_ = new §?y§(_loc11_);
         if(_loc16_)
         {
            §&d§.§1$§().add(_loc13_,new §4$§(false,0.5),_loc14_);
         }
      }
      
      public function §>>§(param1:Function) : Function
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               §3G§ = param1;
               if(!_loc2_)
               {
                  if(§[A§ == null)
                  {
                     break;
                  }
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            §§push(§§findproperty(§-!6§));
            §§push(Std);
            §§push(§3"§());
            if(_loc3_)
            {
               §§push(int(§§pop()));
            }
            §§push(§§pop().string(§§pop()));
            if(_loc3_)
            {
               §§push(§§pop());
            }
            §§pop().§-!6§(§§pop());
            break;
         }
         §§push(§3G§);
         if(_loc3_)
         {
            return §§pop();
         }
      }
      
      public function §-!6§(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §[A§.§-7§.text = param1;
            if(_loc3_)
            {
               layout.§%X§(new §?y§(§[A§));
            }
         }
         return param1;
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(§[A§ == null)
         {
            return;
         }
         §§push(§?!F§());
         if(!_loc2_)
         {
            §§push(Boolean(§§pop()));
         }
         if(§§pop())
         {
            §=!K§.visible = true;
            §[A§.visible = false;
         }
         else
         {
            §=!K§.visible = false;
            §[A§.visible = true;
            while(true)
            {
               if(_loc1_)
               {
                  §§push(§3G§);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  if(§§pop() == null)
                  {
                     break;
                  }
               }
               §§push(§§findproperty(§-!6§));
               §§push(Std);
               §§push(§3"§());
               if(!_loc2_)
               {
                  §§push(int(§§pop()));
               }
               §§push(§§pop().string(§§pop()));
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().§-!6§(§§pop());
               break;
            }
         }
      }
      
      public function §?!F§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(§!3§());
         if(!_loc2_)
         {
            §§push(int(§§pop()));
         }
         return §§pop() >= §5a§;
      }
      
      public function §2!Z§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc18_:Boolean = true;
         var _loc19_:* = §§pop();
         var _loc2_:* = null as Currency;
         var _loc3_:* = null as §2!;§;
         var _loc4_:* = 0;
         var _loc5_:* = null as §2!;§;
         var _loc6_:* = 0;
         var _loc7_:* = null as §2!;§;
         var _loc8_:* = 0;
         var _loc9_:* = null as §2!;§;
         var _loc10_:* = null as §2!;§;
         var _loc11_:* = 0;
         var _loc12_:* = null as Currency;
         var _loc13_:* = null as §2!;§;
         var _loc14_:* = 0;
         var _loc15_:* = null as §2!;§;
         var _loc16_:* = 0;
         var _loc17_:* = null as §2!;§;
         loop0:
         while(true)
         {
            if(_loc18_)
            {
               §§push(§?!F§());
               if(_loc18_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc19_)
                  {
                     §§push(!§§pop());
                  }
               }
               if(!§§pop())
               {
                  break;
               }
            }
            _loc2_ = Currency.§@!A§();
            _loc3_ = Currency.softEarned;
            if(_loc18_)
            {
               §§push(int(Save.§@!A§().get(_loc3_.§=-§,int(_loc3_.§ -§))));
               if(!_loc19_)
               {
                  §§push(int(§§pop()));
               }
               _loc4_ = §§pop();
            }
            _loc5_ = Currency.softBought;
            if(!_loc19_)
            {
               §§push(_loc4_);
               if(!_loc19_)
               {
                  §§push(§§pop() + int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§))));
                  if(!_loc19_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc6_ = §§pop();
            }
            _loc7_ = Currency.softSpent;
            if(_loc18_)
            {
               §§push(_loc6_);
               if(_loc18_)
               {
                  §§push(§§pop() - int(Save.§@!A§().get(_loc7_.§=-§,int(_loc7_.§ -§))));
                  if(_loc18_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc8_ = §§pop();
            }
            _loc9_ = Currency.softFromOffers;
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
                        if(_loc18_)
                        {
                           §§push(_loc8_);
                           if(!_loc18_)
                           {
                              break;
                           }
                           loop6:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§))));
                                 if(!_loc19_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc18_)
                                    {
                                       break;
                                    }
                                    §§push(§3"§());
                                    if(!_loc18_)
                                    {
                                       break loop4;
                                    }
                                    §§push(int(§§pop()));
                                    if(!_loc18_)
                                    {
                                       break loop6;
                                    }
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(Currency.§@!A§());
                                    §§push(§3"§());
                                    if(!_loc19_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    §§pop().recordSoftSpent(§§pop(),§9C§);
                                    if(§02§ != null)
                                    {
                                       _loc10_ = §02§;
                                       if(!_loc19_)
                                       {
                                          §§push(int(Save.§@!A§().get(_loc10_.§=-§,int(_loc10_.§ -§))));
                                          if(!_loc19_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          _loc11_ = §§pop();
                                          if(!_loc19_)
                                          {
                                             §§push(_loc10_);
                                             §§push(_loc11_);
                                             if(!_loc19_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             §§pop().§?F§(§§pop());
                                          }
                                       }
                                    }
                                    if(§-!<§ != null)
                                    {
                                       §-!<§.§?F§(true);
                                    }
                                    §§push(§3"§());
                                    if(!_loc19_)
                                    {
                                       break;
                                    }
                                    break loop5;
                                 }
                                 §]u§.§@!A§().§5B§(§#C§.§@!A§());
                                 break loop0;
                              }
                              §§push(int(§§pop()));
                              if(!_loc19_)
                              {
                                 §§push(2000);
                                 if(_loc18_)
                                 {
                                    break;
                                 }
                                 break loop4;
                              }
                              break loop5;
                           }
                           if(§§pop() >= §§pop())
                           {
                              §0!#§.§@!A§().§[§();
                              if(!_loc18_)
                              {
                                 break loop0;
                              }
                              addr026f:
                              §§push(§?!F§());
                              if(!_loc19_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!§§pop())
                              {
                                 §§push(§§findproperty(§-!6§));
                                 §§push(Std);
                                 §§push(§3"§());
                                 if(!_loc19_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 §§push(§§pop().string(§§pop()));
                                 if(!_loc19_)
                                 {
                                    §§push(§§pop());
                                 }
                                 §§pop().§-!6§(§§pop());
                                 break loop2;
                              }
                              §=!K§.visible = true;
                           }
                           else
                           {
                              §0!#§.§@!A§().§,?§();
                              if(!_loc19_)
                              {
                                 §§goto(addr026f);
                              }
                           }
                           §[A§.visible = false;
                           if(_loc19_)
                           {
                              break loop0;
                           }
                        }
                        mouseEnabled = true;
                        §1!?§.§@!A§().reset();
                        if(_loc18_)
                        {
                           break loop2;
                        }
                        break loop1;
                     }
                     §§goto(addr02e7);
                  }
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc19_)
                     {
                        break loop1;
                     }
                  }
                  break loop0;
               }
               §§push(§3"§());
               if(!_loc19_)
               {
                  addr02e7:
                  §§push(int(§§pop()));
               }
               §§push(100);
               break loop4;
            }
            _loc12_ = Currency.§@!A§();
            _loc10_ = Currency.softEarned;
            if(!_loc19_)
            {
               §§push(int(Save.§@!A§().get(_loc10_.§=-§,int(_loc10_.§ -§))));
               if(!_loc19_)
               {
                  §§push(int(§§pop()));
               }
               _loc11_ = §§pop();
            }
            _loc13_ = Currency.softBought;
            if(!_loc19_)
            {
               §§push(_loc11_);
               if(_loc18_)
               {
                  §§push(§§pop() + int(Save.§@!A§().get(_loc13_.§=-§,int(_loc13_.§ -§))));
                  if(!_loc19_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc14_ = §§pop();
            }
            _loc15_ = Currency.softSpent;
            if(!_loc19_)
            {
               §§push(_loc14_);
               if(_loc18_)
               {
                  §§push(§§pop() - int(Save.§@!A§().get(_loc15_.§=-§,int(_loc15_.§ -§))));
                  if(!_loc19_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc16_ = §§pop();
            }
            _loc17_ = Currency.softFromOffers;
            if(_loc18_)
            {
               §§push(§;!G§);
               §§push(_loc16_);
               if(_loc18_)
               {
                  while(true)
                  {
                     §§push(int(Save.§@!A§().get(_loc17_.§=-§,int(_loc17_.§ -§))));
                     if(_loc18_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc19_)
                        {
                           break;
                        }
                        §§push(1);
                     }
                     §§push(§§pop() + §§pop());
                     break;
                  }
               }
               §§pop().§8!?§ = §§pop();
            }
            break;
         }
      }
      
      public function §!3§() : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:* = null as §2!;§;
         var _loc2_:* = null as §]k§;
         if(_loc4_)
         {
            if(§02§ != null)
            {
               if(!_loc3_)
               {
                  _loc1_ = §02§;
                  §§push(int(Save.§@!A§().get(_loc1_.§=-§,int(_loc1_.§ -§))));
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
                  §§goto(addr00bd);
               }
            }
            else if(§-!<§ == null)
            {
               addr00bd:
               return §§pop();
               §§push(0);
            }
         }
         _loc2_ = §-!<§;
         while(true)
         {
            if(!_loc3_)
            {
               if(!Boolean(Save.§@!A§().get(_loc2_.§=-§,Boolean(_loc2_.§ -§))))
               {
                  §§push(0);
                  break;
               }
            }
            §§push(1);
            if(_loc4_)
            {
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
      
      public function §3"§() : int
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               §§push(§3G§);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               if(§§pop() == null)
               {
                  §§push(§ J§);
                  break;
               }
            }
            §§push(int(Math.round(Number(§3G§(§!3§())))));
            if(!_loc1_)
            {
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
   }
}

