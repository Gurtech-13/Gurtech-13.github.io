package §67§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §!]§.§4N§;
   import §"!L§.§%z§;
   import §%!Q§.§&r§;
   import §%!Z§.§&!S§;
   import §%!a§.§>!Y§;
   import §-!!§.§&!;§;
   import §-!!§.§+!%§;
   import scenes.§+Z§;
   import §4n§.Achievement;
   import §4n§.Achievements;
   import §6!Q§.§<!T§;
   import game.§&!K§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.trigger.§<!§;
   import com.player03.run3.level.trigger.condition.§#!G§;
   import com.player03.run3.level.trigger.condition.ConditionChain;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§]k§;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §,7§ extends §+!%§
   {
      
      public var §0#§:§"v§;
      
      public var §6?§:TextField;
      
      public function §,7§(param1:§"v§)
      {
         §§push(false);
         var _loc24_:Boolean = true;
         var _loc25_:* = §§pop();
         var _loc4_:* = false;
         var _loc5_:* = null as §]k§;
         var _loc6_:* = null as Shape;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = null as Array;
         var _loc14_:* = null as Vector.<Point>;
         var _loc15_:* = null as § 7§;
         var _loc16_:* = null as §<!T§;
         var _loc17_:int = 0;
         var _loc18_:* = null as String;
         var _loc19_:* = 0;
         var _loc20_:* = null as String;
         var _loc21_:* = null as § 7§;
         var _loc22_:* = null as TextField;
         var _loc23_:* = null;
         §§push(param1.§5-§);
         if(_loc24_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:§+Z§ = param1.§+!+§;
         loop0:
         while(true)
         {
            if(_loc24_)
            {
               if(_loc3_.§?^§ == null)
               {
                  §§push(false);
                  if(_loc24_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  _loc4_ = §§pop();
                  break;
               }
               if(_loc25_)
               {
                  break;
               }
            }
            _loc5_ = _loc3_.§?^§;
            while(true)
            {
               §§push(Boolean(Save.§@!A§().get(_loc5_.§=-§,Boolean(_loc5_.§ -§))));
               if(!_loc25_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc25_)
                  {
                     break;
                  }
               }
               _loc4_ = §§pop();
               break loop0;
            }
            addr010a:
            addr010b:
            loop2:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc25_)
                  {
                     break;
                  }
                  _loc6_ = §=!K§;
                  if(_loc24_)
                  {
                     _loc7_ = 0.9;
                     §§push(0);
                     if(_loc24_)
                     {
                        _loc8_ = §§pop();
                        §§push(0);
                     }
                     _loc9_ = §§pop();
                  }
                  _loc10_ = 0.1;
                  §§push(0.9);
                  if(_loc24_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc11_ = §§pop();
                  _loc12_ = 0.3;
                  if(_loc24_)
                  {
                     §§push([new Point(0,0),new Point(_loc7_ + Number(Math.random()) * (1 - _loc7_),_loc8_ + Number(Math.random()) * (0.4 - _loc8_)),new Point(_loc9_ + Number(Math.random()) * (0.1 - _loc9_),_loc10_ + Number(Math.random()) * (0.4 - _loc10_)),new Point(_loc11_ + Number(Math.random()) * (1 - _loc11_),_loc12_ + Number(Math.random()) * (0.6 - _loc12_))]);
                     if(!_loc25_)
                     {
                        §§push(§§pop());
                     }
                     _loc13_ = §§pop();
                  }
                  _loc14_ = Vector.<Point>(_loc13_);
                  _loc15_ = new §?y§(§-7§);
                  _loc16_ = new §<!T§(_loc14_);
                  while(true)
                  {
                     if(!_loc25_)
                     {
                        _loc16_.§4#§ = 3.2;
                        if(_loc24_)
                        {
                           _loc16_.§=M§ = 0;
                           if(_loc25_)
                           {
                              break;
                           }
                        }
                     }
                     §&d§.§1$§().add(new §?y§(_loc6_),_loc16_,_loc15_);
                     if(_loc24_)
                     {
                        §&d§.§1$§().add(new §?y§(§=!K§),new §4$§(false,0.6),new §?y§(§-7§));
                     }
                     break;
                  }
               }
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(param1.§+!=§);
                     if(_loc24_)
                     {
                        §§push(0);
                        if(_loc25_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           break loop4;
                        }
                        §§push(param1.§+!=§);
                     }
                     §§push(1);
                     if(!_loc24_)
                     {
                        break;
                     }
                     _loc17_ = §§pop() + §§pop();
                     while(true)
                     {
                        if(_loc24_)
                        {
                           break loop2;
                        }
                        addr02fc:
                        §§push("th");
                        if(!_loc25_)
                        {
                           §§push(§§pop());
                        }
                        _loc20_ = §§pop();
                        break;
                     }
                     §6?§ = §&!;§.§9Q§(0,16,_loc18_,_loc17_ + _loc20_);
                     if(_loc24_)
                     {
                        addr035a:
                        _loc15_ = new §?y§(§6?§);
                        _loc21_ = new §?y§(§-7§);
                        while(true)
                        {
                           if(!_loc25_)
                           {
                              loop8:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(§&d§.§1$§());
                                    §§push(_loc15_);
                                    §§push(§§findproperty(§+X§));
                                    §§push(4);
                                    §§push(_loc17_);
                                    if(!_loc25_)
                                    {
                                       §§push(§§pop() * 61261);
                                       if(!_loc25_)
                                       {
                                          §§push(100);
                                          if(!_loc24_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() % §§pop());
                                          if(_loc25_)
                                          {
                                             break loop8;
                                          }
                                          §§push(int(§§pop()));
                                       }
                                    }
                                    §§push(100);
                                    break;
                                 }
                                 §§push(§§pop() / §§pop());
                                 if(!_loc25_)
                                 {
                                    break;
                                 }
                                 §§goto(addr03c3);
                              }
                              addr03c3:
                              §§push(§§pop() + §§pop() * 8);
                              if(!_loc25_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.RIGHT),_loc21_);
                              if(!_loc24_)
                              {
                                 break;
                              }
                           }
                           _temp_1.width *= 2;
                           if(_loc24_)
                           {
                              _temp_2.height *= 2;
                           }
                           break;
                        }
                        _loc22_ = §6?§;
                        _loc23_ = null;
                        loop10:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc24_)
                              {
                                 if(_loc23_ != null)
                                 {
                                    break;
                                 }
                                 if(!_loc24_)
                                 {
                                    break loop10;
                                 }
                              }
                              _loc23_ = int(Number(_loc22_.defaultTextFormat.size));
                              break;
                           }
                           §&d§.§1$§().add(new §?y§(_loc22_),new §=!]§(int(_loc23_)));
                           break;
                        }
                        _loc15_ = new §?y§(§6?§);
                        while(true)
                        {
                           if(_loc24_)
                           {
                              §&d§.§1$§().add(_loc15_,new §;R§(true));
                              if(_loc25_)
                              {
                                 break;
                              }
                           }
                           §&d§.§1$§().add(_loc15_,new §;R§(false));
                           if(!_loc25_)
                           {
                              break;
                           }
                           addr04d7:
                           addChild(§6?§);
                           break loop4;
                        }
                        §6?§.visible = §=!K§.visible;
                        if(!_loc24_)
                        {
                           break loop4;
                        }
                        §6?§.rotation = -20;
                        if(!_loc24_)
                        {
                           break loop4;
                        }
                        §§goto(addr04d7);
                     }
                     §§goto(addr04f0);
                  }
                  addr02d7:
                  while(true)
                  {
                     §§push(int(§§pop() % §§pop()));
                     if(!_loc25_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc24_)
                        {
                           break;
                        }
                     }
                     _loc19_ = §§pop();
                     §§push(_loc19_);
                     break;
                  }
                  switch(§§pop())
                  {
                     case 1:
                        _loc20_ = "st";
                        break;
                     case 2:
                        §§push("nd");
                        if(!_loc25_)
                        {
                           _loc20_ = §§pop();
                           break;
                        }
                        addr0335:
                        _loc20_ = §§pop();
                        break;
                     case 3:
                        §§push("rd");
                        if(_loc24_)
                        {
                           §§push(§§pop());
                        }
                        §§goto(addr0335);
                     default:
                        §§goto(addr02fc);
                  }
                  §§goto(addr0337);
               }
               buttonMode = false;
               §§goto(addr04e9);
            }
            §§push(Main.§%p§);
            if(_loc24_)
            {
               §§push(§§pop());
            }
            _loc18_ = §§pop();
            if(_loc24_)
            {
               §§goto(addr02d7);
               §§push(_loc17_);
               §§push(10);
            }
            §§goto(addr0337);
         }
         super(0,36,_loc2_,_loc4_,null,0,Main.§%p§);
         if(_loc24_)
         {
            §0#§ = param1;
            if(!_loc25_)
            {
               §§push(param1.§'r§.§%!+§);
               if(!_loc25_)
               {
                  §§goto(addr010a);
               }
               §§goto(addr010b);
            }
            else
            {
               addr04e9:
               useHandCursor = false;
               §§goto(addr04f0);
            }
            return;
         }
         §§goto(addr035a);
      }
      
      override public function §,!3§(param1:Event = undefined) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:* = false;
         var _loc4_:* = null as §]k§;
         var _loc5_:* = null as §&r§;
         var _loc6_:* = null as §2!;§;
         var _loc2_:§+Z§ = §0#§.§+!+§;
         loop0:
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc2_.§?^§ == null)
               {
                  §§push(false);
                  if(!_loc8_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  _loc3_ = §§pop();
                  break;
               }
               if(!_loc7_)
               {
                  break;
               }
            }
            _loc4_ = _loc2_.§?^§;
            if(!_loc8_)
            {
               while(true)
               {
                  §§push(Boolean(Save.§@!A§().get(_loc4_.§=-§,Boolean(_loc4_.§ -§))));
                  if(_loc7_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc7_)
                     {
                        break;
                     }
                  }
                  _loc3_ = §§pop();
                  if(_loc7_)
                  {
                     break loop0;
                  }
               }
               addr00a4:
               if(§§pop())
               {
                  if(!_loc8_)
                  {
                     §0#§.§!2§();
                  }
               }
               else
               {
                  _loc5_ = §&r§.§@!A§();
                  _loc6_ = §&r§.§,U§;
                  while(true)
                  {
                     if(!_loc8_)
                     {
                        if(int(Save.§@!A§().get(_loc6_.§=-§,int(_loc6_.§ -§))) <= int(§&r§.§@!A§().§;I§.indexOf(§0#§.§=!§,0)))
                        {
                           break;
                        }
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                     §0#§.§+!+§.display(1);
                     break;
                  }
               }
            }
            return;
         }
         §§goto(addr00a4);
      }
      
      override public function §+s§(param1:Boolean) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               §§push(super.§+s§(param1));
               if(_loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               §§pop();
               if(_loc2_)
               {
                  break;
               }
            }
            if(§6?§ != null)
            {
               if(!_loc2_)
               {
                  break;
               }
            }
            §§goto(addr0061);
         }
         §6?§.visible = §=!K§.visible;
         addr0061:
         return §=!K§.visible;
      }
   }
}

