package §>T§
{
   import §!!$§.§ 6§;
   import §"!M§.§!!P§;
   import §&!a§.§2g§;
   import §+!1§.§[!9§;
   import §-!!§.§-;§;
   import §-!2§.§"&§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.level.Level;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.§4!O§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import unitsystem.§7o§;
   
   public class §0!E§
   {
      
      public static var init__:Boolean;
      
      public static var §8!W§:Point3D;
      
      public static var SIDE_1:Point3D;
      
      public static var SIDE_2:Point3D;
      
      public static var SIDE_3:Point3D;
      
      public static var §#<§:Point3D;
      
      public static var §`!!§:Point3D;
      
      public static var side1:Point3D;
      
      public static var side2:Point3D;
      
      public static var §`,§:Point3D;
      
      public var §4!W§:Number;
      
      public var §!!%§:int;
      
      public var §'1§:Boolean;
      
      public var §<T§:int;
      
      public var §4!5§:§-n§;
      
      public var §7F§:§'H§;
      
      public var rotation:Quaternion;
      
      public var § 5§:Number;
      
      public var §!!_§:Number;
      
      public var §@8§:Vector.<Model>;
      
      public var §#I§:Boolean;
      
      public var identifier:String;
      
      public var §0w§:Number;
      
      public var §[l§:Number;
      
      public var §^=§:Number;
      
      public var §=!M§:Number;
      
      public var §"!H§:Number;
      
      public var color2:int;
      
      public var color1:int;
      
      public var §@!B§:§!!P§;
      
      public function §0!E§(param1:Number, param2:Number, param3:Number, param4:int, param5:int, param6:Boolean, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:§'H§, param13:§-n§, param14:§!!P§, param15:int, param16:Boolean, param17:String)
      {
         §§push(false);
         var _loc22_:Boolean = true;
         var _loc23_:* = §§pop();
         var _loc18_:* = NaN;
         var _loc19_:Boolean = false;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc22_)
               {
                  §0w§ = param1;
                  §[l§ = param2;
                  §^=§ = param3;
                  §4!5§ = param13;
                  color1 = param4;
                  color2 = param5;
                  §'1§ = param6;
                  §4!W§ = param9;
                  if(!_loc22_)
                  {
                     break loop0;
                  }
                  §!!_§ = param10;
                  § 5§ = param11;
                  if(!_loc22_)
                  {
                     break;
                  }
                  §=!M§ = param7;
                  if(!_loc22_)
                  {
                     break loop0;
                  }
               }
               §"!H§ = param8;
               if(_loc22_)
               {
                  §7F§ = param12;
                  if(_loc22_)
                  {
                     §#I§ = param16;
                     if(_loc23_)
                     {
                        break loop0;
                     }
                     identifier = param17;
                     §<T§ = param15;
                     if(§'1§)
                     {
                        §§push(§§findproperty(§=!M§));
                        §§push(§=!M§);
                        if(!_loc23_)
                        {
                           §§push(§§pop() * §7F§.§?!3§(0).§0]§);
                        }
                        §§pop().§=!M§ = §§pop();
                        break loop0;
                     }
                     continue loop20;
                  }
                  continue loop5;
               }
               §§goto(addr02dc);
            }
            §>z§();
            break loop11;
         }
         §§push(§§findproperty(§"!H§));
         §§push(§"!H§);
         if(!_loc23_)
         {
            §§push(§§pop() * §7F§.§?!3§(0).§7!1§);
         }
         §§pop().§"!H§ = §§pop();
         while(true)
         {
            loop3:
            while(true)
            {
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        loop10:
                        while(true)
                        {
                           loop11:
                           while(true)
                           {
                              loop12:
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
                                          loop16:
                                          while(true)
                                          {
                                             loop17:
                                             while(true)
                                             {
                                                loop18:
                                                while(true)
                                                {
                                                   loop19:
                                                   while(true)
                                                   {
                                                      loop20:
                                                      while(true)
                                                      {
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§push(true);
                                                            if(_loc22_)
                                                            {
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     if(!_loc23_)
                                                                     {
                                                                        if(param9 != 0)
                                                                        {
                                                                           continue loop25;
                                                                        }
                                                                        if(_loc22_)
                                                                        {
                                                                           §§pop();
                                                                           §§push(param10);
                                                                           if(!_loc23_)
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc22_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc23_)
                                                                              {
                                                                                 break loop22;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr019c);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§push(!§§pop());
                                                                     if(_loc22_)
                                                                     {
                                                                        break loop22;
                                                                     }
                                                                     continue loop25;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(_loc23_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§pop();
                                                                        if(!_loc22_)
                                                                        {
                                                                           break loop8;
                                                                        }
                                                                        §§push(param11 == 0);
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        §§push(param9);
                                                                        if(!_loc23_)
                                                                        {
                                                                           §§push(1.5707963267948966);
                                                                           if(_loc23_)
                                                                           {
                                                                              break loop7;
                                                                           }
                                                                           §§push(§§pop() % §§pop());
                                                                           if(_loc23_)
                                                                           {
                                                                              break loop3;
                                                                           }
                                                                           _loc18_ = Number(§§pop());
                                                                           §§goto(addr01db);
                                                                        }
                                                                        §§goto(addr01dd);
                                                                     }
                                                                     else
                                                                     {
                                                                        rotation = QuaternionUtils.setFromEuler(param9,param11,param10);
                                                                        while(true)
                                                                        {
                                                                           if(_loc22_)
                                                                           {
                                                                              break loop8;
                                                                           }
                                                                           §§goto(addr035a);
                                                                        }
                                                                        §§goto(addr036d);
                                                                     }
                                                                  }
                                                                  §§goto(addr021b);
                                                               }
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!Boolean(§§pop()))
                                                                        {
                                                                           §§pop();
                                                                           if(_loc23_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(param11);
                                                                           if(!_loc22_)
                                                                           {
                                                                              break loop25;
                                                                           }
                                                                           §§push(§§pop() == 0);
                                                                           if(_loc23_)
                                                                           {
                                                                              break loop12;
                                                                           }
                                                                           §§push(!§§pop());
                                                                           if(_loc23_)
                                                                           {
                                                                              break loop24;
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc23_)
                                                                           {
                                                                              §§push(false);
                                                                              §§push(param10);
                                                                              if(!_loc23_)
                                                                              {
                                                                                 addr019c:
                                                                                 §§push(0);
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    break loop23;
                                                                                 }
                                                                                 break loop9;
                                                                              }
                                                                              break loop10;
                                                                           }
                                                                           break loop11;
                                                                        }
                                                                        break loop8;
                                                                     }
                                                                     addr01dd:
                                                                     _loc20_ = Number(_loc18_);
                                                                     addr01db:
                                                                     if(_loc22_)
                                                                     {
                                                                        §§push(_loc20_);
                                                                        if(!_loc22_)
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                        if(§§pop() < 0)
                                                                        {
                                                                           §§push(_loc20_);
                                                                           break;
                                                                        }
                                                                        if(!_loc23_)
                                                                        {
                                                                           §§goto(addr0205);
                                                                           §§push(_loc20_);
                                                                        }
                                                                        §§goto(addr02d4);
                                                                     }
                                                                     §§goto(addr02f4);
                                                                  }
                                                                  addr0205:
                                                                  while(true)
                                                                  {
                                                                     §§push(-§§pop());
                                                                     §§push(1e-10);
                                                                     if(!_loc23_)
                                                                     {
                                                                        addr021b:
                                                                        §§push(§§pop() >= §§pop());
                                                                        if(_loc23_)
                                                                        {
                                                                           break loop13;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc23_)
                                                                           {
                                                                              break loop8;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc18_ >= 0)
                                                                              {
                                                                                 if(!_loc22_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(_loc18_);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(-_loc18_);
                                                                              }
                                                                              §§push(1.5707963267948966);
                                                                              if(_loc23_)
                                                                              {
                                                                                 break loop7;
                                                                              }
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc23_)
                                                                              {
                                                                                 break loop21;
                                                                              }
                                                                              _loc21_ = Number(§§pop());
                                                                              if(!_loc22_)
                                                                              {
                                                                                 break loop20;
                                                                              }
                                                                              §§push(_loc21_);
                                                                              if(!_loc22_)
                                                                              {
                                                                                 break loop19;
                                                                              }
                                                                              §§push(0);
                                                                              if(_loc23_)
                                                                              {
                                                                                 break loop18;
                                                                              }
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 break loop15;
                                                                              }
                                                                              §§push(-_loc21_);
                                                                              if(!_loc22_)
                                                                              {
                                                                                 break loop17;
                                                                              }
                                                                              §§push(1e-10);
                                                                              if(!_loc22_)
                                                                              {
                                                                                 break loop7;
                                                                              }
                                                                           }
                                                                           §§goto(addr0288);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(true);
                                                                           if(_loc22_)
                                                                           {
                                                                              _loc19_ = §§pop();
                                                                              if(!_loc23_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              break loop15;
                                                                           }
                                                                           §§goto(addr02ec);
                                                                        }
                                                                     }
                                                                     _loc19_ = §§pop() < §§pop();
                                                                     if(_loc22_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     break loop16;
                                                                  }
                                                                  §§push(_loc19_);
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  break loop8;
                                                               }
                                                               §§push(§§findproperty(§!!%§));
                                                               §§push(§2g§.§6!W§(param9));
                                                               if(_loc22_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                               }
                                                               §§pop().§!!%§ = §§pop();
                                                               if(_loc23_)
                                                               {
                                                                  break loop8;
                                                               }
                                                               addr02d4:
                                                               §4!W§ = 0;
                                                               §§push(false);
                                                               if(!_loc22_)
                                                               {
                                                                  break loop14;
                                                               }
                                                               if(param15 < 0)
                                                               {
                                                                  break loop12;
                                                               }
                                                               addr02ec:
                                                               §§pop();
                                                               if(!_loc22_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               addr02f4:
                                                               §§push(§"=§.§,n§[param15]);
                                                               if(_loc22_)
                                                               {
                                                                  §§push(§§pop());
                                                               }
                                                               §§push(§§pop() == "ruined");
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            break loop12;
                                                         }
                                                         §§goto(addr03cd);
                                                      }
                                                      §§goto(addr043e);
                                                   }
                                                   §§goto(addr039b);
                                                }
                                                §§goto(addr03cf);
                                             }
                                             §§goto(addr0406);
                                          }
                                          §§goto(addr0421);
                                       }
                                       §§goto(addr0383);
                                    }
                                    §§goto(addr033d);
                                 }
                                 §§goto(addr034f);
                              }
                              if(§§pop())
                              {
                                 §!!%§ = 0;
                              }
                              break loop8;
                           }
                           §@!B§ = param14;
                           addr043e:
                           return;
                        }
                        §§goto(addr033f);
                     }
                     if(§§pop() != §§pop())
                     {
                        §§pop();
                        addr034f:
                        §§push(param13 == §-n§.§?!W§);
                     }
                     §§goto(addr0350);
                  }
                  addr0350:
                  §§push(false);
                  if(!_loc23_)
                  {
                     addr033f:
                     addr033d:
                     §§push(param10);
                     §§push(0);
                     break loop9;
                  }
                  if(§§pop())
                  {
                     if(!_loc23_)
                     {
                        addr035a:
                        §§push(Number(Math.cos(param10)));
                        if(!_loc23_)
                        {
                           _loc18_ = §§pop();
                        }
                        else
                        {
                           §§goto(addr03ac);
                        }
                     }
                     addr036d:
                     §§push(_loc18_);
                     if(_loc22_)
                     {
                        if(§§pop() >= 0)
                        {
                           if(!_loc23_)
                           {
                              addr0383:
                              §§push(_loc18_);
                              break loop3;
                           }
                           break loop1;
                        }
                        §§push(_loc18_);
                        if(_loc22_)
                        {
                           §§push(-§§pop());
                           break loop3;
                        }
                        §§goto(addr03cd);
                     }
                     §§goto(addr0406);
                  }
                  §§goto(addr0421);
               }
               §§goto(addr03ae);
            }
            §§push(Number(§§pop()));
            if(!_loc22_)
            {
               break loop5;
            }
            addr039b:
            _loc20_ = §§pop();
            if(!_loc23_)
            {
               continue loop5;
            }
            §§goto(addr03d9);
         }
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               while(true)
               {
                  §§push(_loc20_);
                  if(_loc22_)
                  {
                     addr03ae:
                     addr03ac:
                     if(§§pop() >= 0.5)
                     {
                        break;
                     }
                     §§push(Number(Math.sin(param10)));
                     if(!_loc22_)
                     {
                        break loop5;
                     }
                     §§push(Number(§§pop()));
                     if(!_loc22_)
                     {
                        break loop4;
                     }
                  }
                  _loc21_ = §§pop();
                  addr03cd:
                  addr03cf:
                  if(_loc21_ >= 0)
                  {
                     if(!_loc22_)
                     {
                        break;
                     }
                     §§push(_loc21_);
                     if(!_loc22_)
                     {
                        break loop4;
                     }
                     §§push(Number(§§pop()));
                     if(!_loc23_)
                     {
                        break loop4;
                     }
                  }
                  else
                  {
                     §§push(_loc21_);
                     if(!_loc23_)
                     {
                        break loop5;
                     }
                  }
                  §§goto(addr0407);
               }
               §§goto(addr0409);
            }
            addr0407:
            _loc20_ = -§§pop();
            addr0406:
            break loop6;
         }
         _loc20_ = §§pop();
         addr0409:
         §§push(§§findproperty(§[l§));
         §§push(§[l§);
         if(_loc22_)
         {
            §§push(§§pop() * (1 / _loc20_));
         }
         §§pop().§[l§ = §§pop();
         addr0421:
         §@8§ = new Vector.<Model>();
         break loop1;
      }
      
      public function §>z§() : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc1_:* = null as Point3D;
         var _loc2_:* = NaN;
         var _loc3_:* = null as Point3D;
         var _loc4_:* = NaN;
         var _loc8_:* = null as §-n§;
         var _loc9_:int = 0;
         var _loc10_:* = 0;
         var _loc11_:* = null as Array;
         loop3:
         while(true)
         {
            while(true)
            {
               if(_loc12_)
               {
                  §@8§.length = 0;
                  if(_loc12_)
                  {
                     loop21:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(true);
                           if(!_loc13_)
                           {
                              if(§4!5§ == §-n§.§?!W§)
                              {
                                 break loop21;
                              }
                              if(_loc13_)
                              {
                                 break loop21;
                              }
                              §§pop();
                              if(_loc13_)
                              {
                                 break;
                              }
                              §§push(§4!5§ == §-n§.§9l§);
                              if(_loc13_)
                              {
                                 break loop21;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break loop21;
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc12_)
                        {
                           break loop22;
                        }
                        _loc1_ = §0!E§.SIDE_1;
                        if(_loc12_)
                        {
                           while(true)
                           {
                              §§push(§0w§);
                              if(!_loc13_)
                              {
                                 §§push(§§pop() * 2);
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                              }
                              §§push(Number(§§pop()));
                              break;
                           }
                           _loc2_ = §§pop();
                        }
                        _loc3_ = §0!E§.side1;
                        while(true)
                        {
                           if(_loc12_)
                           {
                              if(_loc3_ == null)
                              {
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 _loc3_ = new Point3D(0,0,0);
                              }
                              _loc3_.x = _loc1_.x * _loc2_;
                              if(!_loc12_)
                              {
                                 break;
                              }
                           }
                           _loc3_.y = _loc1_.y * _loc2_;
                           if(!_loc13_)
                           {
                              break;
                           }
                           addr0117:
                           _loc1_ = §0!E§.SIDE_2;
                           if(_loc12_)
                           {
                              §§push(§[l§);
                              if(!_loc13_)
                              {
                                 §§push(§§pop() * 2);
                                 if(_loc12_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              _loc2_ = §§pop();
                           }
                           _loc3_ = §0!E§.side2;
                           while(true)
                           {
                              if(_loc3_ == null)
                              {
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 _loc3_ = new Point3D(0,0,0);
                              }
                              _loc3_.x = _loc1_.x * _loc2_;
                              _loc3_.y = _loc1_.y * _loc2_;
                              §§push(_loc3_);
                              §§push(_loc1_.z);
                              if(_loc12_)
                              {
                                 §§push(§§pop() * _loc2_);
                              }
                              §§pop().z = §§pop();
                              break;
                           }
                           §§push(§0!E§.§`,§);
                           §§push(-§0!E§.side1.x);
                           if(_loc12_)
                           {
                              §§push(§§pop() / 2);
                              if(!_loc13_)
                              {
                                 §§push(§§pop() - §0!E§.side2.x / 2);
                              }
                           }
                           §§pop().x = §§pop();
                           while(true)
                           {
                              §§push(§0!E§.§`,§);
                              §§push(-§0!E§.side1.y);
                              if(_loc12_)
                              {
                                 §§push(§§pop() / 2);
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                              }
                              §§push(§§pop() - §0!E§.side2.y / 2);
                              break;
                           }
                           §§pop().y = §§pop();
                           loop27:
                           while(true)
                           {
                              §§push(§0!E§.§`,§);
                              §§push(§0!E§.side1.z);
                              if(!_loc13_)
                              {
                                 §§push(-§§pop());
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                              }
                              §§push(§§pop() / 2);
                              if(_loc12_)
                              {
                                 while(true)
                                 {
                                    §§push(§0!E§.side2.z);
                                    if(!_loc13_)
                                    {
                                       §§push(§§pop() / 2);
                                       if(_loc13_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(§§pop() - §§pop());
                                    if(!_loc13_)
                                    {
                                       §§push(§[l§);
                                       break;
                                    }
                                    break loop27;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                              }
                              addr0232:
                              §§pop().z = §§pop();
                           }
                           §§goto(addr0232);
                        }
                        §§push(_loc3_);
                        §§push(_loc1_.z);
                        if(!_loc13_)
                        {
                           §§push(§§pop() * _loc2_);
                        }
                        §§pop().z = §§pop();
                        §§goto(addr0117);
                     }
                     §§push(0);
                     if(_loc12_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc12_)
                        {
                           _loc2_ = §§pop();
                           break loop22;
                        }
                        break loop3;
                     }
                     break;
                  }
               }
               §§push(1);
               break;
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         var _loc6_:* = 1;
         while(true)
         {
            if(!_loc13_)
            {
               if(!§'1§)
               {
                  break;
               }
               if(!_loc12_)
               {
                  break;
               }
            }
            §§push(§7F§.§?!3§(0).§0]§);
            if(!_loc13_)
            {
               §§push(Number(§§pop()));
               if(!_loc13_)
               {
                  _loc5_ = §§pop();
                  if(!_loc12_)
                  {
                     break;
                  }
                  §§push(§7F§.§?!3§(0).§7!1§);
                  if(!_loc13_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            _loc6_ = §§pop();
            break;
         }
         var _loc7_:Rectangle = new Rectangle(0,0,§=!M§,§"!H§);
         if(!_loc13_)
         {
            loop0:
            while(_loc2_ < _loc5_)
            {
               _loc7_.x = _loc2_;
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        if(!_loc13_)
                        {
                           §§push(0);
                           if(_loc13_)
                           {
                              break;
                           }
                           _loc4_ = §§pop();
                           if(_loc13_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              §§push(_loc4_);
                              if(!_loc12_)
                              {
                                 break loop9;
                              }
                              §§push(_loc6_);
                              if(_loc13_)
                              {
                                 break loop7;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 break loop6;
                              }
                              _loc7_.y = _loc4_;
                              if(_loc13_)
                              {
                                 continue loop0;
                              }
                           }
                           break;
                           addr0553:
                        }
                        while(true)
                        {
                           _loc8_ = §4!5§;
                           loop10:
                           while(true)
                           {
                              loop11:
                              while(true)
                              {
                                 loop12:
                                 while(true)
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          §§push(_loc8_.§+!=§);
                                          if(_loc12_)
                                          {
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §@8§.push(new §4!O§(§0!E§.§`,§,§0!E§.side1,§0!E§.side2,color1,1,1,§7F§,color2,_loc7_,§!!%§));
                                                   if(_loc12_)
                                                   {
                                                      break loop12;
                                                   }
                                                   addr04b1:
                                                   §§push(§"&§.fromString(_loc11_[0]));
                                                   if(!_loc12_)
                                                   {
                                                      break loop10;
                                                   }
                                                   §§push(int(§§pop()));
                                                   if(!_loc12_)
                                                   {
                                                      break loop15;
                                                   }
                                                   addr04cf:
                                                   _loc9_ = §§pop();
                                                   if(_loc13_)
                                                   {
                                                      break loop13;
                                                   }
                                                   addr04d9:
                                                   §§push(int(_loc11_.length));
                                                   if(!_loc12_)
                                                   {
                                                      break loop10;
                                                   }
                                                   break;
                                                case 1:
                                                   §@8§.push(new §&!T§(§0!E§.§`,§,§0!E§.side1,§0!E§.side2,color1,§7F§));
                                                   break loop12;
                                                case 2:
                                                   §§push(§@8§);
                                                   §§push(§§findproperty(§`C§));
                                                   §§push(14540253);
                                                   §§push(§-;§.§+c§(color2,14540253,0.9));
                                                   if(_loc12_)
                                                   {
                                                      §§push(uint(§§pop()));
                                                   }
                                                   loop17:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§7F§);
                                                         §§push(§0w§);
                                                         §§push(§^=§);
                                                         if(!_loc13_)
                                                         {
                                                            if(!§#I§)
                                                            {
                                                               §§push(§[l§);
                                                               break;
                                                            }
                                                         }
                                                         §§push(§[l§);
                                                         if(!_loc13_)
                                                         {
                                                            §§push(-§§pop());
                                                            if(_loc13_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         §§push(§§pop());
                                                         break loop17;
                                                      }
                                                      §§push(§§pop());
                                                      break;
                                                   }
                                                   §§pop().push(new §§pop().§`C§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop()));
                                                   if(_loc12_)
                                                   {
                                                      break loop12;
                                                   }
                                                   addr0490:
                                                   addr0496:
                                                   while(true)
                                                   {
                                                      §§push(identifier.split(","));
                                                      if(!_loc13_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc13_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      _loc11_ = §§pop();
                                                      §§goto(addr04b1);
                                                   }
                                                   §§goto(addr04d9);
                                                   break;
                                                case 3:
                                                   §@8§.push(new §@o§(§7F§,§0w§,§#I§,identifier));
                                                   break loop12;
                                                case 4:
                                                   _loc9_ = 0;
                                                   §§push(0);
                                                   if(!_loc12_)
                                                   {
                                                      break loop11;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc12_)
                                                      {
                                                         _loc10_ = §§pop();
                                                         §§push(identifier);
                                                         if(_loc12_)
                                                         {
                                                            if(§§pop() == null)
                                                            {
                                                               break loop13;
                                                            }
                                                            §§goto(addr0490);
                                                         }
                                                         §§goto(addr0496);
                                                      }
                                                      §§goto(addr04cf);
                                                   }
                                                   §§goto(addr04d9);
                                                default:
                                                   break loop12;
                                             }
                                             §§goto(addr0553);
                                          }
                                          if(§§pop() <= 1)
                                          {
                                             break loop13;
                                          }
                                          if(_loc12_)
                                          {
                                             §§push(§"&§.fromString(_loc11_[1]));
                                             break loop10;
                                          }
                                          §§goto(addr0553);
                                       }
                                       §§goto(addr0505);
                                    }
                                    §§goto(addr050f);
                                 }
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc13_)
                                    {
                                       §§push(§§pop() + §"!H§);
                                       if(!_loc12_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(Number(§§pop()));
                                    if(_loc12_)
                                    {
                                       break;
                                    }
                                    addr0551:
                                    _loc4_ = §§pop();
                                    §§goto(addr0553);
                                 }
                                 §§goto(addr0551);
                              }
                              _loc10_ = §§pop();
                              if(_loc12_)
                              {
                                 addr050f:
                                 §@8§.push(new OpenBox(§0w§,_loc9_,_loc10_,§7F§));
                              }
                              break loop12;
                           }
                           §§push(int(§§pop()));
                           if(_loc12_)
                           {
                              addr0505:
                              §§push(int(§§pop()));
                           }
                           break loop11;
                        }
                     }
                     §§push(Number(§§pop()));
                     if(_loc12_)
                     {
                        §§goto(addr0595);
                     }
                     §§goto(addr0596);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc12_)
                  {
                     break loop9;
                  }
                  §§goto(addr0595);
               }
               if(!_loc13_)
               {
                  while(true)
                  {
                     addr0595:
                     §§push(_loc2_);
                     if(!_loc13_)
                     {
                        §§push(§"!H§);
                        break loop7;
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  addr0596:
                  _loc2_ = §§pop();
               }
            }
         }
      }
      
      public function §!h§() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = null as Vector.<Model>;
         var _loc4_:* = null as Model;
         if(_loc5_)
         {
            if(!§'1§)
            {
               var _loc1_:§-n§ = §4!5§;
               loop3:
               while(true)
               {
                  if(!_loc6_)
                  {
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(_loc1_.§+!=§);
                           if(!_loc6_)
                           {
                              switch(§§pop())
                              {
                                 case 0:
                                    §§push(0);
                                 case 1:
                                    _loc2_ = 0;
                                    break loop5;
                                 default:
                                    _loc2_ = 0;
                                    if(!_loc6_)
                                    {
                                       _loc3_ = §@8§;
                                       if(!_loc6_)
                                       {
                                          while(_loc2_ < int(_loc3_.length))
                                          {
                                             _loc4_ = _loc3_[_loc2_];
                                             if(!_loc6_)
                                             {
                                                _loc2_++;
                                                if(_loc5_)
                                                {
                                                   _loc4_.dispose();
                                                }
                                             }
                                          }
                                          if(_loc6_)
                                          {
                                             break loop3;
                                          }
                                       }
                                       §>z§();
                                       break loop3;
                                    }
                                    break loop4;
                              }
                           }
                           _loc2_ = §§pop();
                           if(!_loc6_)
                           {
                              break loop4;
                           }
                           break;
                        }
                     }
                     _loc3_ = §@8§;
                     if(_loc5_)
                     {
                        while(true)
                        {
                           if(_loc2_ >= int(_loc3_.length))
                           {
                              break loop3;
                           }
                           _loc4_ = _loc3_[_loc2_];
                           if(_loc5_)
                           {
                              _loc2_++;
                              if(!_loc5_)
                              {
                                 continue;
                              }
                           }
                           _loc4_.§&c§(color1,color2);
                        }
                     }
                     break;
                  }
                  _loc3_ = §@8§;
                  if(!_loc6_)
                  {
                     while(true)
                     {
                        if(_loc2_ >= int(_loc3_.length))
                        {
                           break loop3;
                        }
                        _loc4_ = _loc3_[_loc2_];
                        if(!_loc6_)
                        {
                           _loc2_++;
                           if(!_loc6_)
                           {
                              _loc4_.§%^§(color1);
                           }
                        }
                     }
                  }
                  break;
               }
               return;
            }
         }
      }
      
      public function clone() : §0!E§
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = null as Quaternion;
         var _loc3_:* = null as Quaternion;
         var _loc4_:* = null as Quaternion;
         var _loc1_:§0!E§ = new §0!E§(§0w§,§[l§,§^=§,color1,color2,§'1§,§=!M§,§"!H§,0,0,0,§7F§,§4!5§,§@!B§,§<T§,§#I§,identifier);
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc5_)
               {
                  if(rotation != null)
                  {
                     _loc3_ = rotation;
                     _loc4_ = new Quaternion();
                     if(!_loc6_)
                     {
                        _loc4_.x = _loc3_.x;
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              _loc4_.y = _loc3_.y;
                              if(!_loc5_)
                              {
                                 break;
                              }
                           }
                           _loc4_.z = _loc3_.z;
                           if(!_loc6_)
                           {
                              break;
                           }
                        }
                        _loc4_.w = _loc3_.w;
                     }
                     _loc2_ = _loc4_;
                     break;
                  }
               }
               _loc2_ = null;
               if(_loc5_)
               {
                  break;
               }
               break loop0;
            }
            _loc1_.rotation = _loc2_;
            break;
         }
         return _loc1_;
      }
   }
}

