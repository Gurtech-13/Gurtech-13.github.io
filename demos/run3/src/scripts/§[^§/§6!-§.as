package §[^§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §2X§.§"S§;
   import §2X§.§+F§;
   import §2X§.§>N§;
   import §`!7§.§`!3§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import nme3D.model.§'h§;
   import nme3D.model.Model;
   
   public class §6!-§ extends §+F§
   {
      
      public function §6!-§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super("characterSprite");
         }
      }
      
      override public function §3N§(param1:§>N§, param2:§=!U§, param3:int = -1) : §"S§
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc11_:* = 0;
         var _loc12_:* = null as §'h§;
         var _loc4_:§ !W§ = param1;
         while(true)
         {
            §§push(§'O§);
            if(_loc14_)
            {
               §§push("name");
               if(_loc13_)
               {
                  break;
               }
               if(!(§§pop() in StringMap.§+!#§))
               {
                  §§push(param2.h["name"]);
                  break;
               }
            }
            §§push(param2.getReserved("name"));
            break;
         }
         var _loc5_:§6O§ = §§pop().§3'§(§§pop());
         if(!_loc13_)
         {
            if(_loc5_ != null)
            {
               var _loc6_:§^s§ = new §^s§(_loc4_.§1W§,_loc5_,true);
               loop2:
               while(true)
               {
                  if(_loc14_)
                  {
                     while(true)
                     {
                        §§push("frame");
                        if(_loc14_)
                        {
                           §§push(§§pop() in StringMap.§+!#§);
                           if(!_loc14_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              if(!_loc13_)
                              {
                                 §§push(Boolean(param2.existsReserved("frame")));
                                 if(_loc13_)
                                 {
                                 }
                                 break;
                              }
                              addr00d0:
                              while(true)
                              {
                                 §§push(§`!3§);
                                 if(!_loc13_)
                                 {
                                    §§push("frame");
                                    if(_loc13_)
                                    {
                                       break;
                                    }
                                    if(!(§§pop() in StringMap.§+!#§))
                                    {
                                       §§push(param2.h["frame"]);
                                       break;
                                    }
                                 }
                                 §§push(param2.getReserved("frame"));
                                 break;
                              }
                              §§push(§§pop().§ !`§(§§pop(),0));
                              if(_loc14_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc14_)
                                 {
                                 }
                              }
                              break loop2;
                           }
                           §§push("frame");
                        }
                        §§push(§§pop() in param2.h);
                        break;
                     }
                     if(!§§pop())
                     {
                        §§push(0);
                        if(!_loc13_)
                        {
                           break;
                        }
                        §§goto(addr0124);
                     }
                  }
                  §§goto(addr00d0);
               }
               addr0124:
               var _loc7_:* = §§pop();
               loop5:
               while(true)
               {
                  if(_loc14_)
                  {
                     _loc6_.spritesheet.§,=§(_loc7_);
                     if(_loc13_)
                     {
                        break;
                     }
                  }
                  while(true)
                  {
                     §§push("xInverted");
                     if(_loc14_)
                     {
                        §§push(§§pop() in StringMap.§+!#§);
                        if(_loc13_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           break loop5;
                        }
                        §§push("xInverted");
                     }
                     §§push(§§pop() in param2.h);
                     if(_loc14_)
                     {
                        break;
                     }
                     §§goto(addr0177);
                  }
                  §§goto(addr0176);
               }
               §§push(Boolean(param2.existsReserved("xInverted")));
               if(_loc14_)
               {
                  addr0176:
                  §§goto(addr0177);
               }
               addr0177:
               var _loc8_:* = §§pop();
               while(true)
               {
                  if(!_loc13_)
                  {
                     _loc6_.spritesheet.§@S§(_loc8_);
                     if(!_loc14_)
                     {
                        break;
                     }
                  }
                  loop8:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        if(!_loc13_)
                        {
                           §§push("xIndex");
                           if(!_loc13_)
                           {
                              §§push(§§pop() in StringMap.§+!#§);
                              if(_loc13_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 if(_loc14_)
                                 {
                                    addr01b7:
                                    §§push(Boolean(param2.existsReserved("xIndex")));
                                    if(_loc13_)
                                    {
                                    }
                                    break;
                                 }
                                 break loop8;
                              }
                              §§push("xIndex");
                           }
                           §§push(§§pop() in param2.h);
                           break;
                        }
                        §§goto(addr01b7);
                     }
                     if(§§pop())
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(0);
                        if(!_loc13_)
                        {
                           §§goto(addr0236);
                        }
                        §§goto(addr0256);
                     }
                     §§goto(addr0270);
                  }
                  while(true)
                  {
                     §§push(§`!3§);
                     if(!_loc13_)
                     {
                        §§push("xIndex");
                        if(!_loc14_)
                        {
                           break;
                        }
                        if(!(§§pop() in StringMap.§+!#§))
                        {
                           §§push(param2.h["xIndex"]);
                           break;
                        }
                     }
                     §§push(param2.getReserved("xIndex"));
                     break;
                  }
                  loop11:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§pop().§ M§(§§pop(),0));
                        if(!_loc13_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc13_)
                           {
                              addr0236:
                              §§push("zIndex");
                              if(_loc14_)
                              {
                                 §§push(§§pop() in StringMap.§+!#§);
                                 if(!_loc14_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc13_)
                                    {
                                       addr0256:
                                       §§push(Boolean(param2.existsReserved("zIndex")));
                                       if(_loc13_)
                                       {
                                       }
                                       break;
                                    }
                                    break loop11;
                                 }
                                 §§push("zIndex");
                              }
                              §§push(§§pop() in param2.h);
                              break;
                           }
                           break loop11;
                        }
                        §§goto(addr0256);
                     }
                     addr0270:
                     if(§§pop())
                     {
                        break;
                     }
                     §§push(0);
                     if(!_loc13_)
                     {
                        continue loop15;
                     }
                     §§goto(addr02e4);
                  }
                  while(true)
                  {
                     §§push(§`!3§);
                     if(_loc14_)
                     {
                        §§push("zIndex");
                        if(!_loc14_)
                        {
                           break;
                        }
                        if(!(§§pop() in StringMap.§+!#§))
                        {
                           §§push(param2.h["zIndex"]);
                           break;
                        }
                     }
                     §§push(param2.getReserved("zIndex"));
                     break;
                  }
                  §§push(§§pop().§ M§(§§pop(),0));
                  if(_loc14_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc14_)
                     {
                     }
                  }
                  loop14:
                  while(true)
                  {
                     loop15:
                     while(true)
                     {
                        while(true)
                        {
                           §§push("countFromEnd");
                           if(_loc14_)
                           {
                              §§push(§§pop() in StringMap.§+!#§);
                              if(!_loc14_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 addr02e4:
                                 §§push(Boolean(param2.existsReserved("countFromEnd")));
                                 if(_loc14_)
                                 {
                                    break loop15;
                                 }
                                 break;
                              }
                              §§push("countFromEnd");
                           }
                           §§push(§§pop() in param2.h);
                           if(!_loc13_)
                           {
                              break loop15;
                           }
                           break loop14;
                        }
                        §§goto(addr0343);
                     }
                     while(true)
                     {
                        §§push("heightAboveTile");
                        if(!_loc13_)
                        {
                           §§push(§§pop() in StringMap.§+!#§);
                           if(!_loc14_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              if(!_loc13_)
                              {
                                 break loop14;
                              }
                              break loop17;
                           }
                           §§push("heightAboveTile");
                        }
                        §§push(§§pop() in param2.h);
                        break;
                     }
                     §§goto(addr033f);
                  }
                  §§push(Boolean(param2.existsReserved("heightAboveTile")));
                  if(_loc14_)
                  {
                  }
                  addr033f:
                  if(§§pop())
                  {
                     addr0343:
                     while(true)
                     {
                        §§push(§`!3§);
                        if(_loc14_)
                        {
                           §§push("heightAboveTile");
                           if(_loc13_)
                           {
                              break;
                           }
                           if(!(§§pop() in StringMap.§+!#§))
                           {
                              §§push(param2.h["heightAboveTile"]);
                              break;
                           }
                        }
                        §§push(param2.getReserved("heightAboveTile"));
                        break;
                     }
                     §§push(§§pop().§ M§(§§pop(),0));
                     if(_loc14_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc14_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(0);
                  }
                  §§pop().§9E§(§§pop(),§§pop(),§§pop(),§§pop());
                  if(!_loc13_)
                  {
                     _loc6_.transform.§3;§();
                  }
                  break;
               }
               var _loc9_:Vector.<§'h§> = _loc4_.§"[§.§3!#§.§5V§;
               while(true)
               {
                  if(!_loc13_)
                  {
                     §§push(1);
                     if(!_loc14_)
                     {
                        break;
                     }
                     §§push(int(§§pop()));
                     if(!_loc14_)
                     {
                        break;
                     }
                     _loc7_ = §§pop();
                  }
                  §§push(int(_loc9_.length));
                  if(!_loc13_)
                  {
                     break;
                  }
                  §§goto(addr03d8);
               }
               addr03d8:
               var _loc10_:* = §§pop();
               if(_loc14_)
               {
                  while(_loc7_ < _loc10_)
                  {
                     §§push(_loc7_);
                     if(!_loc13_)
                     {
                        _loc7_++;
                        if(_loc14_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc11_ = §§pop();
                     _loc12_ = _loc9_[_loc11_];
                     if(!_loc14_)
                     {
                        break;
                     }
                     if(int(_loc12_.§@8§.indexOf(_loc6_.spritesheet,0)) >= 0)
                     {
                        if(_loc14_)
                        {
                           _loc9_[_loc11_] = _loc9_[0];
                           if(_loc14_)
                           {
                              _loc9_[0] = _loc12_;
                           }
                        }
                        break;
                     }
                  }
               }
               return null;
            }
         }
         return null;
      }
   }
}

