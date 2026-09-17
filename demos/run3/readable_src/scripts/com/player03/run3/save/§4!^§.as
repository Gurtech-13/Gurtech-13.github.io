package com.player03.run3.save
{
   import com.player03.run3.Save;
   import com.player03.run3.api.PlayFabAPI;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   
   public class §4!^§
   {
      
      public static var §-6§:Boolean;
      
      public static var §&!#§:Vector.<§4!^§>;
      
      public var §8!`§:Vector.<Object>;
      
      public var §=-§:String;
      
      public var §^!7§:§=!U§;
      
      public var §+!3§:Vector.<§-Q§>;
      
      public function §4!^§(param1:String, param2:Vector.<§-Q§> = undefined)
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc5_:* = 0;
         var _loc6_:* = null as §-Q§;
         if(_loc8_)
         {
            §=-§ = param1;
         }
         var _loc3_:Vector.<§-Q§> = new Vector.<§-Q§>(0,false);
         while(true)
         {
            if(!_loc7_)
            {
               §+!3§ = _loc3_;
               if(_loc7_)
               {
                  break;
               }
            }
            §^!7§ = new StringMap();
            break;
         }
         var _loc4_:Vector.<Object> = new Vector.<Object>(0,false);
         if(_loc8_)
         {
            §8!`§ = _loc4_;
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     if(_loc8_)
                     {
                        if(param2 == null)
                        {
                           break loop3;
                        }
                        if(!_loc8_)
                        {
                           break loop4;
                        }
                        while(true)
                        {
                           §§push(0);
                           if(!_loc7_)
                           {
                              §§push(int(§§pop()));
                              if(_loc7_)
                              {
                                 break;
                              }
                           }
                           _loc5_ = §§pop();
                           if(!_loc8_)
                           {
                              break loop3;
                           }
                        }
                        while(true)
                        {
                           if(§§pop() >= int(param2.length))
                           {
                              break loop5;
                           }
                           _loc6_ = param2[_loc5_];
                           if(_loc8_)
                           {
                              _loc5_++;
                              if(!_loc8_)
                              {
                                 continue;
                              }
                           }
                           §4Z§(_loc6_);
                        }
                        break;
                        addr00ec:
                     }
                     while(true)
                     {
                        §§goto(addr00ec);
                     }
                  }
                  if(!_loc7_)
                  {
                     break loop3;
                  }
                  break;
               }
            }
            §4!^§.§&!#§.push(this);
         }
         break loop4;
      }
      
      public function §;r§(param1:*) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:* = null as Vector.<§-Q§>;
         var _loc4_:* = null as §-Q§;
         var _loc7_:* = null as String;
         var _loc8_:* = null;
         var _loc9_:* = null as StringMap;
         if(!_loc10_)
         {
            if(param1.overwrite != true)
            {
               §§push(false);
               if(_loc11_)
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!_loc10_)
               {
                  §§push(0);
                  if(_loc11_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc2_ = §§pop();
               }
               _loc3_ = §+!3§;
               loop3:
               while(true)
               {
                  if(!_loc10_)
                  {
                     loop0:
                     while(_loc2_ < int(_loc3_.length))
                     {
                        _loc4_ = _loc3_[_loc2_];
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc10_)
                              {
                                 _loc2_++;
                                 if(!_loc11_)
                                 {
                                    break loop3;
                                 }
                                 §§push(Reflect.hasField(param1,_loc4_.§=-§));
                                 if(_loc10_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(_loc10_)
                                 {
                                    break loop4;
                                 }
                                 §§push(!§§pop());
                                 if(!_loc11_)
                                 {
                                    break loop4;
                                 }
                                 if(!§§pop())
                                 {
                                    continue loop0;
                                 }
                                 if(!_loc11_)
                                 {
                                    break loop0;
                                 }
                              }
                              §§push(true);
                              if(_loc11_)
                              {
                                 break;
                              }
                              break loop4;
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                        _loc5_ = §§pop();
                        if(_loc11_)
                        {
                           break;
                        }
                        break loop3;
                     }
                  }
                  §§push(0);
                  if(_loc11_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc2_ = §§pop();
                  break;
               }
               while(true)
               {
                  §§push(Reflect.fields(param1));
                  if(_loc11_)
                  {
                     §§push(§§pop());
                     if(!_loc11_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop());
                  break;
               }
               var _loc6_:* = §§pop();
               loop7:
               while(true)
               {
                  if(_loc11_)
                  {
                     while(true)
                     {
                        if(_loc2_ >= int(_loc6_.length))
                        {
                           if(!_loc10_)
                           {
                              break;
                           }
                           break loop7;
                        }
                        §§push(_loc6_[_loc2_]);
                        if(_loc11_)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        if(!_loc11_)
                        {
                           break;
                        }
                        _loc2_++;
                        if(!_loc11_)
                        {
                           §§goto(addr0285);
                        }
                        _loc8_ = Reflect.field(param1,_loc7_);
                        if(!_loc10_)
                        {
                           if(_loc8_ != null)
                           {
                              _loc9_ = §^!7§;
                              while(true)
                              {
                                 if(_loc11_)
                                 {
                                    if(!(_loc7_ in StringMap.§+!#§))
                                    {
                                       §§push(_loc9_.h[_loc7_]);
                                       break;
                                    }
                                 }
                                 §§push(_loc9_.getReserved(_loc7_));
                                 break;
                              }
                              _loc4_ = §§pop();
                              if(_loc4_ != null)
                              {
                                 _loc4_.§;r§(_loc8_);
                                 if(Save.§@!A§().get(_loc4_.§=-§,_loc4_.§ -§) == _loc8_)
                                 {
                                    continue;
                                 }
                                 §§push(true);
                                 if(_loc11_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 _loc5_ = §§pop();
                                 if(!_loc10_)
                                 {
                                    continue;
                                 }
                              }
                              else if(_loc7_ == "buildNumber")
                              {
                                 continue;
                              }
                              §8!`§.push({
                                 "id":_loc7_,
                                 "value":_loc8_
                              });
                           }
                        }
                     }
                  }
                  if(_loc5_)
                  {
                     if(!_loc10_)
                     {
                        break;
                     }
                  }
                  §§goto(addr0285);
               }
               PlayFabAPI.§@!A§().§2B§(this);
               addr0285:
               return;
            }
            if(!_loc10_)
            {
               §§push(0);
               if(!_loc10_)
               {
                  §§push(int(§§pop()));
               }
               _loc2_ = §§pop();
            }
         }
         _loc3_ = §+!3§;
         if(_loc11_)
         {
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               if(!_loc10_)
               {
                  _loc2_++;
                  if(!_loc10_)
                  {
                     _loc4_.§?F§(Reflect.field(param1,_loc4_.§=-§));
                  }
               }
            }
         }
      }
      
      public function §9!_§() : String
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc6_:* = null as §-Q§;
         var _loc8_:* = null;
         var _loc1_:§9t§ = Save.lastBuildNumber;
         var _loc2_:* = {"buildNumber":int(Save.§@!A§().get(_loc1_.§=-§,int(_loc1_.§ -§)))};
         §§push(0);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:Vector.<§-Q§> = §+!3§;
         if(_loc10_)
         {
            while(true)
            {
               §§push(_loc4_);
               if(_loc9_)
               {
                  break;
               }
               if(§§pop() < int(_loc5_.length))
               {
                  _loc6_ = _loc5_[_loc4_];
                  if(!_loc9_)
                  {
                     _loc4_++;
                     if(!_loc10_)
                     {
                        continue;
                     }
                  }
                  §§push(Save.§@!A§().exists(_loc6_.§=-§));
                  if(!_loc9_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        _loc2_[_loc6_.§=-§] = Save.§@!A§().get(_loc6_.§=-§,_loc6_.§ -§);
                        if(_loc9_)
                        {
                           continue;
                        }
                     }
                     _loc3_++;
                  }
                  continue;
               }
               if(!_loc9_)
               {
                  §§push(0);
                  if(_loc10_)
                  {
                     break;
                  }
                  addr00fe:
                  _loc4_ = §§pop();
               }
            }
            §§goto(addr00fe);
            §§push(int(§§pop()));
         }
         var _loc7_:Vector.<Object> = §8!`§;
         if(!_loc9_)
         {
            while(true)
            {
               §§push(_loc4_);
               if(_loc9_)
               {
                  break;
               }
               §§push(int(_loc7_.length));
               if(!_loc9_)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§goto(addr017b);
                  }
                  _loc8_ = _loc7_[_loc4_];
                  if(_loc10_)
                  {
                     _loc4_++;
                     if(!_loc10_)
                     {
                        continue;
                     }
                  }
                  _loc2_[_loc8_.id] = _loc8_.value;
                  if(!_loc9_)
                  {
                     _loc3_++;
                  }
                  continue;
               }
               if(§§pop() != §§pop())
               {
                  §§push(§2!,§.§^P§(JSON.stringify(_loc2_),§=-§));
                  if(!_loc9_)
                  {
                     return §§pop();
                  }
               }
            }
            §§goto(addr0177);
            §§push(0);
         }
         addr017b:
         if(!_loc9_)
         {
            §§push(_loc3_);
            break loop1;
         }
         return "";
      }
      
      public function §4Z§(param1:§-Q§) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = null as String;
         var _loc3_:* = null as StringMap;
         loop0:
         while(true)
         {
            if(_loc5_)
            {
               if(param1 == null)
               {
                  break;
               }
               while(true)
               {
                  if(!_loc4_)
                  {
                     §§push(param1.§9m§);
                     if(_loc5_)
                     {
                        §§push(§§pop());
                     }
                     if(§§pop() == null)
                     {
                        break loop0;
                     }
                     if(!_loc5_)
                     {
                        break;
                     }
                     §+!3§.push(param1);
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  §§push(param1.§=-§);
                  if(_loc5_)
                  {
                     §§push(§§pop());
                  }
                  _loc2_ = §§pop();
                  break;
               }
            }
            _loc3_ = §^!7§;
            loop2:
            while(true)
            {
               while(true)
               {
                  if(!_loc4_)
                  {
                     if(!(_loc2_ in StringMap.§+!#§))
                     {
                        _loc3_.h[_loc2_] = param1;
                        if(_loc5_)
                        {
                           break;
                        }
                        break loop2;
                     }
                     if(!_loc5_)
                     {
                        break loop0;
                     }
                  }
                  _loc3_.setReserved(_loc2_,param1);
                  if(!_loc4_)
                  {
                     break;
                  }
                  break loop2;
               }
               if(param1.§;!U§ == null)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               break loop0;
            }
            param1.§;!U§ = this;
            break;
         }
      }
   }
}

