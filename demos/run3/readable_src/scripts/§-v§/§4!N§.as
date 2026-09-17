package §-v§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §,!W§.§`'§;
   import §-!!§.§-;§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §<?§.§#!7§;
   import §=w§.§,D§;
   import §=w§.§@[§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§4$§;
   import §[!P§.§@$§;
   import §[!P§.§`!W§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.trigger.condition.ConditionChain;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §4!N§ extends Sprite implements §@[§
   {
      
      public static var §1!N§:Array = [0,0.33,0.5,0.95,1];
      
      public static var §?!^§:Array = [10027008,5570713,39321,3399014,15663086];
      
      public var §`!a§:Boolean;
      
      public var §]!H§:Number;
      
      public var §'!0§:Shape;
      
      public var §>!=§:Number;
      
      public var §&#§:Rectangle;
      
      public var background:Shape;
      
      public var §8$§:ConditionChain;
      
      public function §4!N§()
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §>!=§ = 0;
         §`!a§ = false;
         super();
         background = new Shape();
         addChild(background);
         §'!0§ = new Shape();
         addChild(§'!0§);
         var _loc1_:Rectangle = new Rectangle();
         var _loc2_:§ 7§ = new § 6§(_loc1_);
         if(_loc5_)
         {
            §&d§.§1$§().add(_loc2_,new §`!W§(true,80));
         }
         _loc2_ = new § 6§(_loc1_);
         if(_loc5_)
         {
            §&d§.§1$§().add(_loc2_,new §`!W§(false,30));
            if(_loc5_)
            {
               §&#§ = new Rectangle();
            }
         }
         _loc2_ = new § 6§(§&#§);
         var _loc3_:§ 7§ = new § 6§(_loc1_);
         if(_loc5_)
         {
            §&d§.§1$§().add(_loc2_,new §@$§(true,6),_loc3_);
         }
         _loc2_ = new § 6§(§&#§);
         _loc3_ = new § 6§(_loc1_);
         if(!_loc6_)
         {
            §&d§.§1$§().add(_loc2_,new §@$§(false,6),_loc3_);
         }
         _loc2_ = new § 6§(§&#§);
         _loc3_ = new § 6§(_loc1_);
         if(!_loc6_)
         {
            §&d§.§1$§().add(_loc2_,new §4$§(true,0.5),_loc3_);
         }
         _loc2_ = new § 6§(§&#§);
         _loc3_ = new § 6§(_loc1_);
         while(true)
         {
            if(_loc5_)
            {
               §&d§.§1$§().add(_loc2_,new §4$§(false,0.5),_loc3_);
               if(!_loc5_)
               {
                  break;
               }
            }
            §<!T§.fillRect(background,§^F§.SOLID(0),5,3,13412915,new § 6§(_loc1_));
            break;
         }
         while(true)
         {
            §§push(reset);
            if(!_loc6_)
            {
               §§push(§§pop());
               if(_loc6_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            §&d§.§1$§().§6"§.push(new §#!7§(null,null,new §#!6§(_loc4_)));
            if(!_loc6_)
            {
               visible = false;
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         loop2:
         while(true)
         {
            while(true)
            {
               §§push(§`!a§);
               if(_loc8_)
               {
                  if(§§pop())
                  {
                     if(!_loc8_)
                     {
                        break;
                     }
                     reset();
                     if(_loc9_)
                     {
                        break loop2;
                     }
                  }
                  §§push(true);
               }
               if(§8$§ != null)
               {
                  §§pop();
                  if(!_loc8_)
                  {
                     break loop2;
                  }
                  §§push(!visible);
               }
               if(§§pop())
               {
                  return;
               }
               addr00a9:
               §§push(§>!=§);
               if(!_loc9_)
               {
                  §§push(0);
                  if(_loc8_)
                  {
                     if(§§pop() > §§pop())
                     {
                        §§push(§§findproperty(§>!=§));
                        §§push(§>!=§);
                        if(!_loc9_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§>!=§ = §§pop();
                        break;
                     }
                     §§push(§8$§.progress);
                     if(!_loc9_)
                     {
                        addr0100:
                        §§push(Number(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              if(!_loc9_)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc9_)
                                       {
                                          if(§§pop() == §]!H§)
                                          {
                                             break;
                                          }
                                          §]!H§ = _loc2_;
                                          if(_loc9_)
                                          {
                                             break loop6;
                                          }
                                          §'!0§.graphics.clear();
                                          if(!_loc8_)
                                          {
                                             break loop5;
                                          }
                                          §§push(_loc2_);
                                          if(_loc9_)
                                          {
                                             break loop7;
                                          }
                                       }
                                       §§push(0);
                                       if(!_loc9_)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§4!N§.§?!^§);
                                                if(_loc8_)
                                                {
                                                   _loc3_ = int(§§pop()[0]);
                                                   if(_loc9_)
                                                   {
                                                      break loop4;
                                                   }
                                                   §§push(1);
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   _loc4_ = §§pop();
                                                   §§push(§4!N§.§1!N§);
                                                }
                                                _loc5_ = int(§§pop().length);
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   break loop9;
                                                }
                                             }
                                             loop0:
                                             while(true)
                                             {
                                                if(§§pop() >= _loc5_)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   break loop4;
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc8_)
                                                   {
                                                      _loc4_++;
                                                      if(_loc8_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(_loc9_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                   }
                                                   _loc6_ = §§pop();
                                                   if(!_loc9_)
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         loop12:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§4!N§.§1!N§);
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(_loc9_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(Number(§§pop()[§§pop()]));
                                                                  if(_loc9_)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  if(§§pop() < _loc2_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  if(!_loc8_)
                                                                  {
                                                                     break loop11;
                                                                  }
                                                                  §§push(§4!N§.§1!N§);
                                                               }
                                                               §§push(_loc6_);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                               }
                                                               break;
                                                            }
                                                            §§push(Number(§§pop()[§§pop()]));
                                                            if(!_loc9_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            break;
                                                         }
                                                         _loc7_ = §§pop();
                                                         if(_loc8_)
                                                         {
                                                            §§push(§-;§);
                                                            §§push(§4!N§.§?!^§);
                                                            §§push(_loc6_);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            loop14:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop()[§§pop()]));
                                                                  §§push(int(§4!N§.§?!^§[_loc6_]));
                                                                  §§push(_loc2_);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(!_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc9_)
                                                                     {
                                                                        break loop14;
                                                                     }
                                                                  }
                                                                  §§push(Number(§4!N§.§1!N§[_loc6_]));
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§§pop() - _loc7_);
                                                                  }
                                                                  break;
                                                               }
                                                               §§push(§§pop() / §§pop());
                                                               break;
                                                            }
                                                            §§push(§§pop().§+c§(§§pop(),§§pop(),§§pop()));
                                                            if(!_loc9_)
                                                            {
                                                               §§push(uint(§§pop()));
                                                            }
                                                            §§push(int(§§pop()));
                                                            break loop10;
                                                         }
                                                         break loop8;
                                                      }
                                                      §'!0§.graphics.drawRect(§&#§.x,§&#§.y,§&#§.width * _loc2_,§&#§.height);
                                                      break loop8;
                                                   }
                                                   break loop0;
                                                }
                                                _loc3_ = §§pop();
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                                break loop8;
                                                §§push(_loc4_);
                                             }
                                             §'!0§.graphics.beginFill(_loc3_);
                                             if(_loc8_)
                                             {
                                                break loop11;
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr02c7);
                                    }
                                    §§push(§>!=§);
                                    break;
                                 }
                                 addr02c7:
                                 if(§§pop() > 0)
                                 {
                                    break loop4;
                                 }
                              }
                              while(true)
                              {
                                 §§push(§8$§.§=!V§());
                                 if(_loc8_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc9_)
                                    {
                                       break loop6;
                                    }
                                    addr0300:
                                    §<!^§(null);
                                    if(_loc9_)
                                    {
                                    }
                                    break loop4;
                                 }
                                 §§push(§8$§.§<!V§);
                                 break;
                              }
                              if(§§pop())
                              {
                                 if(alpha == 0)
                                 {
                                    addr034d:
                                    alpha = 1;
                                 }
                                 break loop4;
                              }
                              if(alpha > 0)
                              {
                                 if(!_loc9_)
                                 {
                                    break loop5;
                                 }
                              }
                              break loop4;
                           }
                           if(alpha == 0)
                           {
                              if(!_loc8_)
                              {
                                 break loop4;
                              }
                              §§goto(addr0300);
                           }
                           else
                           {
                              §>!=§ = 1;
                              if(!_loc9_)
                              {
                                 break loop4;
                              }
                              §§goto(addr034d);
                           }
                        }
                        §>!=§ = 1;
                        break;
                     }
                     return;
                  }
                  addr00ab:
                  if(§§pop() <= §§pop())
                  {
                     break loop2;
                  }
                  alpha = §>!=§ / 1;
                  §§goto(addr00ef);
               }
               §§goto(addr00ab);
               §§push(0);
            }
            §§push(§>!=§);
            if(!_loc9_)
            {
               §§goto(addr00a9);
            }
            else
            {
               §§goto(addr0100);
            }
         }
         if(§8$§.§=!V§())
         {
            §<!^§(null);
         }
         else
         {
            alpha = 0;
            if(_loc8_)
            {
            }
         }
         addr00ef:
      }
      
      public function §<!^§(param1:ConditionChain) : ConditionChain
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  if(param1 == §8$§)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     §8$§ = param1;
                     if(_loc3_)
                     {
                        break;
                     }
                     visible = §8$§ != null;
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
               }
               if(visible)
               {
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               break;
            }
            return §8$§;
         }
         §`!a§ = true;
         break loop1;
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §`!a§ = false;
         }
         while(true)
         {
            if(§8$§ != null)
            {
               while(true)
               {
                  §§push(true);
                  if(_loc1_)
                  {
                     §§push(§8$§.§=!V§());
                     if(_loc1_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        break;
                     }
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§pop();
                     §§push(int(§8$§.tunnel.animations.indexOf(§8$§)) < 0);
                     if(_loc2_)
                     {
                        break;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break;
               }
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §<!^§(null);
                     if(!_loc1_)
                     {
                        break;
                     }
                  }
               }
               else
               {
                  visible = §8$§.§<g§ == null || Boolean(§8$§.§<g§(§8$§.tunnel));
               }
            }
            else
            {
               visible = false;
            }
            alpha = 1;
            if(!_loc2_)
            {
               §>!=§ = 0;
            }
            §]!H§ = -1;
            if(!_loc2_)
            {
               update(0);
            }
            break;
         }
      }
   }
}

