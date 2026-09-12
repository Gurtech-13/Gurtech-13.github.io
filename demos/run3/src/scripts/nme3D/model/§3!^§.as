package nme3D.model
{
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import flash.events.Event;
   import nme3D.shader.§'H§;
   
   public class §3!^§ extends §1!U§
   {
      
      public function §3!^§(param1:int, param2:Number, param3:§'H§)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:§!!V§ = Type.createInstance(param3.§?"§,[param1,null]);
         var _loc5_:§!!V§ = _loc4_;
         if(_loc7_)
         {
            §3!^§.§-h§(_loc5_,param1,param2);
            if(_loc7_)
            {
               super(_loc5_,param3);
            }
         }
      }
      
      public static function §-h§(param1:§!!V§, param2:int, param3:Number, param4:Object = undefined, param5:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc11_:Number = NaN;
         var _loc13_:* = null as §!!V§;
         var _loc14_:* = null as §=s§;
         var _loc15_:* = NaN;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc17_)
               {
                  if(param4 != null)
                  {
                     break;
                  }
                  if(_loc16_)
                  {
                     break loop1;
                  }
               }
               param4 = true;
               break;
            }
            if(param5 == null)
            {
               break;
            }
            §§goto(addr0051);
         }
         §§push(0);
         if(_loc17_)
         {
            param5 = §§pop();
            addr0051:
            §§push(0);
            if(_loc17_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         while(true)
         {
            §§push(param2);
            if(!_loc16_)
            {
               §§push(§§pop() - 1);
               if(!_loc17_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc7_:* = §§pop();
         §§push(true);
         if(!_loc16_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc8_:* = §§pop();
         var _loc9_:int = param5;
         var _loc10_:§'!Y§ = §2_§.§'!D§(param1,"position");
         while(true)
         {
            §§push(6.283185307179586);
            if(!_loc16_)
            {
               §§push(§§pop() / param2);
               if(!_loc17_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc12_:* = §§pop();
         if(!_loc16_)
         {
            loop0:
            while(_loc7_ >= _loc6_)
            {
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     §§push(!param4);
                     if(!_loc16_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(!_loc16_)
                              {
                                 §§push(_loc12_);
                                 §§push(_loc9_);
                                 if(!_loc16_)
                                 {
                                    _loc11_ = §§pop() * §§pop();
                                    _loc6_++;
                                    break;
                                 }
                                 addr00fa:
                                 _loc11_ = §§pop() * §§pop();
                              }
                              _loc6_++;
                              break;
                           }
                           addr012a:
                           §§push(_loc8_);
                           if(!_loc17_)
                           {
                              break loop5;
                           }
                           §§push(!§§pop());
                           if(_loc16_)
                           {
                              break loop5;
                           }
                        }
                        else
                        {
                           §§push(_loc8_);
                           if(!_loc16_)
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc17_)
                                    {
                                       break;
                                    }
                                    §§push(_loc12_);
                                    §§push(_loc6_);
                                    if(!_loc16_)
                                    {
                                       §§goto(addr00fa);
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc12_);
                                    §§push(_loc7_);
                                 }
                                 _loc11_ = §§pop() * §§pop();
                                 if(!_loc16_)
                                 {
                                    _loc7_--;
                                    if(!_loc16_)
                                    {
                                       break;
                                    }
                                    break loop6;
                                 }
                                 break;
                              }
                              §§goto(addr012a);
                           }
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break loop5;
                  }
                  _loc13_ = _loc10_.vertices;
                  while(true)
                  {
                     if(_loc17_)
                     {
                        §§push(_loc13_);
                        §§push(_loc13_.§5G§);
                        if(!_loc16_)
                        {
                           §§push(§§pop() * _loc9_);
                        }
                        §§pop().offset = §§pop();
                        if(!_loc17_)
                        {
                           break;
                        }
                     }
                     §§push(_loc10_.§+R§);
                     §§push(_loc13_.offset);
                     if(_loc17_)
                     {
                        §§push(§§pop() + _loc10_.§+^§);
                     }
                     §§pop().offset = §§pop();
                     break;
                  }
                  _loc14_ = _loc10_.§+R§;
                  if(!_loc16_)
                  {
                     while(true)
                     {
                        §§push(param3);
                        if(_loc17_)
                        {
                           §§push(§§pop() * Number(Math.cos(_loc11_)));
                           if(!_loc17_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     _loc15_ = §§pop();
                     if(!_loc16_)
                     {
                        _loc14_.§@!Y§[_loc14_.offset] = _loc15_;
                     }
                  }
                  _loc13_ = _loc10_.vertices;
                  while(true)
                  {
                     if(_loc17_)
                     {
                        §§push(_loc13_);
                        §§push(_loc13_.§5G§);
                        if(_loc17_)
                        {
                           §§push(§§pop() * _loc9_);
                        }
                        §§pop().offset = §§pop();
                        if(!_loc17_)
                        {
                           break;
                        }
                     }
                     §§push(_loc10_.§+R§);
                     §§push(_loc13_.offset);
                     if(!_loc16_)
                     {
                        §§push(§§pop() + _loc10_.§+^§);
                     }
                     §§pop().offset = §§pop();
                     break;
                  }
                  _loc14_ = _loc10_.§+R§;
                  if(_loc17_)
                  {
                     §§push(param3);
                     if(_loc17_)
                     {
                        §§push(§§pop() * Number(Math.sin(_loc11_)));
                        if(!_loc16_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     _loc15_ = §§pop();
                     if(_loc16_)
                     {
                        continue loop0;
                     }
                     §§push(_loc14_.§@!Y§);
                     §§push(_loc14_.offset);
                     if(_loc17_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§pop()[§§pop()] = _loc15_;
                     if(_loc16_)
                     {
                        continue loop0;
                     }
                  }
                  _loc9_++;
                  continue loop0;
               }
               _loc8_ = §§pop();
               break loop6;
            }
         }
      }
   }
}

