package nme3D.model
{
   import §+!1§.§[!9§;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import nme3D.shader.§'H§;
   import nme3D.shader.§<!9§;
   import nme3D.shader.§=A§;
   import nme3D.shader.vertex.PositionColorVertex;
   import nme3D.shader.vertex.PositionUVVertex;
   import openfl.Assets;
   
   public class §7v§ extends Model
   {
      
      public function §7v§(param1:Object, param2:§[!9§ = undefined, param3:Object = undefined, param4:§'H§ = undefined)
      {
         §§push(false);
         var _loc24_:Boolean = true;
         var _loc25_:* = §§pop();
         var _loc7_:* = null as Class;
         var _loc8_:* = null as §'H§;
         var _loc14_:* = 0;
         var _loc16_:* = 0;
         var _loc18_:* = null as §'!Y§;
         var _loc19_:* = null as §=s§;
         var _loc20_:* = null as §'!Y§;
         var _loc21_:* = null as §!!V§;
         var _loc22_:* = null as §=s§;
         var _loc23_:* = NaN;
         §§push(param1.vertices);
         if(!_loc25_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         var _loc6_:Vector.<Number> = Vector.<Number>(_loc5_);
         while(true)
         {
            if(_loc24_)
            {
               if(param4 != null)
               {
                  if(!_loc25_)
                  {
                     _loc8_ = param4;
                     _loc7_ = param4.§?"§;
                     break;
                  }
               }
               else if(param2 != null)
               {
                  _loc7_ = PositionUVVertex;
                  _loc8_ = §=A§.§1r§(param2);
                  break;
               }
            }
            _loc7_ = PositionColorVertex;
            _loc8_ = §<!9§.§7!P§();
            break;
         }
         var _loc9_:§!!V§ = Type.createInstance(_loc7_,[null,_loc6_]);
         var _loc10_:§!!V§ = _loc9_;
         §§push(param1.indices);
         if(_loc24_)
         {
            §§push(§§pop());
         }
         var _loc11_:* = §§pop();
         var _loc12_:Vector.<uint> = new Vector.<uint>(int(_loc11_.length),false);
         var _loc13_:Vector.<uint> = _loc12_;
         while(true)
         {
            if(!_loc25_)
            {
               §§push(0);
               if(!_loc25_)
               {
                  §§push(int(§§pop()));
                  if(!_loc24_)
                  {
                     break;
                  }
               }
               _loc14_ = §§pop();
            }
            §§push(int(_loc11_.length));
            if(_loc24_)
            {
               §§push(int(§§pop()));
            }
            break;
         }
         var _loc15_:* = §§pop();
         if(!_loc25_)
         {
            while(_loc14_ < _loc15_)
            {
               §§push(_loc14_);
               if(!_loc25_)
               {
                  _loc14_++;
                  if(_loc24_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc16_ = §§pop();
               if(!_loc25_)
               {
                  _loc13_[_loc16_] = int(_loc11_[_loc16_]);
               }
            }
         }
         var _loc17_:Vector.<uint> = _loc13_;
         param1 = null;
         loop4:
         while(true)
         {
            if(_loc24_)
            {
               super(_loc10_,_loc17_,_loc8_);
               if(_loc24_)
               {
                  if(param3 == null)
                  {
                     break;
                  }
               }
            }
            _loc18_ = §2_§.§'!D§(_loc10_,"position");
            _loc20_ = _loc18_;
            if(_loc24_)
            {
               while(true)
               {
                  if(_loc20_.index >= _loc20_.length)
                  {
                     break loop4;
                  }
                  _loc21_ = _loc20_.vertices;
                  while(true)
                  {
                     if(!_loc25_)
                     {
                        while(true)
                        {
                           §§push(_loc21_);
                           §§push(_loc21_.§5G§);
                           if(_loc24_)
                           {
                              §§push(_loc20_);
                              §§push(_loc20_.index);
                              if(_loc24_)
                              {
                                 var _temp_1:* = §§pop();
                                 §§push(_temp_1);
                                 §§push(_temp_1);
                                 if(_loc24_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc14_ = §§pop();
                                 if(_loc24_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                              }
                              §§pop().index = §§pop();
                              if(!_loc24_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop() * _loc14_);
                           break;
                        }
                        §§pop().offset = §§pop();
                        if(_loc25_)
                        {
                           break;
                        }
                     }
                     §§push(_loc20_.§+R§);
                     §§push(_loc21_.offset);
                     if(_loc24_)
                     {
                        §§push(§§pop() + _loc20_.§+^§);
                     }
                     §§pop().offset = §§pop();
                     break;
                  }
                  _loc22_ = _loc20_.§+R§;
                  _loc19_ = _loc22_;
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc25_)
                        {
                           §§push(_loc19_.§@!Y§[_loc19_.offset]);
                           if(!_loc25_)
                           {
                              §§push(§§pop() * param3);
                              if(_loc24_)
                              {
                                 _loc23_ = Number(§§pop());
                                 if(!_loc25_)
                                 {
                                    _loc19_.§@!Y§[_loc19_.offset] = _loc23_;
                                 }
                                 §§push(_loc19_.§@!Y§);
                                 §§push(_loc19_.offset);
                                 if(!_loc25_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 §§push(§§pop()[§§pop()]);
                              }
                              §§push(Number(§§pop()));
                              if(!_loc24_)
                              {
                                 break;
                              }
                              §§push(§§pop() * param3);
                           }
                           _loc23_ = §§pop();
                           if(!_loc24_)
                           {
                              break loop7;
                           }
                        }
                        §§push(_loc19_.§@!Y§);
                        §§push(_loc19_.offset);
                        if(_loc24_)
                        {
                           §§push(§§pop() + 1);
                        }
                        §§pop()[§§pop()] = _loc23_;
                        break loop7;
                     }
                     §§goto(addr02e9);
                  }
                  addr02e9:
                  §§push(_loc19_.§@!Y§);
                  §§push(_loc19_.offset);
                  if(_loc24_)
                  {
                     §§push(§§pop() + 2);
                  }
                  §§push(§§pop()[§§pop()]);
                  if(!_loc25_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc24_)
                     {
                        §§push(§§pop() * param3);
                        break loop8;
                     }
                  }
                  _loc23_ = §§pop();
                  §§push(_loc19_.§@!Y§);
                  §§push(_loc19_.offset);
                  if(!_loc25_)
                  {
                     §§push(§§pop() + 2);
                  }
                  §§pop()[§§pop()] = _loc23_;
               }
            }
            break;
         }
      }
      
      public static function §>s§(param1:String, param2:§-!T§) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = JSON.parse(Assets.getText(param1));
         if(!_loc4_)
         {
            param2.§0!K§(_loc3_.vertices,_loc3_.indices);
         }
      }
      
      public static function § p§(param1:String, param2:§[!9§ = undefined, param3:Object = undefined) : §7v§
      {
         return new §7v§(JSON.parse(Assets.getText(param1)),param2,param3);
      }
      
      public static function §1z§(param1:String, param2:§[!9§ = undefined, param3:Object = undefined) : §7v§
      {
         return new §7v§(JSON.parse(param1),param2,param3);
      }
   }
}

