package §6[§
{
   import §!!$§.§ 6§;
   import §!!$§.§4o§;
   import §!D§.§1!&§;
   import §"!M§.§!!P§;
   import §%!Z§.§&!S§;
   import §+!1§.§+T§;
   import §+!1§.§;a§;
   import §+!4§.§3!O§;
   import §+!4§.Key;
   import §-!!§.§-;§;
   import §-#§.§3H§;
   import §2X§.§"S§;
   import §2X§.§+F§;
   import §2X§.PositionData3D;
   import §3!b§.Cutscenes;
   import §3!b§.TheNextBigThing;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import §<!&§.§%!§;
   import §<?§.§#!7§;
   import §>!O§.§0S§;
   import §>T§.§!=§;
   import §>T§.§"=§;
   import §>T§.§-n§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import §]!C§.§"V§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Save;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§9t§;
   import com.player03.run3.save.§]k§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxe.§%!-§;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.§9%§;
   import haxeutils.math.geom.Matrix3D;
   import haxeutils.math.geom.Point3D;
   import nme3D.§1![§;
   import nme3D.Context3DUtils;
   import nme3D.model.§'h§;
   import nme3D.model.§6U§;
   import nme3D.model.Model;
   import nme3D.model.§[O§;
   import nme3D.shader.§!-§;
   import nme3D.shader.§'H§;
   import nme3D.shader.§<!9§;
   import nme3D.shader.§[D§;
   import openfl.Lib;
   import unitsystem.§7o§;
   
   public class §`!O§ extends § !W§
   {
      
      public static var init__:Boolean;
      
      public static var §-%§:§]k§;
      
      public static var §]a§:Point3D;
      
      public static var §"!7§:Point3D;
      
      public static var §9!a§:§"B§;
      
      public static var controlScheme:§3!O§;
      
      public static var §5o§:PositionData3D;
      
      public static var §@!6§:§9t§;
      
      public static var §[@§:§"B§ = _loc3_;
      
      public static var §;!#§:int = 5;
      
      public static var §2;§:int = 10;
      
      public static var §'!I§:String = "10";
      
      public static var §09§:Number = 100;
      
      public static var §9!6§:Number = 147.5;
      
      public static var §6!1§:Number = 20;
      
      public static var §]!0§:Number = 3;
      
      public static var §0L§:Number = 0.4;
      
      public static var §2!]§:Number = -16;
      
      public static var §0A§:int = -2;
      
      public static var §^!C§:int = 2;
      
      public static var §=<§:int = 2;
      
      public var §@R§:Number;
      
      public var §#Z§:int;
      
      public var §2W§:Boolean;
      
      public var §?l§:§=!X§;
      
      public var §9!G§:Number;
      
      public var §6t§:Number;
      
      public var §&g§:§+T§;
      
      public var §6!8§:§;a§;
      
      public var §2!H§:Object;
      
      public var §7!O§:§[C§;
      
      public var §??§:Boolean;
      
      public var §4!<§:Rectangle;
      
      public var §=p§:Vector.<§=9§>;
      
      public var §69§:§5v§;
      
      public var §3!3§:§"B§;
      
      public var §9!K§:Boolean;
      
      public var §8!5§:int;
      
      public var §?!_§:§&!K§;
      
      public var §`O§:Number;
      
      public var §[S§:Number;
      
      public var §56§:Number;
      
      public var §%!M§:Number;
      
      public var §,!U§:Number;
      
      public var §&!b§:§"B§;
      
      public var §!6§:Number;
      
      public var §?!M§:Number;
      
      public var §>0§:Number;
      
      public var §3k§:Number;
      
      public var §!!@§:Vector.<§%!§>;
      
      public var §<!>§:Boolean;
      
      public var §+!_§:Boolean;
      
      public function §`!O§(param1:String, param2:String)
      {
         var _temp_1:* = true;
         var _loc34_:Boolean = false;
         var _loc35_:Boolean = _temp_1;
         var _loc8_:* = 0;
         var _loc9_:* = null as Vector.<Function>;
         var _loc10_:* = null;
         var _loc12_:* = null as §=9§;
         var _loc17_:* = null as Point;
         var _loc18_:* = null as Point;
         var _loc20_:* = 0;
         var _loc21_:* = NaN;
         var _loc22_:* = null as Point3D;
         var _loc23_:* = null as §"B§;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:Number = NaN;
         var _loc29_:* = null as §!!V§;
         var _loc30_:* = null as §=s§;
         var _loc33_:* = null as §9t§;
         §??§ = false;
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               if(!_loc34_)
               {
                  §8!5§ = 0;
                  §6t§ = 0;
                  if(!_loc35_)
                  {
                     break;
                  }
                  §9!G§ = 0;
                  §<!>§ = false;
                  §2W§ = true;
                  §`O§ = 0.4;
                  if(_loc34_)
                  {
                     break loop3;
                  }
               }
               §?!M§ = 0;
               §9!K§ = false;
               §[S§ = 0;
               while(true)
               {
                  if(!_loc34_)
                  {
                     §@R§ = -40;
                     if(_loc35_)
                     {
                        break loop4;
                     }
                     break;
                  }
                  §§goto(addr0129);
               }
               §§goto(addr0130);
            }
            §#Z§ = 0;
            if(!_loc35_)
            {
               break;
            }
            §+!_§ = true;
            if(!_loc34_)
            {
               break;
            }
            §§goto(addr0115);
         }
         super(-2,null,§,a§.EDIT,{
            "onlyTerrain":true,
            "music":""
         });
         if(!_loc34_)
         {
            addr0115:
            backwards = false;
            §&^§ = true;
            if(_loc35_)
            {
               addr0129:
               title = param1;
            }
         }
         addr0130:
         §§push(§<!9§);
         §§push(§+g§(0));
         if(_loc35_)
         {
            §§push(Number(§§pop()));
         }
         §§pop().§%!1§(§§pop());
         var _loc3_:Stage = Lib.get_current().stage;
         if(_loc35_)
         {
            §4!<§ = new Rectangle(0,0,_loc3_.stageWidth,_loc3_.stageHeight);
         }
         var _loc4_:Point3D = new Point3D(1,0,0);
         var _loc5_:Vector.<§%!§> = new Vector.<§%!§>(0,false);
         loop5:
         while(true)
         {
            if(!_loc34_)
            {
               §!!@§ = _loc5_;
               if(_loc34_)
               {
                  break;
               }
            }
            §?!_§ = new §&!K§(this,param2);
            while(true)
            {
               if(!_loc34_)
               {
                  §?!_§.§[!N§();
                  if(_loc35_)
                  {
                     break loop5;
                  }
               }
               addr01f4:
               §§push(§?!_§.§,!_§.§<7§);
               §§push(§>!E§);
               if(!_loc34_)
               {
                  §§push(§§pop());
               }
               §§pop().push(§§pop());
               break;
            }
            §§goto(addr0212);
         }
         §§push(§?!_§.§,!_§.§6!#§);
         §§push(§"c§);
         if(_loc35_)
         {
            §§push(§§pop());
         }
         §§pop().push(§§pop());
         if(!_loc34_)
         {
            §§goto(addr01f4);
         }
         addr0212:
         var _loc6_:§>3§ = §?!_§.§,!_§;
         var _loc7_:§>f§ = §?!_§.§,!_§.§"2§[1];
         loop7:
         while(true)
         {
            if(_loc35_)
            {
               if(_loc6_.§]>§ == _loc7_)
               {
                  break;
               }
               while(true)
               {
                  if(!_loc34_)
                  {
                     _loc6_.§]>§ = _loc7_;
                     if(_loc34_)
                     {
                        break;
                     }
                  }
                  §§push(0);
                  if(!_loc34_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc8_ = §§pop();
                  break;
               }
            }
            _loc9_ = _loc6_.§<7§;
            if(_loc35_)
            {
               while(true)
               {
                  if(_loc8_ >= int(_loc9_.length))
                  {
                     break loop7;
                  }
                  §§push(_loc9_[_loc8_]);
                  if(!_loc34_)
                  {
                     §§push(§§pop());
                  }
                  _loc10_ = §§pop();
                  if(!_loc34_)
                  {
                     _loc8_++;
                     if(!_loc35_)
                     {
                        continue;
                     }
                  }
                  _loc10_(_loc7_);
               }
            }
            break;
         }
         var _loc11_:Vector.<§=9§> = new Vector.<§=9§>(0,false);
         if(_loc35_)
         {
            §=p§ = _loc11_;
         }
         §§push(§§findproperty(§9%§));
         §§push(§?!_§.§=F§.§+K§);
         §§push(§?!_§.§=F§.§^X§);
         if(_loc35_)
         {
            §§push(§§pop() * 10);
         }
         var _loc13_:§9%§ = new §§pop().§9%§(§§pop(),§§pop());
         var _loc14_:Point3D = new Point3D(0,0,0);
         var _loc15_:Point3D = new Point3D(5,0,0);
         var _loc16_:§"B§ = new §"B§();
         loop9:
         while(true)
         {
            while(true)
            {
               if(!_loc34_)
               {
                  §§push(0);
                  if(_loc34_)
                  {
                     break;
                  }
                  §§push(int(§§pop()));
                  if(_loc34_)
                  {
                     break loop9;
                  }
                  _loc8_ = §§pop();
               }
               §§push(§?!_§.§=F§.§+K§);
               if(!_loc34_)
               {
                  break;
               }
               break loop9;
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc19_:* = §§pop();
         if(!_loc34_)
         {
            loop0:
            while(_loc8_ < _loc19_)
            {
               §§push(_loc8_);
               if(_loc35_)
               {
                  _loc8_++;
                  if(_loc35_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc20_ = §§pop();
               _loc12_ = new §=9§(this,_loc20_);
               if(!_loc34_)
               {
                  §§push(_loc13_.§;;§[_loc20_]);
                  if(_loc35_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc35_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc21_ = §§pop();
               }
               _loc22_ = §`!O§.§"!7§;
               _loc23_ = _loc16_;
               loop11:
               while(true)
               {
                  if(_loc23_ == null)
                  {
                     if(!_loc35_)
                     {
                        break;
                     }
                     _loc23_ = new §"B§();
                  }
                  loop12:
                  while(true)
                  {
                     §§push(Number(Math.sin(_loc21_ / 2)));
                     if(!_loc34_)
                     {
                        _loc24_ = §§pop();
                        _loc23_.x = _loc22_.x * _loc24_;
                        _loc23_.y = _loc22_.y * _loc24_;
                        §§push(_loc23_);
                        §§push(_loc22_.z);
                        if(!_loc34_)
                        {
                           §§push(§§pop() * _loc24_);
                        }
                        §§pop().z = §§pop();
                        if(_loc34_)
                        {
                           break;
                        }
                        _loc23_.w = Number(Math.cos(_loc21_ / 2));
                        §§push(_loc23_.x);
                     }
                     §§push(_loc23_.x);
                     if(!_loc34_)
                     {
                        §§push(§§pop() * §§pop());
                        §§push(_loc23_.y);
                     }
                     while(true)
                     {
                        loop14:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc23_.y);
                              if(_loc35_)
                              {
                                 §§push(§§pop() + §§pop() * §§pop());
                                 §§push(_loc23_.z);
                                 if(!_loc35_)
                                 {
                                    break;
                                 }
                                 §§push(_loc23_.z);
                                 if(!_loc34_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc34_)
                                    {
                                       break loop14;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc34_)
                                    {
                                       continue loop16;
                                    }
                                    §§push(_loc23_.w);
                                    §§push(_loc23_.w);
                                 }
                              }
                              §§push(§§pop() * §§pop());
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc35_)
                           {
                              addr04cc:
                              §§push(1e-10);
                              break;
                           }
                           §§push(Number(§§pop()));
                           continue loop16;
                        }
                        §§push(§§pop() < §§pop());
                        if(_loc35_)
                        {
                           §§push(!§§pop());
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(_loc25_);
                                 if(!_loc34_)
                                 {
                                    addr04e2:
                                    §§goto(addr04e4);
                                    §§push(0);
                                 }
                                 §§goto(addr0530);
                              }
                              §§goto(addr0531);
                           }
                           §§goto(addr058c);
                        }
                        §§goto(addr0597);
                     }
                     _loc25_ = §§pop();
                     loop15:
                     while(true)
                     {
                        loop16:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc34_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc25_);
                                    §§push(1);
                                    if(!_loc34_)
                                    {
                                       _loc26_ = §§pop() - §§pop();
                                       break loop12;
                                    }
                                    addr04e4:
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(1 / Number(Math.sqrt(_loc25_)));
                                       if(_loc35_)
                                       {
                                          break;
                                       }
                                       addr0531:
                                       _loc25_ = §§pop();
                                       break loop16;
                                    }
                                    if(_loc34_)
                                    {
                                       break loop15;
                                    }
                                 }
                                 addr0530:
                                 §§goto(addr0531);
                              }
                              _loc23_.x = 0;
                              if(!_loc34_)
                              {
                                 _loc23_.y = 0;
                                 if(_loc35_)
                                 {
                                    break loop11;
                                 }
                                 break;
                              }
                              break loop16;
                           }
                           §§goto(addr058c);
                        }
                        §§push(_loc23_);
                        §§push(_loc23_.x);
                        if(!_loc34_)
                        {
                           §§push(§§pop() * _loc25_);
                        }
                        §§pop().x = §§pop();
                        if(!_loc34_)
                        {
                           break;
                        }
                        break loop19;
                     }
                     §§push(_loc23_);
                     §§push(_loc23_.y);
                     if(_loc35_)
                     {
                        §§push(§§pop() * _loc25_);
                     }
                     §§pop().y = §§pop();
                     if(_loc35_)
                     {
                        §§push(_loc23_);
                        §§push(_loc23_.z);
                        if(_loc35_)
                        {
                           §§push(§§pop() * _loc25_);
                        }
                        §§pop().z = §§pop();
                        §§push(_loc23_);
                        §§push(_loc23_.w);
                        if(!_loc34_)
                        {
                           §§push(§§pop() * _loc25_);
                        }
                        §§pop().w = §§pop();
                        if(!_loc34_)
                        {
                           addr058c:
                           _loc12_.§-!Y§.§"I§(_loc16_);
                        }
                     }
                     addr0597:
                     _loc17_ = _loc13_.vertices[_loc20_];
                     §§push(_loc13_.vertices);
                     §§push(_loc20_);
                     if(_loc35_)
                     {
                        while(true)
                        {
                           §§push(1);
                           if(_loc35_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc34_)
                              {
                                 break;
                              }
                              §§push(int(_loc13_.vertices.length));
                           }
                           §§push(int(§§pop() % §§pop()));
                           break;
                        }
                     }
                     _loc18_ = §§pop()[§§pop()];
                     §4!R§.§@!M§(_loc16_,_loc15_,_loc14_);
                     if(!_loc34_)
                     {
                        _loc14_.x += _loc17_.x;
                        while(true)
                        {
                           if(_loc35_)
                           {
                              _loc14_.y += _loc17_.y;
                              if(_loc35_)
                              {
                                 _loc12_.§-!Y§.§"w§(_loc14_);
                                 if(!_loc35_)
                                 {
                                    break;
                                 }
                              }
                           }
                           _loc12_.§0M§ = Number(Math.atan2((_loc17_.y + _loc18_.y) / 2,(_loc17_.x + _loc18_.x) / 2));
                           if(!_loc34_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     §=p§.push(_loc12_);
                     continue loop0;
                  }
                  loop24:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc26_);
                        if(!_loc34_)
                        {
                           §§push(0);
                           if(_loc34_)
                           {
                              break;
                           }
                           if(§§pop() >= §§pop())
                           {
                              §§push(_loc26_);
                              if(_loc35_)
                              {
                              }
                           }
                           else
                           {
                              §§push(-_loc26_);
                              if(!_loc35_)
                              {
                                 break loop24;
                              }
                           }
                        }
                        §§goto(addr04cc);
                     }
                     §§goto(addr04e4);
                  }
                  §§goto(addr04e2);
               }
               _loc23_.z = 0;
               if(!_loc35_)
               {
                  break loop15;
               }
               _loc23_.w = 1;
               §§goto(addr058c);
            }
         }
         var _loc27_:§0!E§ = new §0!E§(5,5,0,10066431,10066431,false,1,1,0,0,0,§!-§.§7!P§(),§-n§.§?!W§,null,1,false,null);
         var _loc28_:§'!Y§ = §2_§.§'!D§(_loc27_.§@8§[0].vertices,"alpha");
         while(_loc28_.index < _loc28_.length)
         {
            _loc29_ = _loc28_.vertices;
            while(true)
            {
               if(_loc35_)
               {
                  §§push(_loc29_);
                  §§push(_loc29_.§5G§);
                  if(_loc35_)
                  {
                     while(true)
                     {
                        §§push(_loc28_);
                        §§push(_loc28_.index);
                        if(!_loc34_)
                        {
                           var _temp_2:* = §§pop();
                           §§push(_temp_2);
                           §§push(_temp_2);
                           if(_loc35_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc8_ = §§pop();
                           if(!_loc35_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop() + 1);
                        break;
                     }
                     §§pop().index = §§pop();
                     if(!_loc34_)
                     {
                        §§push(§§pop() * _loc8_);
                     }
                  }
                  §§pop().offset = §§pop();
                  if(_loc34_)
                  {
                     break;
                  }
               }
               §§push(_loc28_.§+R§);
               §§push(_loc29_.offset);
               if(_loc35_)
               {
                  §§push(§§pop() + _loc28_.§+^§);
               }
               §§pop().offset = §§pop();
               break;
            }
            _loc30_ = _loc28_.§+R§;
            if(_loc35_)
            {
               _loc30_.§@!Y§[_loc30_.offset] = 0.8;
            }
         }
         _loc27_.§@8§[0].§0p§ = 1;
         §7!O§ = §[C§.§4r§(this,_loc27_);
         if(_loc35_)
         {
            §7!O§.model.§#"§(false);
            if(!_loc34_)
            {
               §7!O§.§-3§ = true;
               §`=§(§7!O§);
               §§push(1.5707963267948966);
               if(!_loc34_)
               {
                  §§push(Number(§§pop()));
               }
               _loc21_ = §§pop();
               §&!b§ = new §"B§();
               §3!3§ = new §"B§();
            }
         }
         var _loc31_:Point = _loc13_.vertices[0];
         if(_loc35_)
         {
            while(true)
            {
               §§push(§§findproperty(§@R§));
               §§push(Number(Math.sqrt(_loc31_.x * _loc31_.x + _loc31_.y * _loc31_.y)));
               if(!_loc34_)
               {
                  §§push(-§§pop());
                  if(_loc34_)
                  {
                     break;
                  }
               }
               §§push(§§pop() - 60);
               break;
            }
            §§pop().§@R§ = §§pop();
            if(!_loc34_)
            {
               §§push(§§findproperty(§@R§));
               §§push(§@R§);
               if(_loc35_)
               {
                  §§push(§§pop() / 2);
               }
               §§pop().§@R§ = §§pop();
            }
         }
         var _loc32_:§9t§ = §`!O§.§@!6§;
         loop29:
         while(true)
         {
            while(true)
            {
               if(_loc35_)
               {
                  if(int(Save.§@!A§().get(_loc32_.§=-§,int(_loc32_.§ -§))) >= 0)
                  {
                     _loc33_ = §`!O§.§@!6§;
                     if(!_loc34_)
                     {
                        §§push(§§findproperty(§#Z§));
                        §§push(int(Save.§@!A§().get(_loc33_.§=-§,int(_loc33_.§ -§))));
                        if(_loc35_)
                        {
                           §§push(§§pop() - 1);
                        }
                        §§pop().§#Z§ = §§pop();
                        if(!_loc34_)
                        {
                           §91§(false);
                        }
                     }
                     break;
                  }
               }
               _loc33_ = §`!O§.§@!6§;
               if(_loc35_)
               {
                  §§push(§§findproperty(§#Z§));
                  §§push(int(Save.§@!A§().get(_loc33_.§=-§,int(_loc33_.§ -§))));
                  if(!_loc34_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop().§#Z§ = §§pop();
                  if(_loc35_)
                  {
                     §91§(true);
                     if(_loc35_)
                     {
                        break;
                     }
                     addr090c:
                     §&g§ = new §+T§();
                     break loop29;
                  }
                  break;
               }
               break loop29;
            }
            §^y§(_loc21_);
            if(_loc35_)
            {
               §6!8§ = new §;a§();
               if(!_loc35_)
               {
                  break;
               }
            }
            §§goto(addr090c);
         }
      }
      
      public function §91§(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         if(!_loc11_)
         {
            if(param1)
            {
               if(_loc12_)
               {
                  addr0071:
                  §§push(§#Z§);
                  if(_loc12_)
                  {
                     §§push(-2);
                     if(!_loc11_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(_loc12_)
                           {
                              §§goto(addr004b);
                           }
                           else
                           {
                              §§goto(addr0062);
                           }
                        }
                     }
                     else
                     {
                        addr005e:
                        if(§§pop() >= §§pop())
                        {
                           §§goto(addr0062);
                        }
                     }
                     §§push(§#Z§);
                     if(!_loc11_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc11_)
                  {
                     loop0:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§§findproperty(§#Z§));
                           §§push(§#Z§);
                           if(!_loc11_)
                           {
                              if(!param1)
                              {
                                 §§push(1);
                                 break;
                              }
                              if(_loc11_)
                              {
                                 break loop0;
                              }
                           }
                           §§push(-1);
                           if(_loc11_)
                           {
                           }
                           break;
                        }
                        §§push(§§pop() + §§pop());
                        break;
                     }
                     §§pop().§#Z§ = §§pop();
                     if(_loc12_)
                     {
                        §`!O§.§@!6§.§?F§(§#Z§);
                     }
                  }
                  §§push(§>0§);
                  if(!_loc11_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc11_)
                           {
                              §§push(_loc3_);
                              if(_loc11_)
                              {
                                 break;
                              }
                              if(§§pop() != §§pop())
                              {
                                 §§push(§§findproperty(§!6§));
                                 §§push(§>V§(_loc2_));
                                 if(_loc12_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 §§pop().§!6§ = §§pop();
                              }
                              else
                              {
                                 §!6§ = §>0§;
                                 if(_loc11_)
                                 {
                                    break loop3;
                                 }
                              }
                              §§push(§§findproperty(§%!M§));
                              §§push(§>V§(§#Z§));
                              if(_loc12_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§pop().§%!M§ = §§pop();
                              if(_loc11_)
                              {
                                 break loop2;
                              }
                              §§push(§!6§);
                           }
                           §§push(§%!M§);
                           break;
                        }
                        if(§§pop() == §§pop())
                        {
                           §#Z§ = _loc2_;
                           if(!_loc11_)
                           {
                              break loop2;
                           }
                        }
                        else
                        {
                           §§push(§<!9§);
                           §§push(§+g§(§#Z§));
                           if(!_loc11_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§pop().§%!1§(§§pop());
                           §`O§ = 0;
                        }
                        continue loop4;
                     }
                     return;
                  }
                  §`!O§.§@!6§.§?F§(§#Z§);
                  if(_loc12_)
                  {
                     break loop3;
                  }
                  var _loc4_:§"B§ = §&!b§;
                  var _loc5_:§"B§ = §<!M§.§+n§();
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc12_)
                        {
                           _loc4_.x = _loc5_.x;
                           if(!_loc12_)
                           {
                              break;
                           }
                           _loc4_.y = _loc5_.y;
                           if(!_loc12_)
                           {
                              break loop4;
                           }
                           _loc4_.z = _loc5_.z;
                           if(_loc11_)
                           {
                              break loop4;
                           }
                        }
                        _loc4_.w = _loc5_.w;
                        if(_loc12_)
                        {
                           break;
                        }
                        break loop4;
                     }
                     §,!U§ = §?!M§;
                     break;
                  }
                  §§push(§56§);
                  if(_loc12_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc6_:* = §§pop();
                  var _loc7_:Point3D = §`!O§.§"!7§;
                  _loc4_ = §3!3§;
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        if(_loc4_ != null)
                        {
                           break;
                        }
                     }
                     _loc4_ = new §"B§();
                     break;
                  }
                  §§push(Number(Math.sin(_loc6_ / 2)));
                  if(!_loc11_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  while(true)
                  {
                     if(_loc12_)
                     {
                        _loc4_.x = _loc7_.x * _loc8_;
                        if(_loc12_)
                        {
                           _loc4_.y = _loc7_.y * _loc8_;
                           if(!_loc12_)
                           {
                              break;
                           }
                        }
                        §§push(_loc4_);
                        §§push(_loc7_.z);
                        if(_loc12_)
                        {
                           §§push(§§pop() * _loc8_);
                        }
                        §§pop().z = §§pop();
                        if(!_loc12_)
                        {
                           break;
                        }
                     }
                     _loc4_.w = Number(Math.cos(_loc6_ / 2));
                     break;
                  }
                  loop8:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc4_.x * _loc4_.x);
                        §§push(_loc4_.y);
                        §§push(_loc4_.y);
                        if(!_loc11_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc11_)
                           {
                              break loop8;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc12_)
                           {
                              break;
                           }
                           §§push(Number(§§pop()));
                           §§push(_loc4_.z);
                           §§push(_loc4_.z);
                           if(!_loc11_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc12_)
                              {
                                 break loop8;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc12_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                              }
                              §§push(_loc4_.w);
                              if(!_loc12_)
                              {
                                 break loop8;
                              }
                              §§push(_loc4_.w);
                           }
                        }
                        §§push(§§pop() * §§pop());
                        break loop8;
                     }
                     var _loc9_:* = §§pop();
                     §§push(_loc9_);
                     if(!_loc11_)
                     {
                        §§push(§§pop() - 1);
                        if(_loc12_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc10_:* = §§pop();
                     loop10:
                     while(true)
                     {
                        §§push(_loc10_);
                        §§push(0);
                        if(_loc12_)
                        {
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                                 §§push(_loc10_);
                                 if(!_loc12_)
                                 {
                                    addr033d:
                                    §§push(-§§pop());
                                 }
                              }
                              else
                              {
                                 §§push(_loc10_);
                                 if(_loc12_)
                                 {
                                    §§goto(addr033d);
                                 }
                              }
                              §§push(§§pop() < 1e-10);
                              if(_loc12_)
                              {
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 break;
                              }
                              break loop10;
                           }
                        }
                        loop12:
                        while(true)
                        {
                           while(true)
                           {
                              if(§§pop() == §§pop())
                              {
                                 _loc4_.x = 0;
                                 if(_loc12_)
                                 {
                                    _loc4_.y = 0;
                                 }
                                 _loc4_.z = 0;
                                 if(_loc12_)
                                 {
                                    _loc4_.w = 1;
                                    break loop10;
                                 }
                              }
                              else
                              {
                                 §§push(1);
                                 if(_loc12_)
                                 {
                                    §§push(§§pop() / Number(Math.sqrt(_loc9_)));
                                    if(!_loc11_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    _loc9_ = §§pop();
                                    §§push(_loc4_);
                                    §§push(_loc4_.x);
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() * _loc9_);
                                    }
                                    §§pop().x = §§pop();
                                    §§push(_loc4_);
                                    §§push(_loc4_.y);
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() * _loc9_);
                                    }
                                    §§pop().y = §§pop();
                                    §§push(_loc4_);
                                    §§push(_loc4_.z);
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() * _loc9_);
                                    }
                                    §§pop().z = §§pop();
                                    if(!_loc11_)
                                    {
                                       §§push(_loc4_);
                                       §§push(_loc4_.w);
                                       if(!_loc11_)
                                       {
                                          §§push(§§pop() * _loc9_);
                                       }
                                       §§pop().w = §§pop();
                                       break loop10;
                                    }
                                    break loop12;
                                 }
                                 addr03f1:
                                 §§push(-2);
                                 if(_loc12_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       break;
                                    }
                                    §§push(§#Z§);
                                    §§push(0);
                                 }
                                 addr0406:
                                 if(§§pop() >= §§pop())
                                 {
                                    §4!R§.§9!L§(§3!3§,§`!O§.§[@§,§3!3§);
                                    break;
                                 }
                              }
                              §4!R§.§9!L§(§3!3§,§`!O§.§9!a§,§3!3§);
                              if(_loc12_)
                              {
                                 break;
                              }
                              break loop12;
                           }
                           addr0455:
                           if(§69§ != null)
                           {
                              if(!_loc11_)
                              {
                                 break;
                              }
                           }
                           §§goto(addr0476);
                        }
                        §69§.§-T§.§>H§();
                        addr0476:
                        return;
                     }
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§#Z§);
                           if(!_loc11_)
                           {
                              §§goto(addr03f1);
                           }
                           §§goto(addr0404);
                        }
                        §§goto(addr0406);
                     }
                     §§goto(addr0455);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc11_)
                  {
                     §§push(Number(§§pop()));
                  }
                  break loop9;
               }
               addr0062:
               return;
            }
            §§push(§#Z§);
            if(!_loc11_)
            {
               §§goto(addr005e);
               §§push(2);
            }
            §§goto(addr0071);
         }
         addr004b:
      }
      
      override public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = null;
         while(true)
         {
            §§push(§§findproperty(unpausedTime));
            §§push(unpausedTime);
            if(_loc4_)
            {
               §§push(§§pop() + param1);
               if(!_loc4_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         §§pop().unpausedTime = §§pop();
         §`!O§.controlScheme.update(param1);
         while(true)
         {
            §§push(§§findproperty(§9!G§));
            §§push(§9!G§);
            if(!_loc3_)
            {
               §§push(§§pop() + param1);
               if(_loc3_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         §§pop().§9!G§ = §§pop();
         loop2:
         while(true)
         {
            if(_loc4_)
            {
               §§push(§§findproperty(§6t§));
               §§push(§6t§);
               if(!_loc3_)
               {
                  §§push(§§pop() + param1);
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().§6t§ = §§pop();
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(false);
                        if(!_loc3_)
                        {
                           loop7:
                           while(true)
                           {
                              while(true)
                              {
                                 if(§6t§ < §9!G§)
                                 {
                                    if(!_loc4_)
                                    {
                                       break loop6;
                                    }
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(§6t§ >= 3);
                                    if(_loc3_)
                                    {
                                       break loop7;
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    save();
                                 }
                                 §§push(§+!_§);
                                 if(!_loc3_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          break;
                                       }
                                       §§push(§2W§);
                                       if(!_loc3_)
                                       {
                                          break loop7;
                                       }
                                       break loop4;
                                    }
                                 }
                              }
                              §7!O§.model.§#"§(false);
                              return;
                           }
                           if(!§§pop())
                           {
                              break loop3;
                           }
                           §§push(§7o§.instance.mouseDown);
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 §7!O§.model.§#"§(false);
                                 if(_loc4_)
                                 {
                                    return;
                                 }
                                 §§goto(addr0152);
                              }
                              else
                              {
                                 addr02a1:
                                 _loc2_ = §]!E§();
                                 loop10:
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!_loc3_)
                                    {
                                       if(_loc2_ == null)
                                       {
                                          break;
                                       }
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                    }
                                    §§pop();
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(§?!_§.§ Z§(_loc2_) == null);
                                          if(!_loc3_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          break loop10;
                                       }
                                       addr02e9:
                                       §7!O§.model.§#"§(true);
                                       if(!_loc3_)
                                       {
                                          §7!O§.§=d§(§?!_§.§=F§.§<!C§(_loc2_,§`!O§.§5o§),10);
                                          §7!O§.reset();
                                       }
                                       break;
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       §§goto(addr02e9);
                                    }
                                 }
                                 else
                                 {
                                    §7!O§.model.§#"§(false);
                                 }
                              }
                           }
                           else
                           {
                              §2W§ = false;
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop3;
                                 }
                                 addr0280:
                                 §7!O§.model.§#"§(false);
                                 break;
                              }
                           }
                           addr0346:
                           §§goto(addr034c);
                        }
                     }
                     loop13:
                     while(true)
                     {
                        if(§§pop())
                        {
                           §6!8§.§8Y§(§"[§);
                           if(!_loc3_)
                           {
                              _loc2_ = §]!E§();
                              loop14:
                              while(true)
                              {
                                 §§push(true);
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       if(_loc2_ == §2!H§)
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          §§pop();
                                          if(!_loc4_)
                                          {
                                             break loop2;
                                          }
                                          §§push(§??§);
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          §§push(!§§pop());
                                          if(!_loc3_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             §2!H§ = _loc2_;
                                             if(!_loc3_)
                                             {
                                                if(§?l§ != null)
                                                {
                                                   if(_loc2_ == null)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §?l§.§+%§(§?!_§);
                                                         break loop14;
                                                      }
                                                      break loop2;
                                                   }
                                                   §§push(§??§);
                                                   break;
                                                }
                                                break loop14;
                                             }
                                             break loop13;
                                          }
                                       }
                                       break loop14;
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       §?l§.§9b§(§?!_§,_loc2_);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                    }
                                    break loop13;
                                 }
                                 §?l§.§04§(§?!_§,_loc2_);
                                 break;
                              }
                              §7!O§.model.§#"§(false);
                              if(_loc4_)
                              {
                                 break;
                              }
                              break loop2;
                           }
                        }
                        else if(§?l§ == §+!7§.§@!A§())
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr0280);
                           }
                        }
                        else
                        {
                           §6!8§.§8Y§(§"[§);
                           §§goto(addr02a1);
                        }
                        §§goto(addr0346);
                     }
                  }
                  if(!§§pop())
                  {
                     §§push(§7o§.instance.mouseDown);
                     break loop6;
                  }
                  if(_loc4_)
                  {
                     addr0152:
                     §7!O§.model.§#"§(false);
                     return;
                  }
                  §§goto(addr0356);
               }
               while(true)
               {
                  §§push(!Boolean(§4!<§.contains(§7o§.instance.mouseX,§7o§.instance.mouseY)));
                  if(!_loc3_)
                  {
                     break loop4;
                  }
                  addr034c:
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr0356:
                        §?l§.§!!?§(§?!_§);
                     }
                  }
                  break;
               }
               §§push(§??§);
            }
            §??§ = §7o§.instance.mouseDown;
            break;
         }
      }
      
      public function §0h§(param1:§=!X§) : §=!X§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc2_)
            {
               while(true)
               {
                  if(§?l§ != null)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     §?l§.§&h§();
                     if(_loc2_)
                     {
                        break loop0;
                     }
                  }
                  §?l§ = param1;
                  if(_loc3_)
                  {
                     if(§?l§ != null)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                     }
                     break loop0;
                  }
                  break;
               }
            }
            §?l§.§9;§();
            break;
         }
         return §?l§;
      }
      
      override public function §<M§(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(_loc3_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc2_)
                     {
                        §§push(0);
                        if(_loc2_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           if(!_loc2_)
                           {
                              power = 0;
                              if(_loc2_)
                              {
                              }
                           }
                           break loop1;
                        }
                        §§push(param1);
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                     }
                     §§push(1);
                     break;
                  }
                  if(§§pop() > §§pop())
                  {
                     if(!_loc2_)
                     {
                        power = 1;
                        if(_loc2_)
                        {
                        }
                     }
                     break;
                  }
                  power = param1;
                  break;
               }
            }
            break loop1;
         }
         return §§pop();
      }
      
      public function §]K§(param1:String, param2:String) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:StringMap = §?!_§.§43§;
         if(!_loc5_)
         {
            if(param1 in StringMap.§+!#§)
            {
               if(_loc4_)
               {
                  _loc3_.setReserved(param1,param2);
                  if(_loc4_)
                  {
                  }
               }
            }
            else
            {
               _loc3_.h[param1] = param2;
            }
         }
      }
      
      public function §^y§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         while(true)
         {
            §§push(param1);
            if(!_loc10_)
            {
               §§push(§§pop() - §56§);
               if(!_loc11_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         if(!_loc10_)
         {
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc10_)
                     {
                        if(§§pop() >= 0)
                        {
                           addr0055:
                           §§push(_loc2_);
                           §§push(3.141592653589793);
                           if(!_loc11_)
                           {
                              break loop6;
                           }
                           if(§§pop() <= §§pop())
                           {
                              break loop7;
                           }
                           if(_loc10_)
                           {
                              break loop7;
                           }
                           while(true)
                           {
                              §§push(param1);
                              param1 = §§pop();
                           }
                           addr0087:
                        }
                        else
                        {
                           §§push(-_loc2_);
                           if(_loc11_)
                           {
                              §§goto(addr0055);
                           }
                        }
                        loop1:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§56§);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() - §§pop());
                                 §§push(-3.141592653589793);
                                 if(_loc10_)
                                 {
                                    break;
                                 }
                              }
                              if(§§pop() >= §§pop())
                              {
                                 break loop1;
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() + 6.283185307179586);
                                    if(!_loc10_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 break;
                              }
                              param1 = §§pop();
                              §§goto(addr0087);
                           }
                           addr00d6:
                           while(true)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 break loop8;
                              }
                              §§push(param1);
                              if(_loc11_)
                              {
                                 §§push(§§pop() - 6.283185307179586);
                                 if(!_loc10_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              param1 = §§pop();
                              §§goto(addr00bf);
                           }
                           break loop6;
                        }
                        if(!_loc11_)
                        {
                           break loop7;
                        }
                        while(true)
                        {
                           §§push(param1);
                           §§push(§56§);
                           if(!_loc11_)
                           {
                              break loop6;
                           }
                           §§push(§§pop() - §§pop());
                        }
                        break loop6;
                        addr00bf:
                     }
                     while(true)
                     {
                        §§push(3.141592653589793);
                        if(_loc10_)
                        {
                           break loop6;
                        }
                        §§goto(addr00d6);
                     }
                     break loop6;
                  }
                  if(!_loc10_)
                  {
                     break;
                  }
                  §§goto(addr00f3);
               }
               §§push(param1);
               §§push(§56§);
               break;
            }
            if(§§pop() == §§pop())
            {
               return;
            }
            §56§ = param1;
            addr00f3:
            §`O§ = 0;
         }
         var _loc3_:§"B§ = §&!b§;
         var _loc4_:§"B§ = §<!M§.§+n§();
         while(true)
         {
            if(!_loc10_)
            {
               _loc3_.x = _loc4_.x;
               if(!_loc11_)
               {
                  break;
               }
               _loc3_.y = _loc4_.y;
               if(!_loc11_)
               {
                  break;
               }
            }
            _loc3_.z = _loc4_.z;
            if(!_loc10_)
            {
               _loc3_.w = _loc4_.w;
               if(!_loc10_)
               {
                  break;
               }
            }
            §§goto(addr015b);
         }
         §,!U§ = §?!M§;
         addr015b:
         §§push(§56§);
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:Point3D = §`!O§.§"!7§;
         _loc3_ = §3!3§;
         while(true)
         {
            if(!_loc10_)
            {
               if(_loc3_ != null)
               {
                  break;
               }
            }
            _loc3_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(_loc5_ / 2)));
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         while(true)
         {
            if(!_loc10_)
            {
               _loc3_.x = _loc6_.x * _loc7_;
               if(!_loc11_)
               {
                  break;
               }
               _loc3_.y = _loc6_.y * _loc7_;
               if(_loc10_)
               {
                  break;
               }
            }
            §§push(_loc3_);
            §§push(_loc6_.z);
            if(_loc11_)
            {
               §§push(§§pop() * _loc7_);
            }
            §§pop().z = §§pop();
            if(_loc11_)
            {
               break;
            }
            §§goto(addr0206);
         }
         _loc3_.w = Number(Math.cos(_loc5_ / 2));
         addr0206:
         §§push(_loc3_.x * _loc3_.x);
         §§push(_loc3_.y);
         §§push(_loc3_.y);
         if(_loc11_)
         {
            loop14:
            while(true)
            {
               while(true)
               {
                  §§push(§§pop() + §§pop() * §§pop());
                  §§push(_loc3_.z);
                  if(_loc11_)
                  {
                     §§push(_loc3_.z);
                     if(!_loc11_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc11_)
                     {
                        break loop14;
                     }
                  }
                  §§push(§§pop() + §§pop());
                  §§push(_loc3_.w);
                  break loop14;
               }
            }
            §§push(_loc3_.w);
            break loop15;
         }
         §§push(§§pop() + §§pop() * §§pop());
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:Number = §§pop();
         §§push(_loc8_);
         if(_loc11_)
         {
            §§push(§§pop() - 1);
            if(!_loc10_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc9_:* = §§pop();
         loop16:
         while(true)
         {
            loop17:
            while(true)
            {
               §§push(_loc9_);
               if(_loc11_)
               {
                  §§push(0);
                  if(!_loc11_)
                  {
                     continue loop18;
                  }
                  if(§§pop() >= §§pop())
                  {
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc10_)
                           {
                              §§push(_loc9_);
                              break loop17;
                           }
                           §§goto(addr0354);
                        }
                        §§goto(addr035a);
                     }
                     §§goto(addr036a);
                  }
                  else
                  {
                     §§push(_loc9_);
                     if(_loc10_)
                     {
                        break loop16;
                     }
                  }
               }
               §§push(-§§pop());
               break;
            }
            §§push(§§pop() < 1e-10);
            if(!_loc10_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!_loc10_)
               {
                  §§push(_loc8_);
                  break;
               }
            }
            §§goto(addr0334);
         }
         loop18:
         while(true)
         {
            loop19:
            while(true)
            {
               if(§§pop() == 0)
               {
                  while(true)
                  {
                     if(!_loc10_)
                     {
                        _loc3_.x = 0;
                        if(_loc11_)
                        {
                           _loc3_.y = 0;
                           if(!_loc10_)
                           {
                              _loc3_.z = 0;
                              if(_loc10_)
                              {
                                 break;
                              }
                              _loc3_.w = 1;
                           }
                        }
                     }
                     else
                     {
                        addr02ff:
                        §§push(_loc3_);
                        §§push(_loc3_.y);
                        if(_loc11_)
                        {
                           §§push(§§pop() * _loc8_);
                        }
                        §§pop().y = §§pop();
                        if(!_loc10_)
                        {
                           §§push(_loc3_);
                           §§push(_loc3_.z);
                           if(_loc11_)
                           {
                              §§push(§§pop() * _loc8_);
                           }
                           §§pop().z = §§pop();
                           §§push(_loc3_);
                           §§push(_loc3_.w);
                           if(_loc11_)
                           {
                              §§push(§§pop() * _loc8_);
                           }
                           §§pop().w = §§pop();
                        }
                     }
                     addr0334:
                     §§push(§#Z§);
                     if(!_loc10_)
                     {
                        §§push(-2);
                        if(_loc11_)
                        {
                           if(§§pop() != §§pop())
                           {
                              if(!_loc10_)
                              {
                                 break;
                              }
                           }
                           break loop18;
                        }
                        break loop19;
                     }
                  }
                  addr0354:
               }
               else
               {
                  §§push(1);
                  if(_loc11_)
                  {
                     _loc8_ = §§pop() / Number(Math.sqrt(_loc8_));
                     §§push(_loc3_);
                     §§push(_loc3_.x);
                     if(!_loc10_)
                     {
                        §§push(§§pop() * _loc8_);
                     }
                     §§pop().x = §§pop();
                     §§goto(addr02ff);
                  }
               }
               addr035a:
               §§push(0);
               break;
            }
            addr036a:
            if(§§pop() < §§pop())
            {
               if(_loc11_)
               {
                  §4!R§.§9!L§(§3!3§,§`!O§.§9!a§,§3!3§);
                  if(_loc11_)
                  {
                  }
               }
               break;
            }
            §4!R§.§9!L§(§3!3§,§`!O§.§[@§,§3!3§);
            break;
         }
      }
      
      public function §<-§(param1:Object = undefined, param2:Object = undefined) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  if(param1 != null)
                  {
                     break;
                  }
                  if(_loc5_)
                  {
                     break loop0;
                  }
               }
               param1 = false;
               break;
            }
            if(param2 == null)
            {
               break;
            }
            §§goto(addr0041);
         }
         §§push(1);
         if(!_loc5_)
         {
            param2 = §§pop();
            addr0041:
            §§push(25);
         }
         var _loc3_:* = Number(§§pop());
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop5:
               while(true)
               {
                  while(true)
                  {
                     if(§9!K§)
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(_loc3_);
                        if(_loc4_)
                        {
                           §§push(2);
                           if(!_loc4_)
                           {
                              break loop5;
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc4_)
                           {
                              break loop3;
                           }
                        }
                        §§push(Number(§§pop()));
                        if(!_loc4_)
                        {
                           break loop2;
                        }
                        _loc3_ = §§pop();
                     }
                     if(§#Z§ > 0)
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           break loop3;
                        }
                        break loop2;
                     }
                     break;
                  }
                  §§goto(addr00c5);
               }
               §§push(§§pop() + §#Z§ * 0.5);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
               §§push(§§pop() * §§pop());
               if(_loc4_)
               {
                  break loop2;
               }
               §§goto(addr00b1);
            }
            §§push(1);
            break loop5;
         }
         addr00b1:
         _loc3_ = Number(§§pop());
         while(true)
         {
            if(!_loc5_)
            {
               addr00c5:
               §§push(§§findproperty(§[S§));
               §§push(§[S§);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     §§push(§§pop() * param2);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().§[S§ = §§pop();
               if(!param1)
               {
                  break;
               }
               if(!_loc4_)
               {
                  break;
               }
            }
            §<!>§ = true;
            break;
         }
      }
      
      public function §'M§(param1:Object = undefined, param2:Object = undefined) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc5_)
               {
                  if(param1 != null)
                  {
                     break;
                  }
                  if(_loc5_)
                  {
                     break loop0;
                  }
               }
               param1 = false;
               break;
            }
            if(param2 == null)
            {
               break;
            }
            §§goto(addr003f);
         }
         §§push(1);
         if(!_loc5_)
         {
            param2 = §§pop();
            addr003f:
            §§push(25);
         }
         var _loc3_:* = Number(§§pop());
         if(!_loc5_)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        while(true)
                        {
                           if(§9!K§)
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                              §§push(_loc3_);
                              if(!_loc4_)
                              {
                                 break loop5;
                              }
                              §§push(2);
                              if(_loc5_)
                              {
                                 break loop4;
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc4_)
                              {
                                 break loop3;
                              }
                              §§push(Number(§§pop()));
                              if(!_loc4_)
                              {
                                 break loop3;
                              }
                              _loc3_ = §§pop();
                              if(!_loc4_)
                              {
                                 break loop2;
                              }
                           }
                           if(§#Z§ <= 0)
                           {
                              break loop2;
                           }
                           §§push(_loc3_);
                           if(_loc4_)
                           {
                              break loop3;
                           }
                           §§goto(addr00c8);
                        }
                        §§goto(addr00ec);
                     }
                     _loc3_ = §§pop();
                     break loop2;
                  }
                  §§push(§§pop() + §#Z§ * 0.5);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§push(§§pop() * §§pop());
                  if(!_loc5_)
                  {
                     addr00c8:
                     §§push(Number(§§pop()));
                  }
                  break loop5;
               }
               §§push(1);
               break loop4;
            }
            §§push(§§findproperty(§[S§));
            §§push(§[S§);
            if(_loc4_)
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  §§push(§§pop() * param2);
               }
               §§push(§§pop() - §§pop());
            }
            §§pop().§[S§ = §§pop();
            if(param1)
            {
               addr00ec:
               §<!>§ = true;
            }
         }
      }
      
      public function save() : String
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §9!G§ = 0;
         }
         §§push(§?!_§.§][§());
         if(!_loc4_)
         {
            §§push(§§pop());
            if(!_loc4_)
            {
               §§push(§§pop());
            }
         }
         var _loc1_:* = §§pop();
         var _loc2_:String = §69§.§9!#§.§4!D§.text;
         if(_loc3_)
         {
            §8A§.§@!A§().§1!R§(_loc2_,_loc1_);
         }
         return _loc1_;
      }
      
      public function §;F§(param1:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            while(true)
            {
               if(param1 == null)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  param1 = 1;
               }
               §3x§(param1);
               break;
            }
         }
      }
      
      public function §7w§(param1:Object = undefined) : void
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
                  if(param1 != null)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               param1 = 1;
               break;
            }
            §3x§(-param1);
            break;
         }
      }
      
      public function §3x§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               if(§#Z§ >= 0)
               {
                  break;
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            §§push(param1);
            if(!_loc2_)
            {
               §§push(§§pop() * -1);
               if(!_loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
            if(_loc3_)
            {
               break;
            }
            §§goto(addr008d);
         }
         §§push(§§findproperty(§^y§));
         §§push(§56§);
         if(_loc3_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(§§pop() * 3.141592653589793);
               if(!_loc2_)
               {
                  §§push(§§pop() / 4);
               }
            }
            §§push(§§pop() + §§pop());
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§pop().§^y§(§§pop());
         addr008d:
      }
      
      public function §&O§() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = 0;
         var _loc4_:* = null as Vector.<Function>;
         var _loc5_:* = null;
         while(true)
         {
            if(!_loc7_)
            {
               § L§.high = 721323;
               if(_loc6_)
               {
                  Context3DUtils.§"[§ = §"[§;
                  if(_loc7_)
                  {
                     break;
                  }
               }
            }
            §§push(§<!9§);
            §§push(§+g§(§#Z§));
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
            §§pop().§%!1§(§§pop());
            break;
         }
         var _loc1_:§>3§ = §?!_§.§,!_§;
         var _loc2_:§>f§ = §?!_§.§,!_§.§"2§[1];
         loop2:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  if(_loc1_.§]>§ == _loc2_)
                  {
                     break;
                  }
                  if(_loc7_)
                  {
                     break loop2;
                  }
                  _loc1_.§]>§ = _loc2_;
                  if(_loc7_)
                  {
                     break loop2;
                  }
               }
               §§push(0);
               if(_loc6_)
               {
                  §§push(int(§§pop()));
               }
               _loc3_ = §§pop();
               break loop2;
            }
            return;
         }
         _loc4_ = _loc1_.§<7§;
         if(!_loc7_)
         {
            while(true)
            {
               if(_loc3_ >= int(_loc4_.length))
               {
                  break loop3;
               }
               §§push(_loc4_[_loc3_]);
               if(!_loc7_)
               {
                  §§push(§§pop());
               }
               _loc5_ = §§pop();
               if(_loc6_)
               {
                  _loc3_++;
                  if(_loc7_)
                  {
                     continue;
                  }
               }
               _loc5_(_loc2_);
            }
         }
         break loop3;
      }
      
      override public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               super.reset();
               if(!_loc2_)
               {
                  §`O§ = 0.3999999999;
                  if(!_loc1_)
                  {
                     break;
                  }
               }
            }
            display(2e-10);
            if(_loc1_)
            {
               break;
            }
            §§goto(addr0053);
         }
         §<!>§ = false;
         addr0053:
      }
      
      override public function §1P§(param1:BitmapData) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Matrix3D = §"[§.§1`§;
         _loc2_.rawData[0] = 1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  _loc2_.rawData[1] = 0;
                  _loc2_.rawData[2] = 0;
                  while(true)
                  {
                     if(_loc4_)
                     {
                        _loc2_.rawData[3] = 0;
                        _loc2_.rawData[4] = 0;
                        if(!_loc4_)
                        {
                           break;
                        }
                        _loc2_.rawData[5] = 1;
                        _loc2_.rawData[6] = 0;
                     }
                     _loc2_.rawData[7] = 0;
                     _loc2_.rawData[8] = 0;
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  _loc2_.rawData[9] = 0;
                  _loc2_.rawData[10] = 1;
                  if(!_loc4_)
                  {
                     break;
                  }
                  _loc2_.rawData[11] = 0;
                  if(!_loc5_)
                  {
                     _loc2_.rawData[12] = 0;
                     _loc2_.rawData[13] = 0;
                     if(_loc5_)
                     {
                        break loop0;
                     }
                  }
               }
               _loc2_.rawData[14] = 0;
               if(!_loc5_)
               {
                  break loop0;
               }
               §§goto(addr0107);
            }
            §"[§.§%a§ = true;
            §§goto(addr0107);
         }
         _loc2_.rawData[15] = 1;
         if(_loc4_)
         {
            break loop1;
         }
         addr0107:
         §§push(§"[§.§`!=§);
         if(!_loc5_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc5_)
            {
               §"[§.§`!=§ = false;
               if(!_loc4_)
               {
                  break;
               }
            }
            super.§1P§(param1);
            if(_loc4_)
            {
               §"[§.§`!=§ = _loc3_;
            }
            break;
         }
      }
      
      public function §;T§(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §?!_§.§43§.remove(param1);
         }
      }
      
      public function §%!,§(param1:§6M§) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:* = NaN;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc8_)
                        {
                           §§push(§8!5§);
                           if(_loc7_)
                           {
                              break;
                           }
                           if(§§pop() <= 0)
                           {
                              break loop3;
                           }
                           if(_loc7_)
                           {
                              break loop2;
                           }
                           while(true)
                           {
                              §§push(param1.transform.position.z);
                              if(!_loc7_)
                              {
                                 §§push(§!!@§);
                                 §§push(§8!5§);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 loop16:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop()[§§pop()].transform.position.z);
                                       if(_loc8_)
                                       {
                                          §§push(param1.§73§.tileWidth);
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(_loc7_)
                                          {
                                             break loop16;
                                          }
                                       }
                                       §§push(10);
                                       break;
                                    }
                                    §§push(§§pop() / §§pop());
                                    break;
                                 }
                                 §§push(§§pop() - §§pop());
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                              }
                              §§push(Number(§§pop()));
                              if(!_loc7_)
                              {
                                 break;
                              }
                              break loop1;
                           }
                           _loc2_ = §§pop();
                           if(_loc7_)
                           {
                              break loop0;
                           }
                        }
                        §§push(_loc2_);
                        break loop1;
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr00aa);
               }
               §§push(param1.§!8§.color);
               if(_loc8_)
               {
                  addr00c0:
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               if(!_loc7_)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(!_loc7_)
                           {
                              §§push(false);
                              if(_loc7_)
                              {
                                 break loop5;
                              }
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!_loc7_)
                                 {
                                    §§push(16711680);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() & §§pop());
                                 }
                                 §§push(6684672);
                                 break;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 break;
                              }
                              if(_loc7_)
                              {
                                 break loop5;
                              }
                              §§pop();
                              if(_loc7_)
                              {
                                 break loop4;
                              }
                           }
                           §§push(_loc3_);
                           if(_loc8_)
                           {
                              §§push(§§pop() & 0xFF00);
                           }
                           §§push(§§pop() < 26112);
                           if(_loc8_)
                           {
                              break loop5;
                           }
                           break;
                        }
                        if(!§§pop())
                        {
                           break loop4;
                        }
                        loop8:
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 §§pop();
                                 if(_loc7_)
                                 {
                                    break loop8;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc8_)
                                    {
                                       §§push(255);
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() & §§pop());
                                       if(!_loc8_)
                                       {
                                          break loop9;
                                       }
                                    }
                                    §§push(102);
                                    break;
                                 }
                                 §§push(§§pop() < §§pop());
                                 if(_loc7_)
                                 {
                                    break loop4;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break loop4;
                           }
                           §§goto(addr0177);
                        }
                        §§goto(addr0163);
                     }
                     §§push(Boolean(§§pop()));
                     break loop6;
                  }
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        addr0163:
                        addr0177:
                        §§push(§-;§.§+c§(_loc3_,16777215,0.3));
                        if(!_loc7_)
                        {
                           §§push(uint(§§pop()));
                        }
                        _loc3_ = int(§§pop());
                     }
                  }
               }
               var _loc4_:§%!§ = null;
               loop11:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        if(§8!5§ >= int(§!!@§.length))
                        {
                           _loc4_ = new §%!§(this,false,new §[O§(_loc3_,§[D§.§7!P§()));
                           if(!_loc7_)
                           {
                              §`=§(_loc4_);
                              if(_loc7_)
                              {
                                 break;
                              }
                           }
                           §!!@§.push(_loc4_);
                           break;
                        }
                     }
                     _loc4_ = §!!@§[§8!5§];
                     if(_loc8_)
                     {
                        _loc4_.model.§#"§(true);
                        if(_loc8_)
                        {
                           _loc4_.model.§%^§(_loc3_);
                           if(!_loc7_)
                           {
                              break;
                           }
                        }
                     }
                     break loop11;
                  }
                  §§push(§§findproperty(§8!5§));
                  §§push(§8!5§);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop().§8!5§ = §§pop();
                  break;
               }
               var _loc5_:Point3D = param1.transform.§2!§();
               if(!_loc7_)
               {
                  §§push(10 / param1.§73§.tileWidth);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc2_ = §§pop();
               }
               var _loc6_:Point3D = _loc5_;
               while(true)
               {
                  if(!_loc7_)
                  {
                     if(_loc6_ == null)
                     {
                        if(_loc7_)
                        {
                           break;
                        }
                        _loc6_ = new Point3D(0,0,0);
                     }
                     _loc6_.x = _loc5_.x * _loc2_;
                     if(_loc7_)
                     {
                        break;
                     }
                     _loc6_.y = _loc5_.y * _loc2_;
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  §§push(_loc6_);
                  §§push(_loc5_.z);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().z = §§pop();
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§goto(addr02c6);
               }
               _loc4_.transform.§"w§(_loc5_);
               addr02c6:
               return;
            }
            if(§§pop() < 80)
            {
               if(_loc8_)
               {
                  break;
               }
               break loop2;
            }
            addr00aa:
            § L§.low = 504333;
            break loop2;
         }
      }
      
      override public function §+!E§() : void
      {
      }
      
      public function §`9§() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = 0;
         §§push(§8!5§);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(int(§!!@§.length));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc5_)
            {
               while(_loc1_ < _loc2_)
               {
                  while(true)
                  {
                     §§push(_loc1_);
                     if(_loc5_)
                     {
                        _loc1_++;
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc3_ = §§pop();
                  if(_loc5_)
                  {
                     if(§!!@§[_loc3_].model.visible)
                     {
                        if(_loc5_)
                        {
                           §!!@§[_loc3_].model.§#"§(false);
                        }
                     }
                  }
               }
               if(!_loc5_)
               {
                  break;
               }
            }
            §8!5§ = 0;
            break;
         }
      }
      
      public function §"c§(param1:int, param2:int) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:* = 0;
         var _loc5_:* = null as Vector.<§'h§>;
         var _loc6_:* = null as §'h§;
         var _loc3_:§1![§ = §"[§;
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               if(!_loc8_)
               {
                  if(_loc3_.§9!R§ == null)
                  {
                     break;
                  }
                  if(_loc8_)
                  {
                     break loop4;
                  }
               }
               §§push(0);
               if(!_loc8_)
               {
                  §§push(int(§§pop()));
                  if(_loc7_)
                  {
                     _loc4_ = §§pop();
                     if(!_loc8_)
                     {
                        _loc5_ = _loc3_.§9!R§.§5V§;
                        if(_loc7_)
                        {
                           while(true)
                           {
                              if(_loc4_ >= int(_loc5_.length))
                              {
                                 break loop5;
                              }
                              _loc6_ = _loc5_[_loc4_];
                              if(_loc7_)
                              {
                                 _loc4_++;
                                 if(!_loc8_)
                                 {
                                    _loc6_.§8!9§();
                                 }
                              }
                           }
                        }
                        break;
                     }
                     break loop4;
                  }
                  addr00b5:
                  _loc4_ = §§pop();
                  break loop4;
               }
               addr00b4:
               §§goto(addr00b5);
            }
            §§push(0);
            if(!_loc8_)
            {
               §§goto(addr00b4);
            }
            §§goto(addr00b5);
         }
         _loc5_ = _loc3_.§@8§.§5V§;
         if(!_loc8_)
         {
            while(true)
            {
               §§push(_loc4_);
               if(_loc8_)
               {
                  break;
               }
               if(§§pop() < int(_loc5_.length))
               {
                  _loc6_ = _loc5_[_loc4_];
                  if(_loc7_)
                  {
                     _loc4_++;
                     if(!_loc8_)
                     {
                        _loc6_.§8!9§();
                     }
                  }
                  continue;
               }
               if(!_loc8_)
               {
                  §§push(0);
                  if(!_loc8_)
                  {
                     break;
                  }
                  addr011e:
                  _loc4_ = §§pop();
               }
            }
            §§goto(addr011e);
            §§push(int(§§pop()));
         }
         _loc5_ = _loc3_.§3!#§.§5V§;
         if(!_loc8_)
         {
            while(true)
            {
               §§push(_loc4_);
               if(_loc8_)
               {
                  break;
               }
               if(§§pop() < int(_loc5_.length))
               {
                  _loc6_ = _loc5_[_loc4_];
                  if(!_loc8_)
                  {
                     _loc4_++;
                     if(_loc7_)
                     {
                        _loc6_.§8!9§();
                     }
                  }
                  continue;
               }
               if(!_loc8_)
               {
                  §§push(0);
                  if(!_loc8_)
                  {
                     break;
                  }
                  addr017c:
                  _loc4_ = §§pop();
               }
            }
            §§goto(addr017c);
            §§push(int(§§pop()));
         }
         _loc5_ = _loc3_.§<!Y§.§5V§;
         while(true)
         {
            if(!_loc8_)
            {
               while(_loc4_ < int(_loc5_.length))
               {
                  _loc6_ = _loc5_[_loc4_];
                  if(_loc7_)
                  {
                     _loc4_++;
                     if(!_loc8_)
                     {
                        _loc6_.§8!9§();
                     }
                  }
               }
               if(!_loc7_)
               {
                  break;
               }
            }
            §6t§ = 0;
            break;
         }
         int(§§pop());
      }
      
      public function §>!E§(param1:§>f§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §0h§(param1.§?l§);
         }
      }
      
      override public function §4<§(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:StringMap = §?!_§.§43§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(§§pop() in StringMap.§+!#§);
                     if(!_loc4_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        addr004e:
                        §§push(_loc2_.existsReserved(param1));
                        if(_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc3_)
                           {
                              break;
                           }
                        }
                        break loop0;
                     }
                     §§push(param1);
                  }
                  §§push(§§pop() in _loc2_.h);
                  break loop0;
               }
               §§goto(addr004e);
            }
            return §§pop();
         }
         return §§pop();
      }
      
      override public function §>!]§(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:StringMap = §?!_§.§43§;
         while(true)
         {
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  break;
               }
               if(!(§§pop() in StringMap.§+!#§))
               {
                  return _loc2_.h[param1];
               }
            }
            return _loc2_.getReserved(param1);
         }
         return §§pop();
      }
      
      public function §]!E§() : Object
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc7_:* = null as §=9§;
         var _loc8_:* = null;
         var _loc9_:* = null as Point3D;
         var _loc10_:* = null as Point3D;
         var _loc1_:* = null;
         var _loc2_:§=9§ = null;
         §§push(Number(Math.POSITIVE_INFINITY));
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Point3D = §&g§.§%!=§;
         §§push(0);
         if(_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:Vector.<§=9§> = §=p§;
         if(!_loc11_)
         {
            loop0:
            while(_loc5_ < int(_loc6_.length))
            {
               _loc7_ = _loc6_[_loc5_];
               if(!_loc11_)
               {
                  _loc5_++;
               }
               _loc8_ = _loc7_.§'!9§(§6!8§.start,§6!8§.end,_loc4_);
               while(true)
               {
                  if(_loc12_)
                  {
                     if(_loc8_ == null)
                     {
                        continue loop0;
                     }
                     if(_loc11_)
                     {
                        break;
                     }
                  }
                  if(§#Z§ < 0)
                  {
                     break;
                  }
                  _loc9_ = §6!8§.start;
                  _loc10_ = _loc4_;
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           if(!_loc11_)
                           {
                              if(_loc10_ == null)
                              {
                                 _loc10_ = new Point3D(0,0,0);
                              }
                              _loc10_.x = _loc4_.x - _loc9_.x;
                              if(_loc12_)
                              {
                                 _loc10_.y = _loc4_.y - _loc9_.y;
                                 §§push(_loc10_);
                                 §§push(_loc4_.z);
                                 if(_loc12_)
                                 {
                                    §§push(§§pop() - _loc9_.z);
                                 }
                                 §§pop().z = §§pop();
                                 if(_loc12_)
                                 {
                                    §§push(_loc4_.x * _loc4_.x);
                                    §§push(_loc4_.y * _loc4_.y);
                                    if(_loc12_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc11_)
                                       {
                                          break;
                                       }
                                       §§push(_loc4_.z);
                                    }
                                    §§push(_loc4_.z);
                                    if(_loc11_)
                                    {
                                       break loop3;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc11_)
                                    {
                                       break loop2;
                                    }
                                    if(§§pop() + §§pop() >= _loc3_)
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(_loc4_.x * _loc4_.x);
                              if(!_loc11_)
                              {
                                 break loop4;
                              }
                              §§goto(addr01d8);
                           }
                           §§goto(addr01d9);
                        }
                        §§push(_loc4_.y * _loc4_.y);
                        if(_loc12_)
                        {
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc11_)
                              {
                                 §§push(Number(§§pop()));
                                 §§push(_loc4_.z);
                                 break loop2;
                              }
                              §§goto(addr01d8);
                           }
                           §§goto(addr01d9);
                        }
                        §§goto(addr01d1);
                     }
                     addr01d9:
                     addr01d1:
                     §§push(§§pop() + §§pop() * §§pop());
                     if(!_loc11_)
                     {
                        addr01d8:
                        §§push(Number(§§pop()));
                     }
                     _loc3_ = Number(§§pop());
                     _loc2_ = _loc7_;
                     _loc1_ = _loc8_;
                     continue loop0;
                  }
                  §§push(_loc4_.z);
                  break loop3;
               }
               _loc2_ = _loc7_;
               _loc1_ = _loc8_;
               break;
            }
         }
         return _loc1_;
      }
      
      public function §+g§(param1:int) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               §§push(param1);
               if(_loc2_)
               {
                  break;
               }
               if(§§pop() > 0)
               {
                  §§push(170);
                  break;
               }
            }
            §§push(413);
            if(!_loc2_)
            {
               return §§pop();
            }
            break;
         }
         §§push(§>V§(param1));
         if(!_loc2_)
         {
            §§push(Number(§§pop()));
         }
         return §§pop() - §§pop();
      }
      
      public function §>V§(param1:int) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc2_)
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        break loop1;
                     }
                     §§push(-1);
                     if(_loc2_)
                     {
                        break;
                     }
                     if(§§pop() >= §§pop())
                     {
                        §§push(param1);
                        break loop1;
                     }
                     if(_loc2_)
                     {
                        break loop0;
                     }
                  }
                  §§push(0);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
                  break loop1;
               }
               if(§§pop() == §§pop())
               {
                  break loop0;
               }
               §§push(§@R§);
               if(_loc3_)
               {
                  §§goto(addr0072);
               }
               §§goto(addr007d);
            }
            §§push(-1);
            break loop2;
         }
         §§push(-16);
         if(!_loc2_)
         {
            return §§pop();
         }
         addr0072:
         addr007d:
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop() + 2);
         }
         return §§pop() * §§pop();
      }
      
      override public function display(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc3_:* = NaN;
         var _loc4_:* = null as §"B§;
         var _loc5_:* = null as §"B§;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         var _loc9_:* = NaN;
         var _loc10_:* = null as §1![§;
         var _loc11_:* = null as Matrix3D;
         var _loc12_:* = null as Matrix3D;
         var _loc13_:* = 0;
         var _loc15_:* = null as §"V§;
         if(!_loc16_)
         {
            § L§.mid = 948414;
            if(_loc17_)
            {
               §"[§.update(param1);
            }
         }
         var _loc2_:Point3D = §<!M§.§<!C§();
         while(true)
         {
            loop4:
            while(true)
            {
               loop39:
               while(true)
               {
                  if(§`O§ < 0.4)
                  {
                     if(!_loc17_)
                     {
                        break loop22;
                     }
                     while(true)
                     {
                        §§push(§§findproperty(§`O§));
                        §§push(§`O§);
                        if(_loc17_)
                        {
                           §§push(§§pop() + param1);
                           if(_loc16_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().§`O§ = §§pop();
                     if(_loc16_)
                     {
                        break loop23;
                     }
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§`O§);
                           §§push(0.4);
                           if(!_loc16_)
                           {
                              _loc3_ = §§pop() / §§pop();
                              §§push(_loc3_);
                              if(!_loc16_)
                              {
                                 §§push(1);
                                 if(_loc16_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc17_)
                                       {
                                          §<!M§.§"I§(§3!3§);
                                          if(!_loc17_)
                                          {
                                             break loop4;
                                          }
                                          §>0§ = §%!M§;
                                          §?!M§ = §56§;
                                          §!6§ = §%!M§;
                                          if(_loc16_)
                                          {
                                             continue loop36;
                                          }
                                          §,!U§ = §56§;
                                          _loc4_ = §&!b§;
                                          _loc5_ = §3!3§;
                                          _loc4_.x = _loc5_.x;
                                          _loc4_.y = _loc5_.y;
                                          _loc4_.z = _loc5_.z;
                                          _loc4_.w = _loc5_.w;
                                          if(_loc16_)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr04e7);
                                       }
                                    }
                                    else
                                    {
                                       _loc4_ = §<!M§.§+n§();
                                       loop44:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(_loc17_)
                                             {
                                                §4!R§.§+!Q§(§&!b§,§3!3§,_loc3_,_loc4_);
                                                §<!M§.§"I§(_loc4_);
                                                §§push(§!6§);
                                                if(!_loc16_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc16_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                _loc6_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(§§findproperty(§>0§));
                                                   §§push(_loc6_);
                                                   if(_loc17_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(§%!M§);
                                                         if(_loc17_)
                                                         {
                                                            §§push(§§pop() - _loc6_);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc16_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   §§push(Number(§§pop()));
                                                   break;
                                                }
                                                §§pop().§>0§ = §§pop();
                                                if(!_loc17_)
                                                {
                                                   break loop44;
                                                }
                                             }
                                             §§push(§,!U§);
                                             if(_loc17_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             break;
                                          }
                                          _loc7_ = §§pop();
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§push(§§findproperty(§?!M§));
                                          §§push(_loc7_);
                                          if(_loc17_)
                                          {
                                             §§push(_loc3_);
                                             if(!_loc16_)
                                             {
                                                §§push(§56§);
                                                if(_loc17_)
                                                {
                                                   §§push(§§pop() - _loc7_);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc16_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(Number(§§pop()));
                                          break;
                                       }
                                       §§pop().§?!M§ = §§pop();
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       §§push(§>0§);
                                       if(_loc17_)
                                       {
                                          §§push(-§§pop());
                                          if(_loc16_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(§§pop() * Number(Math.sin(§?!M§)));
                                       break;
                                    }
                                    §§pop().x = §§pop();
                                    if(!_loc16_)
                                    {
                                       §§push(_loc2_);
                                       §§push(§>0§);
                                       if(!_loc16_)
                                       {
                                          §§push(§§pop() * Number(Math.cos(§?!M§)));
                                       }
                                       §§pop().y = §§pop();
                                    }
                                    break;
                                 }
                                 §§push(§`O§);
                                 if(_loc16_)
                                 {
                                    break loop39;
                                 }
                                 §§push(0.4);
                                 if(!_loc16_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(_loc17_)
                                       {
                                          §§push(!§§pop());
                                          if(!_loc17_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             continue loop36;
                                          }
                                          §§goto(addr031e);
                                       }
                                       §§goto(addr031f);
                                    }
                                    §§goto(addr033a);
                                 }
                                 else
                                 {
                                    §§goto(addr0469);
                                 }
                              }
                              else
                              {
                                 §§goto(addr054e);
                              }
                           }
                           §§goto(addr054f);
                        }
                        §§goto(addr055d);
                     }
                     §§goto(addr0576);
                  }
                  §§goto(addr026b);
               }
               §§goto(addr05a2);
            }
            var _loc14_:Vector.<§"V§> = §6!H§;
            if(!_loc16_)
            {
               while(_loc8_ < int(_loc14_.length))
               {
                  _loc15_ = _loc14_[_loc8_];
                  if(!_loc16_)
                  {
                     _loc8_++;
                     if(_loc17_)
                     {
                        _loc15_.display(param1);
                     }
                  }
               }
            }
            return;
         }
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               while(true)
               {
                  loop13:
                  while(true)
                  {
                     loop31:
                     while(true)
                     {
                        loop32:
                        while(true)
                        {
                           loop36:
                           while(true)
                           {
                              loop37:
                              while(true)
                              {
                                 §§push(true);
                                 if(!_loc16_)
                                 {
                                    while(true)
                                    {
                                       §§push(Key.§,i§[187]);
                                       if(!_loc16_)
                                       {
                                          if(!§§pop())
                                          {
                                             §§pop();
                                             if(_loc16_)
                                             {
                                                break loop13;
                                             }
                                             §§push(Key.§,i§[107]);
                                             if(_loc16_)
                                             {
                                                break loop5;
                                             }
                                             §§push(Boolean(§§pop()));
                                             if(!_loc17_)
                                             {
                                                continue loop17;
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             §91§(true);
                                             if(!_loc17_)
                                             {
                                                break loop22;
                                             }
                                          }
                                          else
                                          {
                                             §§push(true);
                                             if(!Key.§,i§[189])
                                             {
                                                §§pop();
                                                §§push(Key.§,i§[109]);
                                                if(!_loc17_)
                                                {
                                                   break;
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(§§pop())
                                             {
                                                §91§(false);
                                                if(!_loc17_)
                                                {
                                                   §§goto(addr05a4);
                                                }
                                             }
                                          }
                                          addr031e:
                                          addr031f:
                                          §§push(false);
                                          §§push(false);
                                          if(§7o§.instance.mouseDown)
                                          {
                                             if(_loc16_)
                                             {
                                                break loop37;
                                             }
                                             §§pop();
                                             if(!_loc17_)
                                             {
                                                break loop36;
                                             }
                                             §§push(!§<!>§);
                                             if(!_loc17_)
                                             {
                                                break loop32;
                                             }
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc16_)
                                          {
                                             break;
                                          }
                                          break loop6;
                                       }
                                       break loop31;
                                    }
                                    §§pop();
                                    §§push(Boolean(§4!<§.contains(§7o§.instance.mouseX,§7o§.instance.mouseY)));
                                    if(!_loc17_)
                                    {
                                       break loop5;
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 break loop31;
                              }
                              §§goto(addr0630);
                           }
                           §§goto(addr0642);
                        }
                        §§goto(addr0601);
                     }
                     if(§§pop())
                     {
                        §§push(§§findproperty(§[S§));
                        §§push(§<!M§.position.z);
                        if(_loc17_)
                        {
                           loop33:
                           while(true)
                           {
                              loop34:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(§#Z§);
                                    if(_loc17_)
                                    {
                                       §§push(0);
                                       if(!_loc17_)
                                       {
                                          break;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          §§push(0);
                                          break loop33;
                                       }
                                       if(_loc16_)
                                       {
                                          break loop34;
                                       }
                                       §§push(40);
                                       if(!_loc17_)
                                       {
                                          break loop33;
                                       }
                                    }
                                    §§push(§#Z§);
                                    if(_loc17_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc17_)
                                       {
                                          §§push(20);
                                          break;
                                       }
                                       break loop33;
                                    }
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc16_)
                                 {
                                 }
                                 break loop33;
                              }
                           }
                           §§push(§§pop() - §§pop());
                        }
                        break loop34;
                     }
                     §§push(Key.§,i§[36]);
                     if(_loc16_)
                     {
                        break loop6;
                     }
                     continue loop17;
                  }
                  §§goto(addr064e);
               }
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
                              if(Boolean(§§pop()))
                              {
                                 §[S§ = 0;
                                 addr0479:
                                 loop19:
                                 while(true)
                                 {
                                    §§push(§#Z§);
                                    if(!_loc16_)
                                    {
                                       while(true)
                                       {
                                          §§push(0);
                                          if(!_loc16_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                §§push(0);
                                                if(_loc17_)
                                                {
                                                   break;
                                                }
                                                break loop16;
                                             }
                                             §§push(40);
                                             if(_loc16_)
                                             {
                                                break loop19;
                                             }
                                             §§push(§#Z§);
                                             if(!_loc16_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                §§push(20);
                                             }
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc16_)
                                          {
                                             break;
                                          }
                                          break loop15;
                                       }
                                    }
                                    §§push(int(§§pop()));
                                    if(_loc17_)
                                    {
                                       break;
                                    }
                                    break loop15;
                                 }
                                 _loc8_ = §§pop();
                                 loop21:
                                 while(true)
                                 {
                                    loop22:
                                    while(true)
                                    {
                                       loop23:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(!_loc16_)
                                             {
                                                loop25:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§[S§);
                                                      §§push(_loc8_);
                                                      if(!_loc16_)
                                                      {
                                                         addr04dd:
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc16_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr04e7:
                                                            §§push(_loc2_.z);
                                                            if(!_loc17_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         §§push(_loc3_);
                                                         if(!_loc16_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc17_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               loop27:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§findproperty(§9!K§));
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(!_loc17_)
                                                                        {
                                                                           break loop27;
                                                                        }
                                                                        §§push(0);
                                                                        if(_loc16_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(_loc17_)
                                                                           {
                                                                              §§push(-§§pop());
                                                                           }
                                                                           break loop27;
                                                                        }
                                                                     }
                                                                     §§push(_loc6_);
                                                                     if(_loc17_)
                                                                     {
                                                                     }
                                                                     break loop27;
                                                                  }
                                                                  §§push(§§pop() < §§pop());
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                  }
                                                                  §§pop().§9!K§ = §§pop();
                                                                  if(_loc16_)
                                                                  {
                                                                     break loop4;
                                                                  }
                                                                  §§push(_loc2_.z);
                                                                  §§push(_loc3_);
                                                               }
                                                               §§push(3);
                                                               break loop28;
                                                            }
                                                            break;
                                                         }
                                                         addr0550:
                                                         _loc7_ = §§pop() - §§pop();
                                                         addr054f:
                                                         if(_loc16_)
                                                         {
                                                            break loop25;
                                                         }
                                                         §§push(_loc7_);
                                                         §§push(0);
                                                      }
                                                      addr055d:
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(_loc17_)
                                                         {
                                                            break loop25;
                                                         }
                                                         break loop22;
                                                      }
                                                      §§push(_loc7_);
                                                      break;
                                                   }
                                                   addr0576:
                                                   §§goto(addr0577);
                                                }
                                                §§push(_loc7_);
                                                if(!_loc16_)
                                                {
                                                   addr0577:
                                                   §§push(0.2);
                                                   if(!_loc17_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc17_)
                                                      {
                                                         _loc2_.z = _loc3_;
                                                         if(!_loc16_)
                                                         {
                                                            break loop23;
                                                         }
                                                         break loop17;
                                                      }
                                                      break loop18;
                                                   }
                                                   §§push(_loc2_.z);
                                                   if(_loc16_)
                                                   {
                                                      break loop21;
                                                   }
                                                }
                                                addr05a2:
                                                _loc9_ = §§pop();
                                             }
                                             addr05a4:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                §§push(_loc9_);
                                                if(_loc17_)
                                                {
                                                   §§push(param1);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop() * 6);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc17_)
                                                         {
                                                            §§push(§§pop() - _loc9_);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc17_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§push(Number(§§pop()));
                                                break;
                                             }
                                             §§pop().z = §§pop();
                                             break loop23;
                                          }
                                          §§goto(addr0641);
                                       }
                                       §§push(§9!K§);
                                       if(!_loc16_)
                                       {
                                          §§push(!§§pop());
                                          if(!_loc16_)
                                          {
                                             break loop6;
                                          }
                                          §§goto(addr0600);
                                       }
                                    }
                                    §§goto(addr05f9);
                                 }
                                 §§goto(addr0639);
                              }
                              else
                              {
                                 §§push(Key.§,i§[35]);
                                 if(!_loc16_)
                                 {
                                    if(§§pop())
                                    {
                                       §[S§ = §3k§;
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(§[S§);
                                          if(_loc17_)
                                          {
                                             §§push(0);
                                             if(!_loc16_)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   §[S§ = 0;
                                                   if(_loc16_)
                                                   {
                                                      §§goto(addr05f2);
                                                   }
                                                }
                                                else
                                                {
                                                   addr0469:
                                                   if(§[S§ > §3k§)
                                                   {
                                                      §[S§ = §3k§;
                                                   }
                                                }
                                                §§goto(addr0479);
                                             }
                                             else
                                             {
                                                §§goto(addr04dd);
                                             }
                                          }
                                          §§goto(addr0550);
                                       }
                                       §§goto(addr0576);
                                    }
                                    §§goto(addr0479);
                                 }
                              }
                              §§goto(addr0649);
                           }
                           §§goto(addr0667);
                        }
                        §§goto(addr0657);
                     }
                     §§goto(addr071c);
                  }
                  §§goto(addr071d);
               }
               §§goto(addr065d);
            }
            while(true)
            {
               if(§§pop())
               {
                  if(_loc16_)
                  {
                     break;
                  }
                  §<!>§ = false;
               }
               addr05f9:
               §§push(true);
               if(_loc17_)
               {
                  addr0600:
                  addr0601:
                  §§push(true);
                  if(_loc2_.x == §<!M§.position.x)
                  {
                     while(true)
                     {
                        if(_loc17_)
                        {
                           §§pop();
                           §§push(_loc2_.y == §<!M§.position.y);
                           if(_loc17_)
                           {
                              §§push(!§§pop());
                              if(!_loc17_)
                              {
                                 break;
                              }
                           }
                        }
                        addr0630:
                        §§push(Boolean(§§pop()));
                        break;
                     }
                  }
                  if(§§pop())
                  {
                     break loop5;
                  }
                  §§pop();
                  §§push(_loc2_.z == §<!M§.position.z);
               }
               addr0642:
               §§push(!§§pop());
               if(!_loc16_)
               {
                  addr0649:
                  §§push(Boolean(§§pop()));
                  break loop5;
               }
               §§goto(addr065d);
            }
            §§goto(addr0657);
         }
         if(§§pop())
         {
            addr064e:
            §<!M§.§"w§(_loc2_);
         }
         addr065d:
         addr0657:
         if(§9!"§)
         {
            if(!_loc17_)
            {
               break loop4;
            }
            addr0667:
            _loc10_ = §"[§;
            _loc11_ = §<!M§.§6,§();
            _loc12_ = _loc10_.§1`§;
            while(true)
            {
               if(!_loc16_)
               {
                  loop8:
                  while(true)
                  {
                     §§push(0);
                     if(!_loc16_)
                     {
                        §§push(int(§§pop()));
                        if(_loc16_)
                        {
                           break;
                        }
                     }
                     _loc8_ = §§pop();
                     if(!_loc16_)
                     {
                        while(true)
                        {
                           §§push(_loc8_);
                           break loop8;
                        }
                     }
                     addr0713:
                     addr071d:
                     §§push(0);
                     if(!_loc16_)
                     {
                        addr071c:
                        §§push(int(§§pop()));
                     }
                     _loc8_ = §§pop();
                     break loop4;
                  }
                  while(§§pop() < 16)
                  {
                     while(true)
                     {
                        §§push(_loc8_);
                        if(_loc17_)
                        {
                           _loc8_++;
                           if(_loc16_)
                           {
                              break;
                           }
                        }
                        §§push(int(§§pop()));
                        break;
                     }
                     _loc13_ = §§pop();
                     if(_loc17_)
                     {
                        §§push(_loc12_.rawData);
                        §§push(_loc13_);
                        §§push(_loc11_.rawData[_loc13_]);
                        if(!_loc16_)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§pop()[§§pop()] = §§pop();
                     }
                     §§push(_loc8_);
                  }
                  if(_loc16_)
                  {
                     break;
                  }
               }
               _loc10_.§1`§.invert();
               if(_loc17_)
               {
                  break;
               }
            }
            _loc10_.§%a§ = true;
            if(!_loc16_)
            {
               §9!"§ = false;
            }
         }
         §§goto(addr0713);
      }
   }
}

import haxeutils.math.geom.§"B§;
import haxeutils.math.geom.§4!R§;
import haxeutils.math.geom.Point3D;

-Math.PI / 2;
new Point3D(1,0,0);
null;
if(_loc3_ == null)
{
   new §"B§();
}
Number(Math.sin(_loc1_ / 2));
_loc3_.x * _loc3_.x + _loc3_.y * _loc3_.y + _loc3_.z * _loc3_.z + _loc3_.w * _loc3_.w;
_loc5_ - 1;
if((_loc6_ >= 0 ? _loc6_ : -_loc6_) >= 1e-10)
{
   if(_loc5_ == 0)
   {
      _loc3_.x = 0;
      _loc3_.y = 0;
      _loc3_.z = 0;
      _loc3_.w = 1;
   }
   else
   {
      1 / Number(Math.sqrt(_loc5_));
      _loc3_.x *= _loc5_;
      _loc3_.y *= _loc5_;
      _loc3_.z *= _loc5_;
      _loc3_.w *= _loc5_;
   }
}
§`!O§.§[@§;
-Math.PI / 2;
new Point3D(0,0,1);
null;
if(_loc9_ == null)
{
   new §"B§();
}
Number(Math.sin(_loc5_ / 2));
_loc9_.x * _loc9_.x + _loc9_.y * _loc9_.y + _loc9_.z * _loc9_.z + _loc9_.w * _loc9_.w;
_loc10_ - 1;
if((_loc11_ >= 0 ? _loc11_ : -_loc11_) >= 1e-10)
{
   if(_loc10_ == 0)
   {
      _loc9_.x = 0;
      _loc9_.y = 0;
      _loc9_.z = 0;
      _loc9_.w = 1;
   }
   else
   {
      1 / Number(Math.sqrt(_loc10_));
      _loc9_.x *= _loc10_;
      _loc9_.y *= _loc10_;
      _loc9_.z *= _loc10_;
      _loc9_.w *= _loc10_;
   }
}
§4!R§.§9!L§(_loc7_,_loc9_,§`!O§.§[@§);

