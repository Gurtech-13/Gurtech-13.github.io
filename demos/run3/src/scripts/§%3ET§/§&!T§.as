package §>T§
{
   import §!!$§.§?y§;
   import §-!!§.§ B§;
   import §-!!§.§&!;§;
   import §-!!§.§&l§;
   import §-!!§.§,C§;
   import §-!!§.§6!4§;
   import §-v§.§%!3§;
   import §2X§.LineLayout2D;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §6[§.§+B§;
   import §6[§.§3!0§;
   import §6[§.§8A§;
   import §6[§.§^!R§;
   import §8!0§.§2_§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import §[!P§.§@$§;
   import §[!P§.§`!W§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import flash.display.DisplayObject;
   import flash.events.FocusEvent;
   import flash.events.TextEvent;
   import flash.text.TextField;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.§4!O§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   
   public class §&!T§ extends Model
   {
      
      public function §&!T§(param1:Point3D, param2:Point3D, param3:Point3D, param4:int, param5:§'H§)
      {
         var _temp_1:* = true;
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = _temp_1;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:* = null as §!!V§;
         var _loc19_:* = null as §=s§;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc6_:Vector.<uint> = §4!O§.§92§.slice(0,16777215);
         if(_loc24_)
         {
            §@o§.§%5§(_loc6_,int(_loc6_.length),4);
         }
         var _loc7_:§!!V§ = Type.createInstance(param5.§?"§,[52,null]);
         if(!_loc23_)
         {
            super(_loc7_,_loc6_,param5);
         }
         §§push(param1.x + (param2.x + param3.x) / 2);
         if(_loc24_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         while(true)
         {
            §§push(param1.y + (param2.y + param3.y) / 2);
            if(!_loc23_)
            {
               §§push(§§pop() + 3.6000000000000005);
               if(!_loc24_)
               {
                  break;
               }
               §§push(Number(§§pop()));
               if(!_loc24_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc9_:* = §§pop();
         §§push(param1.z);
         if(!_loc23_)
         {
            while(true)
            {
               §§push(param2.z);
               if(!_loc23_)
               {
                  §§push(§§pop() + param3.z);
                  if(_loc23_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               if(!_loc23_)
               {
                  §§push(§§pop() / 2);
               }
               break;
            }
            §§push(§§pop() + §§pop());
            if(!_loc23_)
            {
               §§push(Number(§§pop()));
               if(!_loc23_)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc10_:* = §§pop();
         if(!_loc23_)
         {
            §@o§.§;M§(vertices,4,_loc8_,_loc9_,_loc10_,1);
         }
         §§push(0);
         if(_loc24_)
         {
            §§push(int(§§pop()));
         }
         var _loc11_:* = §§pop();
         var _loc12_:§'!Y§ = §2_§.§'!D§(vertices,"position");
         var _loc13_:§'!Y§ = §2_§.§'!D§(vertices,"color");
         §§push(0);
         if(!_loc23_)
         {
            §§push(int(§§pop()));
         }
         var _loc14_:* = §§pop();
         while(true)
         {
            if(_loc24_)
            {
               loop0:
               while(_loc14_ < 2)
               {
                  §§push(_loc14_++);
                  if(_loc23_)
                  {
                     while(true)
                     {
                        _loc16_++;
                        if(!_loc23_)
                        {
                           §§push(int(§§pop()));
                           if(!_loc23_)
                           {
                              continue loop1;
                           }
                        }
                        §§goto(addr03e7);
                     }
                     break loop1;
                  }
                  while(true)
                  {
                     §§push(int(§§pop()));
                     if(_loc24_)
                     {
                        _loc15_ = §§pop();
                        if(_loc23_)
                        {
                           break;
                        }
                        §§push(0);
                     }
                     _loc16_ = §§pop();
                     if(!_loc24_)
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc16_);
                        addr03e7:
                        while(§§pop() < 2)
                        {
                           §§push(_loc16_);
                        }
                        continue loop0;
                     }
                  }
                  do
                  {
                     _loc18_ = _loc12_.vertices;
                     while(true)
                     {
                        if(!_loc23_)
                        {
                           §§push(_loc18_);
                           §§push(_loc18_.§5G§);
                           if(!_loc23_)
                           {
                              §§push(§§pop() * _loc11_);
                           }
                           §§pop().offset = §§pop();
                           if(_loc23_)
                           {
                              break;
                           }
                        }
                        §§push(_loc12_.§+R§);
                        §§push(_loc18_.offset);
                        if(!_loc23_)
                        {
                           §§push(§§pop() + _loc12_.§+^§);
                        }
                        §§pop().offset = §§pop();
                        break;
                     }
                     _loc17_ = §§pop();
                  }
                  while(_loc24_);
               }
               if(!_loc24_)
               {
                  break;
               }
            }
            §<'§ = true;
            break;
         }
      }
      
      override public function §%^§(param1:int, param2:Number = 1) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc5_:* = 0;
         var _loc6_:* = null as §!!V§;
         var _loc7_:* = null as §=s§;
         var _loc8_:* = NaN;
         var _loc3_:§'!Y§ = §2_§.§'!D§(vertices,"color");
         §§push(0);
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc10_)
         {
            while(_loc4_ < 4)
            {
               while(true)
               {
                  §§push(_loc4_);
                  if(!_loc9_)
                  {
                     _loc4_++;
                     if(!_loc10_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc5_ = §§pop();
               _loc6_ = _loc3_.vertices;
               if(_loc10_)
               {
                  §§push(_loc6_);
                  §§push(_loc6_.§5G§);
                  if(_loc10_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().offset = §§pop();
                  if(_loc10_)
                  {
                     §§push(_loc3_.§+R§);
                     §§push(_loc6_.offset);
                     if(_loc10_)
                     {
                        §§push(§§pop() + _loc3_.§+^§);
                     }
                     §§pop().offset = §§pop();
                  }
               }
               _loc7_ = _loc3_.§+R§;
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc9_)
                     {
                        §§push(§§pop() >> 16);
                        if(_loc9_)
                        {
                           break;
                        }
                        §§push(int(§§pop()) & 0xFF);
                        if(!_loc10_)
                        {
                           break loop2;
                        }
                     }
                     while(true)
                     {
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop() / 255);
                              if(_loc10_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 _loc8_ = §§pop();
                                 _loc7_.§@!Y§[_loc7_.offset] = _loc8_;
                                 §§push(param1);
                                 if(_loc9_)
                                 {
                                    break loop3;
                                 }
                                 §§push(§§pop() >> 8);
                                 if(_loc10_)
                                 {
                                    §§push(int(§§pop()));
                                    break loop2;
                                 }
                                 §§goto(addr0114);
                              }
                              §§goto(addr012c);
                           }
                           §§goto(addr0172);
                        }
                        §§goto(addr015f);
                     }
                     §§goto(addr0173);
                  }
                  §§push(255);
                  break loop6;
               }
               while(true)
               {
                  §§push(255);
                  if(!_loc9_)
                  {
                     addr0114:
                     §§push(§§pop() & §§pop());
                     §§push(255);
                     if(!_loc9_)
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc10_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc10_)
                           {
                              break;
                           }
                        }
                        addr012c:
                        _loc8_ = §§pop();
                        if(!_loc9_)
                        {
                           §§push(_loc7_.§@!Y§);
                           §§push(_loc7_.offset);
                           if(_loc10_)
                           {
                              §§push(§§pop() + 1);
                           }
                           §§pop()[§§pop()] = _loc8_;
                        }
                        §§push(param1);
                        if(_loc9_)
                        {
                           break loop3;
                        }
                        §§push(255);
                        if(_loc10_)
                        {
                           §§push(§§pop() & §§pop());
                           break loop3;
                        }
                     }
                  }
                  addr015f:
                  §§push(§§pop() / §§pop());
                  if(_loc10_)
                  {
                     addr0172:
                     §§push(Number(§§pop()));
                  }
                  break;
               }
               addr0173:
               _loc8_ = §§pop();
               §§push(_loc7_.§@!Y§);
               §§push(_loc7_.offset);
               if(_loc10_)
               {
                  §§push(§§pop() + 2);
               }
               §§pop()[§§pop()] = _loc8_;
            }
            if(_loc10_)
            {
               §8!Q§ = true;
            }
         }
      }
   }
}

