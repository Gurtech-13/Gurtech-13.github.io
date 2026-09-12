package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Save;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   
   public class LizardFellAsleep extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public static var lines:Vector.<String>;
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var lizard:§^s§;
      
      public var child:§^s§;
      
      public function LizardFellAsleep(param1:§ !>§ = undefined, param2:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            while(true)
            {
               if(param1 == null)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  param1 = §>K§.§0x§;
               }
               if(param2 == null)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§push(Number(Math.random()));
                  if(!_loc3_)
                  {
                     §§push(§§pop() * param1.levelCount);
                  }
                  param2 = int(§§pop());
               }
               super(param1,param2,LizardFellAsleep.§3S§,{"startTilesLength":3000});
               if(!_loc4_)
               {
                  break;
               }
               §§push(§§findproperty(frames));
               §§push(frame0);
               if(!_loc3_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(_loc4_)
               {
                  break;
               }
            }
            name = "Lizard Fell Asleep";
         }
      }
      
      override public function unloadLevel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            tunnel = null;
            while(true)
            {
               if(_loc1_)
               {
                  child = null;
                  if(_loc1_)
                  {
                     lizard = null;
                     if(_loc2_)
                     {
                        break;
                     }
                  }
               }
               sprites.length = 0;
               break;
            }
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            child = new §^s§(§9_§,§'O§.child,false,null,false,null);
            child.billboardMode = true;
         }
         sprites.push(child);
         lizard = new §^s§(§9_§,§'O§.lizard,false,null,false,null);
         if(!_loc2_)
         {
            lizard.billboardMode = true;
         }
         sprites.push(lizard);
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = _temp_1;
         var _loc1_:* = null as String;
         var _loc2_:* = false;
         var _loc3_:* = null as §]k§;
         var _loc4_:* = null as Vector.<String>;
         var _loc8_:* = NaN;
         var _loc17_:* = null as § 7§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc18_)
               {
                  if(§?^§ != null)
                  {
                     if(!_loc18_)
                     {
                        _loc3_ = §?^§;
                        if(_loc19_)
                        {
                           §§push(Boolean(Save.§@!A§().get(_loc3_.§=-§,Boolean(_loc3_.§ -§))));
                           if(!_loc18_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc18_)
                              {
                                 break;
                              }
                           }
                           _loc2_ = §§pop();
                           if(_loc18_)
                           {
                              break loop0;
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(false);
                     if(!_loc18_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc2_ = §§pop();
                  }
               }
               §§push(_loc2_);
               break;
            }
            loop25:
            while(true)
            {
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc19_)
                     {
                        §§push(Number(Math.random()));
                        if(!_loc18_)
                        {
                           if(§§pop() < 0.3)
                           {
                              if(!_loc18_)
                              {
                                 §§push(null);
                                 if(_loc19_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc19_)
                                    {
                                       addr0122:
                                       §§push(§§pop());
                                       if(!_loc18_)
                                       {
                                          addr012b:
                                          §§push(§§pop());
                                       }
                                       break loop25;
                                    }
                                 }
                                 _loc1_ = §§pop();
                                 if(_loc18_)
                                 {
                                 }
                              }
                              break loop0;
                           }
                           _loc4_ = LizardFellAsleep.lines;
                           if(!_loc18_)
                           {
                              §§push(_loc4_);
                              §§push(Number(Math.random()));
                              if(!_loc18_)
                              {
                                 §§push(§§pop() * int(_loc4_.length));
                              }
                              while(true)
                              {
                                 §§push(§§pop()[int(§§pop())]);
                                 if(_loc19_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc19_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(§§pop());
                                 break;
                              }
                              _loc1_ = §§pop();
                           }
                           break loop0;
                        }
                        break;
                     }
                     break loop0;
                  }
                  §§push(LizardFellAsleep.lines[0]);
                  if(_loc19_)
                  {
                     §§goto(addr0122);
                  }
                  §§goto(addr012b);
               }
               §§goto(addr013b);
            }
            _loc1_ = §§pop();
            break;
         }
         §§push(Number(Math.random()));
         if(!_loc18_)
         {
            addr013b:
            §§push(§§pop() * §9_§.§5k§);
         }
         §§push(int(§§pop()));
         if(_loc19_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            if(!_loc18_)
            {
               lizard.§9E§(_loc5_,-1);
               if(_loc18_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(lizard.spritesheet);
               if(!_loc18_)
               {
                  if(Number(Math.random()) >= 0.5)
                  {
                     §§push(65);
                     break;
                  }
               }
               §§push(64);
               if(_loc19_)
               {
               }
               break;
            }
            §§pop().§,=§(§§pop());
            if(_loc19_)
            {
               break;
            }
            var _loc6_:Number = -1;
            var _loc7_:* = Number(_loc5_);
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
                        if(!_loc18_)
                        {
                           if(_loc1_ == null)
                           {
                              child.model.§#"§(false);
                              continue loop7;
                           }
                           loop17:
                           while(true)
                           {
                              loop18:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(Number(Math.random()));
                                    §§push(0.5);
                                    if(!_loc18_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc19_)
                                       {
                                          break loop6;
                                       }
                                       _loc8_ = §§pop();
                                       §§push(_loc8_);
                                       if(!_loc19_)
                                       {
                                          break;
                                       }
                                       §§push(0.5);
                                       if(_loc18_)
                                       {
                                          break loop17;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          if(!_loc18_)
                                          {
                                             §§push(-1e-10);
                                             if(_loc18_)
                                             {
                                                break;
                                             }
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc19_)
                                                {
                                                   §§push(1);
                                                   if(_loc19_)
                                                   {
                                                   }
                                                   break loop18;
                                                }
                                                break loop17;
                                             }
                                             §§push(_loc8_);
                                          }
                                          §§push(1e-10);
                                          break;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          §§push(0);
                                          break loop18;
                                       }
                                       if(!_loc19_)
                                       {
                                          break loop17;
                                       }
                                    }
                                    §§push(-1);
                                    if(_loc19_)
                                    {
                                    }
                                    break loop18;
                                 }
                                 §§goto(addr02c2);
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc19_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc18_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc18_)
                                 {
                                    break loop5;
                                 }
                              }
                              loop20:
                              while(true)
                              {
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc18_)
                                       {
                                          _loc8_ = §§pop();
                                          if(!_loc19_)
                                          {
                                             break loop20;
                                          }
                                          §§push(true);
                                          if(!_loc18_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                if(_loc19_)
                                                {
                                                   if(§§pop() >= 0)
                                                   {
                                                      if(!_loc18_)
                                                      {
                                                         §§push(_loc8_);
                                                         if(_loc18_)
                                                         {
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr02b4);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc8_);
                                                      if(_loc18_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                }
                                                §§push(-§§pop());
                                                break;
                                             }
                                             if(§§pop() >= 0.25)
                                             {
                                                if(_loc19_)
                                                {
                                                   §§pop();
                                                   if(!_loc18_)
                                                   {
                                                      §§push(Number(Math.random()));
                                                      if(!_loc18_)
                                                      {
                                                         §§push(0.5);
                                                         break loop17;
                                                      }
                                                      §§goto(addr0306);
                                                   }
                                                   §§goto(addr02b8);
                                                }
                                                §§goto(addr02b3);
                                             }
                                          }
                                          §§goto(addr02b4);
                                       }
                                       §§goto(addr0306);
                                    }
                                    §§goto(addr030f);
                                 }
                                 §§goto(addr0342);
                              }
                           }
                           addr02b4:
                           §§push(§§pop() < §§pop());
                           if(_loc19_)
                           {
                              addr02b3:
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              addr02b8:
                              §§push(-2);
                              if(!_loc19_)
                              {
                                 break;
                              }
                              addr02c2:
                              _loc6_ = §§pop();
                              if(_loc18_)
                              {
                                 break loop4;
                              }
                              addr02db:
                              §§push(_loc6_);
                           }
                           else
                           {
                              §§push(-0.6);
                              if(!_loc18_)
                              {
                                 _loc6_ = §§pop();
                                 §§goto(addr02db);
                              }
                           }
                           §§push(-1);
                           if(!_loc18_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(_loc18_)
                                 {
                                    continue loop7;
                                 }
                                 §§push(_loc8_);
                                 if(_loc18_)
                                 {
                                    break loop5;
                                 }
                                 addr0306:
                                 §§push(0);
                                 if(_loc19_)
                                 {
                                    addr030f:
                                    if(§§pop() < §§pop())
                                    {
                                       child.spritesheet.§,=§(78);
                                       break loop4;
                                    }
                                    child.spritesheet.§,=§(60);
                                    if(_loc19_)
                                    {
                                       break loop4;
                                    }
                                    continue loop7;
                                 }
                              }
                              else
                              {
                                 §§push(_loc8_);
                                 if(_loc18_)
                                 {
                                    break loop6;
                                 }
                                 §§push(0);
                              }
                              addr0342:
                              if(§§pop() < §§pop())
                              {
                                 child.spritesheet.§,=§(103);
                                 break loop4;
                              }
                              child.spritesheet.§,=§(113);
                              break loop4;
                           }
                           §§goto(addr030f);
                        }
                        break loop20;
                     }
                     §§goto(addr0362);
                  }
                  §§goto(addr036c);
               }
               _loc7_ = §§pop();
               child.§9E§(_loc7_,_loc6_);
               child.spritesheet.§@S§(true);
               var _loc9_:Point = new Point(lizard.transform.position.x,lizard.transform.position.y);
               loop7:
               while(true)
               {
                  while(true)
                  {
                     if(_loc19_)
                     {
                        §§push(Number(Math.sqrt(_loc9_.x * _loc9_.x + _loc9_.y * _loc9_.y)));
                        if(_loc18_)
                        {
                           break;
                        }
                        §§push(Number(§§pop()));
                        if(_loc18_)
                        {
                           break loop7;
                        }
                        _loc8_ = §§pop();
                     }
                     §§push(_loc8_);
                     if(_loc19_)
                     {
                        break loop7;
                     }
                     §§goto(addr0405);
                  }
                  §§goto(addr03fd);
               }
               §§push(130);
               if(!_loc18_)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc18_)
                  {
                     break loop8;
                  }
                  var _loc10_:* = §§pop();
                  var _loc11_:Point = _loc9_;
                  loop9:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc18_)
                        {
                           if(_loc11_ != null)
                           {
                              break;
                           }
                           if(!_loc19_)
                           {
                              break loop9;
                           }
                        }
                        _loc11_ = new Point(0,0);
                        break;
                     }
                     _loc11_.x = _loc9_.x * _loc10_;
                     if(!_loc18_)
                     {
                        _loc11_.y = _loc9_.y * _loc10_;
                     }
                     break;
                  }
                  var _loc12_:Point3D = tunnel.§<!M§.§%!7§;
                  while(true)
                  {
                     if(_loc19_)
                     {
                        _loc12_.x = _loc9_.x;
                        if(!_loc19_)
                        {
                           break;
                        }
                        _loc12_.y = _loc9_.y;
                        if(!_loc19_)
                        {
                           break;
                        }
                     }
                     while(true)
                     {
                        §§push(_loc12_);
                        §§push(lizard.transform.position.z);
                        if(!_loc18_)
                        {
                           §§push(§§pop() + 300);
                           if(_loc18_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().z = §§pop();
                     break;
                  }
                  _loc12_ = new Point3D(0,1,0);
                  var _loc13_:Point3D = lizard.transform.§<!C§();
                  var _loc14_:Point3D = tunnel.§<!M§.§%!7§;
                  var _loc15_:Point3D = null;
                  loop13:
                  while(true)
                  {
                     if(!_loc18_)
                     {
                        while(true)
                        {
                           if(_loc15_ == null)
                           {
                              if(!_loc19_)
                              {
                                 break;
                              }
                              _loc15_ = new Point3D(0,0,0);
                           }
                           _loc15_.x = _loc13_.x - _loc14_.x;
                           if(_loc19_)
                           {
                              break;
                           }
                           break loop13;
                        }
                     }
                     _loc15_.y = _loc13_.y - _loc14_.y;
                     if(!_loc18_)
                     {
                        §§push(_loc15_);
                        §§push(_loc13_.z);
                        if(_loc19_)
                        {
                           §§push(§§pop() - _loc14_.z);
                        }
                        §§pop().z = §§pop();
                     }
                     break;
                  }
                  var _loc16_:Point3D = _loc15_;
                  §4!R§.§@!M§(lizard.transform.§+n§(),_loc12_,_loc12_);
                  §4!R§.§+!5§(_loc16_,_loc12_,tunnel.§<!M§.§,t§);
                  while(true)
                  {
                     if(!_loc18_)
                     {
                        tunnel.§<!M§.reset();
                        if(!_loc18_)
                        {
                           tunnel.display(0);
                        }
                        lizard.§9E§(_loc5_,-1);
                        if(_loc1_ == null)
                        {
                           break;
                        }
                        child.§9E§(_loc7_,_loc6_);
                     }
                     _loc17_ = new § 6§(child.§<!U§());
                     if(!_loc18_)
                     {
                        dialog.§";§(_loc1_,0,-260,null,null,null,_loc17_,null);
                     }
                     break;
                  }
                  return;
               }
               addr03fd:
               §§push(§§pop() / §§pop());
               if(!_loc18_)
               {
                  addr0405:
                  §§push(Number(§§pop()));
               }
               continue loop9;
            }
            addr0362:
            §§push(_loc5_ + _loc8_);
            if(!_loc18_)
            {
               addr036c:
               §§push(Number(§§pop()));
            }
            break loop5;
         }
         lizard.spritesheet.§@S§(true);
         continue loop6;
      }
   }
}

