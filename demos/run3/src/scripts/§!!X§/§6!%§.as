package §!!X§
{
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §1^§.Transform;
   import §3!b§.Cutscenes;
   import §3!b§.TellAFriend;
   import §4!6§.§!!V§;
   import §`_§.§^s§;
   import com.player03.run3.character.§'O§;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   
   public class §6!%§ extends Model
   {
      
      public static var init__:Boolean;
      
      public static var up:Point3D;
      
      public var z:Number;
      
      public var y:Number;
      
      public var x:Number;
      
      public var dirty:Boolean;
      
      public var §^r§:Number;
      
      public var §0!&§:Number;
      
      public function §6!%§(param1:Number, param2:Number, param3:§!!V§, param4:Vector.<uint>, param5:§'H§)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         while(true)
         {
            if(!_loc7_)
            {
               dirty = true;
               if(_loc7_)
               {
                  break;
               }
               z = 30;
               if(!_loc6_)
               {
                  break;
               }
            }
            super(param3,param4,param5);
            if(_loc6_)
            {
               break;
            }
            §§goto(addr007a);
         }
         §;!6§(new Transform());
         if(_loc6_)
         {
            addr007a:
            §1F§(param1,param2);
            §§goto(addr0083);
         }
         addr0083:
      }
      
      override public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:* = null as Point3D;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = null as Point3D;
         var _loc6_:* = null as §"B§;
         loop0:
         while(true)
         {
            if(_loc8_)
            {
               if(!dirty)
               {
                  break;
               }
               if(_loc8_)
               {
                  §`!Y§();
               }
            }
            _loc2_ = transform.§<!C§();
            while(true)
            {
               loop2:
               while(true)
               {
                  loop13:
                  while(true)
                  {
                     loop14:
                     while(true)
                     {
                        loop15:
                        while(true)
                        {
                           §§push(x);
                           if(!_loc7_)
                           {
                              while(true)
                              {
                                 §§push(§0!&§);
                                 if(_loc8_)
                                 {
                                    _loc3_ = §§pop() - §§pop();
                                    if(!_loc8_)
                                    {
                                       continue loop5;
                                    }
                                    §§push(_loc2_);
                                    §§push(y);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() - §^r§);
                                    }
                                    §§pop().x = §§pop();
                                    if(!_loc7_)
                                    {
                                       _loc2_.y = z;
                                       _loc2_.z = _loc3_;
                                       if(_loc7_)
                                       {
                                          break loop3;
                                       }
                                       §§push(_loc2_.x * _loc2_.x);
                                       if(!_loc8_)
                                       {
                                          break loop13;
                                       }
                                       §§push(_loc2_.y * _loc2_.y);
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_)
                                       {
                                          break loop15;
                                       }
                                       §§push(Number(§§pop()));
                                       if(_loc7_)
                                       {
                                          break loop10;
                                       }
                                       §§push(_loc2_.z);
                                       if(!_loc8_)
                                       {
                                          break loop2;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr0100);
                                    }
                                 }
                                 §§push(§§pop() * _loc2_.z);
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 break loop2;
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc8_)
                              {
                                 continue loop11;
                              }
                           }
                           §§push(Number(§§pop()));
                           if(_loc7_)
                           {
                              break loop14;
                           }
                           §§push(Number(§§pop()));
                           if(!_loc7_)
                           {
                              continue loop11;
                           }
                           §§goto(addr013c);
                        }
                        §§goto(addr0143);
                     }
                     §§goto(addr0107);
                  }
                  §§goto(addr0159);
               }
               §§push(§§pop() < §§pop());
               if(_loc8_)
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  §§push(_loc3_);
                  if(_loc8_)
                  {
                     break loop13;
                  }
                  break loop10;
               }
               continue loop5;
            }
            _loc3_ = §§pop();
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     loop11:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              addr0100:
                              §§push(_loc3_);
                              if(_loc7_)
                              {
                                 break;
                              }
                              §§push(1);
                              if(!_loc8_)
                              {
                                 break loop11;
                              }
                              §§push(§§pop() - §§pop());
                              if(!_loc8_)
                              {
                                 break loop10;
                              }
                              §§push(Number(§§pop()));
                              if(!_loc8_)
                              {
                                 break loop4;
                              }
                              _loc4_ = §§pop();
                              if(_loc7_)
                              {
                                 break loop3;
                              }
                           }
                           §§push(_loc4_);
                           §§push(0);
                           if(!_loc7_)
                           {
                              break loop11;
                           }
                           addr015b:
                           if(§§pop() != §§pop())
                           {
                              §§push(1 / Number(Math.sqrt(_loc3_)));
                              break loop4;
                           }
                           _loc2_.x = 1;
                           _loc2_.y = 0;
                           _loc2_.z = 0;
                           continue loop5;
                        }
                        addr0159:
                        §§goto(addr015b);
                     }
                     if(§§pop() >= §§pop())
                     {
                        §§push(_loc4_);
                     }
                     else
                     {
                        addr013c:
                        §§push(-_loc4_);
                        if(!_loc8_)
                        {
                           break loop12;
                        }
                     }
                     addr0143:
                     §§push(1e-10);
                     break loop2;
                  }
                  _loc3_ = §§pop();
                  _loc2_.x *= _loc3_;
                  _loc2_.y *= _loc3_;
                  if(!_loc7_)
                  {
                     break loop3;
                  }
                  continue loop5;
               }
               §§push(Number(§§pop()));
               break loop10;
            }
            §§push(_loc2_);
            §§push(_loc2_.z);
            if(_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            _loc5_ = _loc2_;
            loop5:
            while(true)
            {
               while(true)
               {
                  if(_loc8_)
                  {
                     if(_loc5_ != null)
                     {
                        break;
                     }
                     if(!_loc8_)
                     {
                        break loop5;
                     }
                  }
                  _loc5_ = new Point3D(0,0,0);
                  break;
               }
               _loc5_.x = _loc2_.x * 32;
               if(_loc8_)
               {
                  _loc5_.y = _loc2_.y * 32;
                  if(!_loc7_)
                  {
                     §§push(_loc5_);
                     §§push(_loc2_.z);
                     if(_loc8_)
                     {
                        §§push(§§pop() * 32);
                     }
                     §§pop().z = §§pop();
                     if(_loc7_)
                     {
                        break;
                     }
                  }
                  transform.§"w§(_loc2_);
               }
               break;
            }
            _loc5_ = _loc2_;
            loop7:
            while(true)
            {
               if(!_loc7_)
               {
                  while(true)
                  {
                     if(_loc5_ == null)
                     {
                        if(_loc7_)
                        {
                           break;
                        }
                        _loc5_ = new Point3D(0,0,0);
                     }
                     _loc5_.x = _loc2_.x * -1;
                     if(!_loc7_)
                     {
                        break;
                     }
                     break loop7;
                  }
               }
               _loc5_.y = _loc2_.y * -1;
               if(_loc8_)
               {
                  break;
               }
               addr0278:
               _loc5_ = §6!%§.up;
               if(!_loc7_)
               {
                  _loc5_.x = 0;
                  if(!_loc7_)
                  {
                     _loc5_.y = -1;
                     if(!_loc7_)
                     {
                        _loc5_.z = 0;
                     }
                  }
               }
               _loc6_ = transform.§+n§();
               while(true)
               {
                  if(!_loc7_)
                  {
                     §4!R§.§+!5§(_loc2_,§6!%§.up,_loc6_);
                     if(_loc7_)
                     {
                        break;
                     }
                     transform.§"I§(_loc6_);
                     if(_loc7_)
                     {
                        break;
                     }
                  }
                  §<'§ = true;
                  if(_loc8_)
                  {
                     break;
                  }
                  break loop0;
               }
               super.update(param1);
               break loop0;
            }
            §§push(_loc5_);
            §§push(_loc2_.z);
            if(_loc8_)
            {
               §§push(§§pop() * -1);
            }
            §§pop().z = §§pop();
            §§goto(addr0278);
         }
      }
      
      public function §8b§(param1:Number, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               §0!&§ = param1;
               if(_loc3_)
               {
                  break;
               }
               §^r§ = param2;
               if(!_loc4_)
               {
                  break;
               }
            }
            dirty = true;
            break;
         }
      }
      
      public function §1F§(param1:Number, param2:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               x = param1;
               if(_loc4_)
               {
                  break;
               }
               y = param2;
               if(!_loc3_)
               {
                  break;
               }
            }
            dirty = true;
            break;
         }
      }
      
      public function §`!Y§() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§!_§.§0!F§(§0!&§,§^r§,x,y));
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(0.14881283422459893);
         if(!_loc4_)
         {
            §§push(§§pop() / _loc1_);
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            transform.§;!2§(_loc2_,_loc2_,_loc2_);
         }
      }
   }
}

