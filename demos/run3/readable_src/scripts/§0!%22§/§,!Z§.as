package §0!"§
{
   import geom3d.§]!Q§;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import world3d.Entity3D;
   import world3d.Constraint3D;
   import flash.Boot;
   import flash.errors.IllegalOperationError;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Matrix3D;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.§'h§;
   import nme3D.model.Model;
   import nme3D.model.VertexBuffer;
   
   public class §,!Z§
   {
      
      public static var init__:Boolean;
      
      public static var §>!1§:Point3D;
      
      public static var §1]§:Point3D;
      
      public var volume:Number;
      
      public var §!K§:Entity3D;
      
      public var § i§:§-U§;
      
      public var §8W§:§]!Q§;
      
      public function §,!Z§(param1:Entity3D, param2:Number)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               §!K§ = param1;
               if(_loc4_)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§findproperty(§ i§));
                        §§push(§§findproperty(§-U§));
                        if(!_loc3_)
                        {
                           §§push(true);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(param1 == null)
                           {
                              break loop1;
                           }
                           if(!_loc4_)
                           {
                              break loop1;
                           }
                           §§pop();
                        }
                        §§push(param1.§[!G§ == null);
                        if(!_loc3_)
                        {
                           break;
                        }
                        break loop1;
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
                  §§pop().§ i§ = new §§pop().§-U§(§§pop());
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            §8W§ = new §]!Q§();
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr0072);
         }
         volume = param2;
         addr0072:
      }
      
      public function §2y§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         var _temp_1:* = false;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(true);
                     if(_loc4_)
                     {
                        if(param2)
                        {
                           break loop1;
                        }
                        if(_loc4_)
                        {
                           §§pop();
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§push(param3);
                           if(_loc5_)
                           {
                              break loop1;
                           }
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break loop1;
                  }
               }
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     break loop2;
                  }
               }
               break;
            }
            §@t§();
            break;
         }
      }
      
      public function §5=§(param1:Number, param2:Number, param3:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            §8W§.translate(param1,param2,param3);
         }
      }
      
      public function §1%§(param1:Point3D, param2:Point3D, param3:Object = undefined, param4:Object = undefined, param5:Point3D = undefined, param6:Quaternion = undefined) : Point3D
      {
         var _temp_1:* = false;
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = _temp_1;
         Boot.lastError = new Error();
         throw new IllegalOperationError("collideLine() is abstract!");
      }
      
      public function §&D§(param1:§,!Z§, param2:Boolean = false) : void
      {
         var _temp_1:* = false;
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(param2);
            if(!_loc4_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc3_)
               {
                  param1.§&D§(this,true);
                  if(_loc4_)
                  {
                  }
               }
            }
            else
            {
               § i§.§%r§ = false;
               if(!_loc4_)
               {
                  param1.§ i§.§%r§ = false;
               }
            }
         }
      }
      
      public function §@t§() : void
      {
         var _temp_1:* = false;
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = _temp_1;
         var _loc2_:* = null as §!!V§;
         var _loc3_:* = null as §'!Y§;
         var _loc4_:* = 0;
         var _loc5_:* = null as §!!V§;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = null as §!!V§;
         var _loc9_:* = null as §=s§;
         var _loc10_:* = null as Matrix3D;
         var _loc1_:Model = §!K§.model;
         loop4:
         while(true)
         {
            if(_loc11_)
            {
               §8W§.clear();
               if(!_loc11_)
               {
                  break;
               }
            }
            loop5:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  if(_loc11_)
                  {
                     if(_loc1_.§;Z§ == null)
                     {
                        break loop5;
                     }
                     if(_loc12_)
                     {
                        break loop5;
                     }
                     §§pop();
                     if(!_loc11_)
                     {
                        break loop4;
                     }
                     §§push(_loc1_.§;Z§.§<G§ == null);
                     if(_loc12_)
                     {
                        break;
                     }
                     §§push(!§§pop());
                     if(!_loc11_)
                     {
                        break loop5;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  if(_loc11_)
                  {
                     break loop5;
                  }
                  break;
               }
               addr00a6:
               if(§§pop())
               {
                  if(!_loc12_)
                  {
                     §§goto(addr00b0);
                  }
               }
               §§goto(addr00b5);
            }
            if(§§pop())
            {
               while(true)
               {
                  if(_loc11_)
                  {
                     break loop4;
                  }
                  addr00b0:
                  _loc1_.§`!$§();
                  break;
               }
               addr00b5:
               _loc2_ = _loc1_.§;Z§.§<G§.vertices;
               _loc3_ = §2_§.§'!D§(_loc2_,"position");
               if(_loc11_)
               {
                  §§push(_loc1_.§&"§);
                  if(_loc11_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc4_ = §§pop();
               }
               _loc5_ = _loc1_.vertices;
               loop8:
               while(true)
               {
                  if(_loc11_)
                  {
                     loop9:
                     while(true)
                     {
                        loop10:
                        while(true)
                        {
                           §§push(_loc1_.§&"§);
                           if(_loc11_)
                           {
                              while(true)
                              {
                                 §§push(_loc5_.§@!Y§.length);
                                 if(!_loc12_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc12_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() / _loc5_.§5G§);
                                 }
                                 §§push(int(§§pop()));
                                 if(_loc11_)
                                 {
                                    break;
                                 }
                                 break loop10;
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc11_)
                              {
                                 break loop9;
                              }
                           }
                           §§push(int(§§pop()));
                           if(!_loc11_)
                           {
                              break loop9;
                           }
                           _loc6_ = §§pop();
                           if(!_loc11_)
                           {
                              break loop8;
                           }
                        }
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              break loop8;
                           }
                           while(true)
                           {
                              §§push(_loc4_);
                              if(_loc11_)
                              {
                                 _loc4_++;
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                              }
                              §§push(int(§§pop()));
                              break;
                           }
                           _loc7_ = §§pop();
                           _loc8_ = _loc3_.vertices;
                           if(_loc11_)
                           {
                              §§push(_loc8_);
                              §§push(_loc8_.§5G§);
                              if(_loc11_)
                              {
                                 §§push(§§pop() * _loc7_);
                              }
                              §§pop().offset = §§pop();
                              if(_loc11_)
                              {
                                 §§push(_loc3_.§+R§);
                                 §§push(_loc8_.offset);
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop() + _loc3_.§+^§);
                                 }
                                 §§pop().offset = §§pop();
                              }
                           }
                           _loc9_ = _loc3_.§+R§;
                           while(true)
                           {
                              if(!_loc12_)
                              {
                                 §§push(§,!Z§.§1]§);
                                 §§push(_loc9_.§@!Y§[_loc9_.offset]);
                                 if(_loc11_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 §§pop().x = §§pop();
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                                 §§push(§,!Z§.§1]§);
                                 §§push(_loc9_.§@!Y§);
                                 §§push(_loc9_.offset);
                                 if(_loc11_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 §§push(§§pop()[§§pop()]);
                                 if(!_loc12_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 §§pop().y = §§pop();
                                 if(_loc11_)
                                 {
                                    §§push(§,!Z§.§1]§);
                                    §§push(_loc9_.§@!Y§);
                                    §§push(_loc9_.offset);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() + 2);
                                    }
                                    §§push(§§pop()[§§pop()]);
                                    if(_loc11_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    §§pop().z = §§pop();
                                    if(!_loc11_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              §8W§.§%Y§(§,!Z§.§1]§);
                              break;
                           }
                        }
                        break loop8;
                     }
                     while(true)
                     {
                        §§push(_loc6_);
                        break loop10;
                     }
                     break;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     break loop9;
                  }
               }
            }
            else
            {
               _loc10_ = _loc1_.transform.§6,§();
               _loc3_ = §2_§.§'!D§(_loc1_.vertices,"position");
               if(_loc11_)
               {
                  loop3:
                  while(_loc3_.index < _loc3_.length)
                  {
                     _loc2_ = _loc3_.vertices;
                     while(true)
                     {
                        if(_loc11_)
                        {
                           §§push(_loc2_);
                           §§push(_loc2_.§5G§);
                           if(!_loc12_)
                           {
                              §§push(_loc3_);
                              §§push(_loc3_.index);
                              if(!_loc12_)
                              {
                                 var _temp_2:* = §§pop();
                                 §§push(_temp_2);
                                 §§push(_temp_2);
                                 if(_loc11_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc4_ = §§pop();
                                 if(_loc11_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                              }
                              §§pop().index = §§pop();
                              if(!_loc12_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                           }
                           §§pop().offset = §§pop();
                           if(_loc12_)
                           {
                              break;
                           }
                        }
                        §§push(_loc3_.§+R§);
                        §§push(_loc2_.offset);
                        if(!_loc12_)
                        {
                           §§push(§§pop() + _loc3_.§+^§);
                        }
                        §§pop().offset = §§pop();
                        break;
                     }
                     _loc9_ = _loc3_.§+R§;
                     while(true)
                     {
                        if(_loc11_)
                        {
                           §§push(§,!Z§.§1]§);
                           §§push(_loc9_.§@!Y§[_loc9_.offset]);
                           if(!_loc12_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§pop().x = §§pop();
                           if(_loc12_)
                           {
                              break;
                           }
                           §§push(§,!Z§.§1]§);
                           §§push(_loc9_.§@!Y§);
                           §§push(_loc9_.offset);
                           if(_loc11_)
                           {
                              §§push(§§pop() + 1);
                           }
                           §§push(§§pop()[§§pop()]);
                           if(_loc11_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§pop().y = §§pop();
                           if(_loc12_)
                           {
                              break;
                           }
                           §§push(§,!Z§.§1]§);
                           §§push(_loc9_.§@!Y§);
                           §§push(_loc9_.offset);
                           if(!_loc12_)
                           {
                              §§push(§§pop() + 2);
                           }
                           §§push(§§pop()[§§pop()]);
                           if(!_loc12_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§pop().z = §§pop();
                           if(_loc12_)
                           {
                              continue loop3;
                           }
                        }
                        _loc10_.transformVector3(§,!Z§.§1]§,§,!Z§.§1]§);
                        if(!_loc12_)
                        {
                           break;
                        }
                        continue loop3;
                     }
                     §8W§.§%Y§(§,!Z§.§1]§);
                  }
               }
            }
            return;
         }
         §§goto(addr00a6);
      }
   }
}

