package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §=w§.§,D§;
   import stage.§3!J§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class §#M§ extends §+Z§
   {
      
      public var §2!P§:Array;
      
      public var §7!6§:Object;
      
      public function §#M§(param1:Object)
      {
         var _gthis:§#M§;
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:* = null as String;
         var _loc7_:* = 0;
         while(true)
         {
            if(_loc8_)
            {
               _gthis = this;
               if(_loc9_)
               {
                  break;
               }
            }
            §7!6§ = param1;
            if(!_loc9_)
            {
               break;
            }
            var _loc2_:§ !N§ = null;
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  if(_loc8_)
                  {
                     if(param1.followingPath == null)
                     {
                        break;
                     }
                     if(_loc9_)
                     {
                        break;
                     }
                     §§pop();
                     §§push(param1.followingPathIndex == null);
                     if(!_loc8_)
                     {
                        break loop2;
                     }
                  }
                  §§push(!§§pop());
                  if(_loc8_)
                  {
                     break loop2;
                  }
                  break;
               }
               loop4:
               while(true)
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§push(param1.followingPath);
                        if(!_loc9_)
                        {
                           §§push(§§pop());
                           if(_loc9_)
                           {
                              break;
                           }
                        }
                        _loc3_ = §§pop();
                        if(!_loc8_)
                        {
                           break loop4;
                        }
                        _loc2_ = new § !N§(§>K§.§@!A§().§7j§.get(_loc3_),param1.followingPathIndex);
                     }
                     §§push(param1.followingCutscene);
                     if(!_loc9_)
                     {
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(null);
                              if(!_loc9_)
                              {
                                 §§push(§§pop());
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    followingCutscene = param1.followingCutscene;
                                 }
                                 §§push(param1.levelData);
                                 if(!_loc8_)
                                 {
                                    break loop7;
                                 }
                                 §§push(null);
                              }
                              §§push(§§pop());
                              break;
                           }
                           if(§§pop() != §§pop())
                           {
                              if(param1.tunnelParams == null)
                              {
                                 param1.tunnelParams = {};
                              }
                              break loop4;
                           }
                           §§goto(addr0137);
                        }
                     }
                     break loop7;
                  }
                  §§push(§§pop());
                  break loop7;
               }
               param1.tunnelParams.modifyData = function(param1:int, param2:String):String
               {
                  var _temp_1:* = true;
                  var _loc3_:Boolean = false;
                  var _loc4_:Boolean = _temp_1;
                  while(true)
                  {
                     §§push(param2 + "|");
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() + _gthis.§7!6§.levelData);
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr002e);
                  }
                  addr002e:
                  return §§pop();
               };
               if(_loc8_)
               {
                  addr0137:
                  §§push(param1.path);
                  if(_loc8_)
                  {
                     break loop5;
                  }
                  _loc3_ = §§pop();
                  if(!_loc9_)
                  {
                     super(§>K§.§@!A§().§7j§.get(_loc3_),int(param1.pathIndex),null,param1.tunnelParams,param1.animate,_loc2_ != null ? §+!"§.IF_FOLLOWING_LEVEL_REACHED : null);
                  }
               }
               §§push([]);
               if(_loc8_)
               {
                  §§push(§§pop());
               }
               var _loc4_:* = §§pop();
               §§push(0);
               if(!_loc9_)
               {
                  §§push(int(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(int(param1.frames.length));
               if(_loc8_)
               {
                  §§push(int(§§pop()));
               }
               var _loc6_:* = §§pop();
               if(_loc8_)
               {
                  while(_loc5_ < _loc6_)
                  {
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc8_)
                        {
                           _loc5_++;
                           if(_loc9_)
                           {
                              break;
                           }
                        }
                        §§push(int(§§pop()));
                        break;
                     }
                     _loc7_ = §§pop();
                     if(_loc8_)
                     {
                        §§push(_loc4_);
                        §§push(global);
                        §§push([_loc7_]);
                        §§push(§-!P§);
                        if(_loc8_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().push(§§pop()(§§pop(),null));
                     }
                  }
                  if(!_loc9_)
                  {
                     frames = _loc4_;
                     if(!_loc9_)
                     {
                        §3!<§(_loc2_);
                     }
                  }
               }
               return;
            }
            §§push(Boolean(§§pop()));
            break loop3;
         }
         name = param1.name;
         continue loop2;
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            tunnel = null;
            if(!_loc1_)
            {
               sprites.length = 0;
            }
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:* = null;
         var _loc4_:* = null as StageActor;
         var _loc5_:* = null as String;
         var _loc6_:* = null as § !N§;
         §§push(0);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§7!6§.sprites);
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc8_)
         {
            loop0:
            while(_loc1_ < int(_loc2_.length))
            {
               _loc3_ = _loc2_[_loc1_];
               if(!_loc8_)
               {
                  _loc1_++;
               }
               _loc4_ = new StageActor(section,CharacterRegistry.§&!#§[int(_loc3_.id)],_loc3_.fade,_loc3_.alpha,null,§7!6§.spritesheet);
               while(true)
               {
                  if(!_loc8_)
                  {
                     if(§7!6§.billboardMode)
                     {
                        _loc4_.billboardMode = true;
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
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
                           loop7:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(true);
                                 if(_loc7_)
                                 {
                                    if(_loc3_.goesTo != null)
                                    {
                                       break;
                                    }
                                    if(!_loc7_)
                                    {
                                       break loop2;
                                    }
                                    §§pop();
                                    §§push(_loc3_.goesToPath);
                                    if(!_loc7_)
                                    {
                                       break loop7;
                                    }
                                    §§push(null);
                                    if(_loc8_)
                                    {
                                       break loop4;
                                    }
                                    §§push(§§pop());
                                    if(!_loc7_)
                                    {
                                       break loop3;
                                    }
                                    §§push(§§pop() == §§pop());
                                    if(_loc8_)
                                    {
                                       break loop2;
                                    }
                                 }
                                 §§push(!§§pop());
                                 if(!_loc8_)
                                 {
                                    break loop2;
                                 }
                                 break;
                              }
                              §§goto(addr0108);
                           }
                           §§goto(addr0147);
                        }
                        §§push(§§pop());
                        break;
                     }
                     if(§§pop() != §§pop())
                     {
                        if(_loc8_)
                        {
                           continue loop0;
                        }
                        §§push(_loc3_.goesToPath);
                        if(_loc7_)
                        {
                           addr0147:
                           §§push(§§pop());
                        }
                     }
                     else
                     {
                        §§push(§7!6§.path);
                        if(_loc7_)
                        {
                           §§goto(addr0147);
                        }
                     }
                     _loc5_ = §§pop();
                     while(true)
                     {
                        §§push(§§findproperty(§ !N§));
                        §§push(§>K§.§@!A§().§7j§.get(_loc5_));
                        if(_loc7_)
                        {
                           if(_loc3_.goesTo == null)
                           {
                              §§push(int(§7!6§.pathIndex));
                              break;
                           }
                        }
                        §§push(int(_loc3_.goesTo));
                        if(_loc8_)
                        {
                        }
                        break;
                     }
                     _loc6_ = new §§pop().§ !N§(§§pop(),§§pop());
                     while(true)
                     {
                        if(!_loc8_)
                        {
                           if(_loc6_.§+!=§ < 0)
                           {
                              if(!_loc8_)
                              {
                                 §§push(_loc6_);
                                 §§push(_loc6_.§+!=§);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() + _loc6_.§1!R§.levelCount);
                                 }
                                 §§pop().§+!=§ = §§pop();
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                              }
                           }
                        }
                        _loc4_.goesTo = _loc6_;
                        break;
                     }
                     §§goto(addr01df);
                  }
                  addr0108:
                  if(Boolean(§§pop()))
                  {
                     break;
                  }
                  addr01df:
                  sprites.push(_loc4_);
                  continue loop0;
               }
               §§push(_loc3_.goesToPath);
               if(_loc7_)
               {
                  §§push(null);
                  break loop4;
               }
               break loop7;
            }
         }
      }
      
      public function §-!P§(param1:int) : void
      {
         §§push(false);
         var _loc17_:Boolean = true;
         var _loc18_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = null as Array;
         var _loc4_:* = null as §,D§;
         var _loc6_:* = null as Quaternion;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = null;
         var _loc12_:* = null as StageActor;
         var _loc13_:* = null as §3!J§;
         var _loc14_:* = null as § 7§;
         var _loc15_:* = null as Array;
         var _loc16_:* = null as String;
         loop11:
         while(true)
         {
            loop12:
            while(true)
            {
               if(!_loc18_)
               {
                  §§push(§2!P§);
                  if(_loc18_)
                  {
                     break;
                  }
                  if(§§pop() == null)
                  {
                     break loop11;
                  }
                  if(_loc18_)
                  {
                     break loop11;
                  }
               }
               loop44:
               while(true)
               {
                  §§push(0);
                  if(!_loc18_)
                  {
                     §§push(int(§§pop()));
                     if(_loc18_)
                     {
                        break;
                     }
                  }
                  _loc2_ = §§pop();
                  if(_loc17_)
                  {
                     §§push(§2!P§);
                     if(!_loc18_)
                     {
                        break loop12;
                     }
                     addr009c:
                     _loc3_ = §§pop();
                     if(_loc17_)
                     {
                        while(true)
                        {
                           §§push(_loc2_);
                           break loop44;
                        }
                        addr00d7:
                        if(!_loc18_)
                        {
                           §2!P§ = null;
                        }
                        addr00ce:
                     }
                  }
                  break loop11;
               }
               while(§§pop() < int(_loc3_.length))
               {
                  _loc4_ = _loc3_[_loc2_];
                  if(_loc17_)
                  {
                     _loc2_++;
                     if(!_loc18_)
                     {
                        tunnel.§5!F§(_loc4_);
                     }
                  }
                  §§goto(addr00ce);
               }
               §§goto(addr00d7);
            }
            §§goto(addr009c);
         }
         var _loc5_:* = §7!6§.frames[param1];
         loop13:
         while(true)
         {
            if(_loc5_.cameraPosition != null)
            {
               tunnel.camera.§6!&§(Number(_loc5_.cameraPosition.x),Number(_loc5_.cameraPosition.y),Number(_loc5_.cameraPosition.z));
               if(_loc18_)
               {
                  break;
               }
            }
            if(_loc5_.cameraRotation != null)
            {
               _loc6_ = tunnel.camera.getRotation();
               _loc6_.x = Number(_loc5_.cameraRotation.x);
               loop14:
               while(true)
               {
                  loop15:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc18_)
                        {
                           _loc6_.y = Number(_loc5_.cameraRotation.y);
                           if(_loc18_)
                           {
                              break loop14;
                           }
                           _loc6_.z = Number(_loc5_.cameraRotation.z);
                           _loc6_.w = Number(_loc5_.cameraRotation.w);
                           if(_loc18_)
                           {
                              break loop15;
                           }
                           loop17:
                           while(true)
                           {
                              loop18:
                              while(true)
                              {
                                 §§push(_loc6_.x);
                                 if(!_loc18_)
                                 {
                                    §§push(_loc6_.x);
                                    if(_loc18_)
                                    {
                                       break loop17;
                                    }
                                    loop40:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       §§push(_loc6_.y);
                                       if(!_loc18_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc6_.y);
                                             if(_loc17_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc18_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() + §§pop());
                                                §§push(_loc6_.z);
                                                §§push(_loc6_.z);
                                                if(!_loc17_)
                                                {
                                                   break loop40;
                                                }
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(!_loc18_)
                                             {
                                                break;
                                             }
                                             break loop17;
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc18_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc18_)
                                          {
                                             §§push(_loc6_.w);
                                             §§push(_loc6_.w);
                                             break;
                                          }
                                       }
                                       break loop18;
                                    }
                                 }
                                 loop42:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc18_)
                                       {
                                          _loc7_ = §§pop();
                                          if(!_loc17_)
                                          {
                                             break;
                                          }
                                          §§push(_loc7_);
                                          if(_loc18_)
                                          {
                                             break loop18;
                                          }
                                          §§push(1);
                                          if(!_loc17_)
                                          {
                                             break loop42;
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       _loc8_ = §§pop();
                                       if(!_loc17_)
                                       {
                                          break loop15;
                                       }
                                       §§push(_loc8_);
                                       §§push(0);
                                       if(_loc17_)
                                       {
                                          break loop42;
                                       }
                                       §§goto(addr0258);
                                    }
                                    §§goto(addr0254);
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(_loc8_);
                                    break;
                                 }
                                 §§push(_loc8_);
                                 if(!_loc18_)
                                 {
                                    §§push(-§§pop());
                                    break;
                                 }
                                 §§goto(addr0292);
                              }
                              §§push(1e-10);
                              break;
                           }
                           §§push(§§pop() < §§pop());
                           if(_loc17_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break;
                           }
                           addr0258:
                           addr0254:
                           if(_loc7_ == 0)
                           {
                              _loc6_.x = 0;
                              if(!_loc18_)
                              {
                                 _loc6_.y = 0;
                                 _loc6_.z = 0;
                                 if(_loc17_)
                                 {
                                    _loc6_.w = 1;
                                    break;
                                 }
                                 loop19:
                                 while(true)
                                 {
                                    loop20:
                                    while(true)
                                    {
                                       §§push(true);
                                       if(_loc17_)
                                       {
                                          if(_loc5_.cameraPosition != null)
                                          {
                                             break;
                                          }
                                          if(_loc18_)
                                          {
                                             break loop19;
                                          }
                                       }
                                       §§pop();
                                       loop21:
                                       while(true)
                                       {
                                          if(!_loc18_)
                                          {
                                             §§push(_loc5_.cameraRotation == null);
                                             if(_loc17_)
                                             {
                                                break loop19;
                                             }
                                             break loop20;
                                          }
                                          addr077e:
                                          _loc2_ = 0;
                                          addr077d:
                                          addr077b:
                                          §§push(_loc5_.text);
                                          if(!_loc18_)
                                          {
                                             §§push(§§pop());
                                          }
                                          _loc3_ = §§pop();
                                          loop5:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             addr07e1:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                addr07e2:
                                                while(true)
                                                {
                                                   §§push(int(§§pop().length));
                                                   addr07e5:
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         break loop21;
                                                      }
                                                      _loc11_ = _loc3_[_loc2_];
                                                      if(!_loc18_)
                                                      {
                                                         _loc2_++;
                                                         if(!_loc17_)
                                                         {
                                                            continue loop5;
                                                         }
                                                      }
                                                      dialog.§`!^§(_loc11_.text,Number(_loc11_.x),Number(_loc11_.y),_loc11_.size,_loc11_.width,16777215);
                                                      continue loop5;
                                                   }
                                                   break loop21;
                                                }
                                                continue loop5;
                                             }
                                             break loop21;
                                          }
                                          addr07e0:
                                       }
                                       §§goto(addr07e9);
                                    }
                                    loop22:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc17_)
                                          {
                                             break;
                                          }
                                          tunnel.display(0);
                                       }
                                       loop23:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(_loc5_.min != null)
                                             {
                                                if(!_loc17_)
                                                {
                                                   break;
                                                }
                                                §=!`§ = _loc5_.min;
                                                if(!_loc17_)
                                                {
                                                   break loop23;
                                                }
                                             }
                                             if(_loc5_.max != null)
                                             {
                                                if(!_loc17_)
                                                {
                                                   break loop22;
                                                }
                                                §,!J§ = _loc5_.max;
                                             }
                                             loop26:
                                             while(true)
                                             {
                                                loop27:
                                                while(true)
                                                {
                                                   §§push(_loc5_.sprites);
                                                   if(_loc17_)
                                                   {
                                                      §§push(null);
                                                      if(!_loc17_)
                                                      {
                                                         break loop26;
                                                      }
                                                      loop28:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc18_)
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc17_)
                                                                     {
                                                                        break loop23;
                                                                     }
                                                                     §§goto(addr07e0);
                                                                  }
                                                                  §§goto(addr07e9);
                                                               }
                                                               addr061e:
                                                               §§push(_loc5_.speech);
                                                               if(_loc18_)
                                                               {
                                                                  break loop28;
                                                               }
                                                               §§push(null);
                                                               if(_loc18_)
                                                               {
                                                                  break loop26;
                                                               }
                                                               §§push(§§pop());
                                                               if(!_loc17_)
                                                               {
                                                                  break loop27;
                                                               }
                                                            }
                                                            if(§§pop() != §§pop())
                                                            {
                                                               break;
                                                            }
                                                            addr076d:
                                                            §§push(_loc5_.text);
                                                            break loop28;
                                                         }
                                                         addr063f:
                                                         _loc2_ = 0;
                                                         break loop22;
                                                      }
                                                   }
                                                   break loop28;
                                                }
                                                §§goto(addr0777);
                                             }
                                             §§push(§§pop());
                                             break loop27;
                                          }
                                          loop0:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             §§push(_loc9_);
                                             if(!_loc18_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc18_)
                                                         {
                                                            §§goto(addr061e);
                                                         }
                                                         §§goto(addr063f);
                                                      }
                                                      addr0777:
                                                      if(§§pop() != §§pop())
                                                      {
                                                         §§goto(addr077b);
                                                      }
                                                      §§goto(addr07e9);
                                                   }
                                                   §§goto(addr076d);
                                                }
                                                else
                                                {
                                                   §§push(_loc2_);
                                                   if(!_loc18_)
                                                   {
                                                      _loc2_++;
                                                      if(_loc17_)
                                                      {
                                                         §§push(int(§§pop()));
                                                      }
                                                   }
                                                   _loc10_ = §§pop();
                                                   _loc11_ = _loc5_.sprites[_loc10_];
                                                   if(!_loc17_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc11_ == null)
                                                   {
                                                      continue;
                                                   }
                                                   _loc12_ = sprites[_loc10_];
                                                   loop33:
                                                   while(true)
                                                   {
                                                      loop34:
                                                      while(true)
                                                      {
                                                         if(_loc11_.visible != null)
                                                         {
                                                            if(_loc18_)
                                                            {
                                                               break;
                                                            }
                                                            _loc12_.model.§#"§(Boolean(_loc11_.visible));
                                                            if(!_loc17_)
                                                            {
                                                               break loop33;
                                                            }
                                                            if(!_loc11_.visible)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                         loop36:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               if(param1 > 0)
                                                               {
                                                                  if(_loc18_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc11_.x == null)
                                                                  {
                                                                     break loop34;
                                                                  }
                                                                  if(_loc11_.z == null)
                                                                  {
                                                                     _loc11_.z = §7!6§.frames[param1 - 1].sprites[_loc10_].z;
                                                                     if(!_loc17_)
                                                                     {
                                                                        break loop36;
                                                                     }
                                                                  }
                                                                  if(_loc11_.y == null)
                                                                  {
                                                                     break loop33;
                                                                  }
                                                               }
                                                               §§goto(addr04fe);
                                                            }
                                                            §§goto(addr0513);
                                                         }
                                                         §§goto(addr057a);
                                                      }
                                                      _loc11_.x = §7!6§.frames[param1 - 1].sprites[_loc10_].x;
                                                      §§goto(addr0497);
                                                   }
                                                   _loc11_.y = §7!6§.frames[param1 - 1].sprites[_loc10_].y;
                                                   if(!_loc18_)
                                                   {
                                                      addr04fe:
                                                      _loc12_.placeAt(_loc11_.x,_loc11_.z,false,_loc11_.y);
                                                   }
                                                   addr0513:
                                                   while(true)
                                                   {
                                                      if(_loc11_.frame != null)
                                                      {
                                                         if(_loc17_)
                                                         {
                                                            _loc12_.spritesheet.§,=§(int(_loc11_.frame));
                                                            if(_loc18_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                      }
                                                      if(_loc11_.invert != null)
                                                      {
                                                         if(_loc18_)
                                                         {
                                                            break;
                                                         }
                                                         _loc12_.spritesheet.§@S§(Boolean(_loc11_.invert));
                                                         if(_loc18_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      if(_loc11_.jump != null)
                                                      {
                                                         if(§2!P§ == null)
                                                         {
                                                            break;
                                                         }
                                                         addr0582:
                                                         _loc13_ = new §3!J§(_loc12_,int(_loc11_.jump.angle),Number(_loc11_.jump.strength),_loc11_.jump.land);
                                                         if(_loc17_)
                                                         {
                                                            tunnel.registerAnimation(_loc13_);
                                                            if(_loc17_)
                                                            {
                                                               §2!P§.push(_loc13_);
                                                               if(_loc17_)
                                                               {
                                                                  §§push(dialog.§+!P§);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                                  if(§§pop() != null)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  if(!_loc17_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§push(dialog);
                                                         §§push(tunnel.display);
                                                         if(!_loc18_)
                                                         {
                                                            §§push(§§pop());
                                                         }
                                                         §§pop().§+!P§ = §§pop();
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr057a:
                                                   §2!P§ = [];
                                                   §§goto(addr0582);
                                                }
                                             }
                                             loop1:
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   break loop31;
                                                }
                                                _loc11_ = _loc3_[_loc2_];
                                                loop38:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc18_)
                                                      {
                                                         _loc2_++;
                                                         if(!_loc18_)
                                                         {
                                                            if(_loc11_.tail == null)
                                                            {
                                                               _loc14_ = null;
                                                               break;
                                                            }
                                                         }
                                                      }
                                                      _loc14_ = new § 6§(sprites[int(_loc11_.tail)].§<!U§());
                                                      if(!_loc18_)
                                                      {
                                                         break;
                                                      }
                                                      break loop38;
                                                   }
                                                   dialog.§";§(_loc11_.text,Number(_loc11_.x),Number(_loc11_.y),_loc11_.size,_loc11_.width,_loc11_.connect,_loc14_,_loc11_.tailLength);
                                                   §§push(_loc11_.bold);
                                                   if(_loc17_)
                                                   {
                                                      if(§§pop() != null)
                                                      {
                                                         if(!_loc17_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(0);
                                                         if(!_loc18_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(!_loc18_)
                                                            {
                                                               _loc9_ = §§pop();
                                                               break;
                                                            }
                                                         }
                                                         §§goto(addr0749);
                                                      }
                                                      §§goto(addr0752);
                                                   }
                                                   §§goto(addr0713);
                                                }
                                                §§push(_loc11_.bold);
                                                if(!_loc18_)
                                                {
                                                   addr0713:
                                                   §§push(§§pop());
                                                }
                                                _loc15_ = §§pop();
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(_loc9_);
                                                   addr0749:
                                                   addr0752:
                                                   while(§§pop() < int(_loc15_.length))
                                                   {
                                                      §§push(_loc15_[_loc9_]);
                                                      if(_loc17_)
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                      _loc16_ = §§pop();
                                                      if(_loc17_)
                                                      {
                                                         _loc9_++;
                                                         if(_loc17_)
                                                         {
                                                            § !C§(_loc16_);
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc18_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc3_);
                                                      if(_loc17_)
                                                      {
                                                         §§push(int(§§pop().length));
                                                         if(!_loc18_)
                                                         {
                                                            break loop3;
                                                         }
                                                         §§goto(addr07e5);
                                                      }
                                                      §§goto(addr07e2);
                                                   }
                                                   break loop1;
                                                }
                                             }
                                             §§goto(addr07e1);
                                          }
                                          addr0609:
                                       }
                                       while(true)
                                       {
                                          §§push(0);
                                          if(_loc17_)
                                          {
                                             §§push(int(§§pop()));
                                             if(!_loc18_)
                                             {
                                                _loc2_ = §§pop();
                                                if(!_loc18_)
                                                {
                                                   break loop13;
                                                }
                                                break loop22;
                                             }
                                             §§goto(addr077e);
                                          }
                                          §§goto(addr077d);
                                       }
                                       addr07e9:
                                       return;
                                    }
                                    _loc3_ = _loc5_.speech;
                                    §§goto(addr0752);
                                 }
                                 §§push(!§§pop());
                                 if(!_loc18_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 break loop20;
                              }
                              break;
                           }
                           addr0292:
                           _loc7_ = 1 / Number(Math.sqrt(_loc7_));
                           if(_loc18_)
                           {
                              break loop14;
                           }
                           §§push(_loc6_);
                           §§push(_loc6_.x);
                           if(!_loc18_)
                           {
                              §§push(§§pop() * _loc7_);
                           }
                           §§pop().x = §§pop();
                        }
                        §§push(_loc6_);
                        §§push(_loc6_.y);
                        if(_loc17_)
                        {
                           §§push(§§pop() * _loc7_);
                        }
                        §§pop().y = §§pop();
                        break loop14;
                     }
                     tunnel.camera.setRotation(_loc6_);
                     continue loop19;
                  }
                  §§push(_loc6_);
                  §§push(_loc6_.w);
                  if(!_loc18_)
                  {
                     §§push(§§pop() * _loc7_);
                  }
                  §§pop().w = §§pop();
                  break loop16;
               }
               §§push(_loc6_);
               §§push(_loc6_.z);
               if(!_loc18_)
               {
                  §§push(§§pop() * _loc7_);
               }
               §§pop().z = §§pop();
               if(_loc17_)
               {
                  break loop15;
               }
            }
            continue loop19;
         }
         _loc9_ = int(_loc5_.sprites.length);
         if(_loc17_)
         {
            §§goto(addr0609);
         }
         else
         {
            §§goto(addr063f);
         }
      }
   }
}

