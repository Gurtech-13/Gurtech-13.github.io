package com.player03.run3.level
{
   import §=w§.§,D§;
   
   public class §!!Q§ implements §,D§
   {
      
      public static var init__:Boolean;
      
      public static var §<$§:§!!Q§;
      
      public static var §8V§:§!!Q§;
      
      public static var §,c§:§!!Q§;
      
      public static var smooth:§!!Q§;
      
      public static var slowSmooth:§!!Q§;
      
      public static var falseAlarm:§!!Q§;
      
      public static var notSoFalseAlarm:§!!Q§;
      
      public static var glimpse:§!!Q§;
      
      public var §^8§:Array;
      
      public var percent:Number;
      
      public var §+N§:Boolean;
      
      public var § Q§:Number;
      
      public var §1!$§:int;
      
      public function §!!Q§(param1:Array, param2:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(_loc4_)
            {
               § Q§ = 0;
               while(true)
               {
                  if(!_loc3_)
                  {
                     §1!$§ = 0;
                     if(_loc3_)
                     {
                        break;
                     }
                     percent = 1;
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                  }
                  §^8§ = param1;
                  if(!_loc3_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            §+N§ = param2;
            break;
         }
      }
      
      public static function §7I§(param1:String) : §!!Q§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(§§pop() == "fast")
                  {
                     if(!_loc2_)
                     {
                        return §!!Q§.§<$§;
                     }
                  }
                  else
                  {
                     if(param1 == "slow")
                     {
                        return §!!Q§.§,c§;
                     }
                     §§push(param1);
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(§§pop() != "smooth")
                     {
                        addr0067:
                        if(param1 == "slowSmooth")
                        {
                           if(_loc3_)
                           {
                              return §!!Q§.slowSmooth;
                           }
                           break loop0;
                        }
                        §§push(param1);
                        break;
                     }
                     if(_loc2_)
                     {
                        break loop0;
                     }
                  }
                  return §!!Q§.smooth;
               }
               §§goto(addr0067);
            }
            if(§§pop() == "falseAlarm")
            {
               if(!_loc2_)
               {
                  break;
               }
            }
            else
            {
               §§push(param1);
               §§push("notSoFalseAlarm");
               if(!_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     return §!!Q§.notSoFalseAlarm;
                  }
                  §§push(param1);
                  §§push("glimpse");
               }
               if(§§pop() != §§pop())
               {
                  return null;
               }
            }
            return §!!Q§.glimpse;
         }
         return §!!Q§.falseAlarm;
      }
      
      public static function §1z§(param1:String) : §!!Q§
      {
         var _loc3_:* = null;
         try
         {
            return new §!!Q§(JSON.parse(param1));
         }
         catch(_loc_e_:*)
         {
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         while(true)
         {
            if(_loc5_)
            {
               if(§1!$§ >= int(§^8§.length))
               {
                  break;
               }
            }
            _loc2_ = §^8§[§1!$§];
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  if(_loc5_)
                  {
                     §§push(§§findproperty(§ Q§));
                     §§push(§ Q§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + param1);
                        if(_loc5_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§pop().§ Q§ = §§pop();
                     loop0:
                     while(true)
                     {
                        §§push(§ Q§);
                        if(_loc4_)
                        {
                           break loop3;
                        }
                        §§push(Number(_loc2_.length));
                        if(!_loc5_)
                        {
                           break loop2;
                        }
                        if(§§pop() > §§pop())
                        {
                           §§push(§§findproperty(§ Q§));
                           §§push(§ Q§);
                           if(_loc5_)
                           {
                              §§push(§§pop() - Number(_loc2_.length));
                           }
                           §§pop().§ Q§ = §§pop();
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 §§push(§§findproperty(§1!$§));
                                 §§push(§1!$§);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 §§pop().§1!$§ = §§pop();
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                              }
                              if(§1!$§ >= int(§^8§.length))
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr00fc);
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              §§push(§§findproperty(percent));
                              if(!_loc4_)
                              {
                                 if(!§+N§)
                                 {
                                    §§push(1);
                                    break;
                                 }
                              }
                              §§push(0);
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§push(Number(§§pop()));
                              if(_loc5_)
                              {
                              }
                              §§pop().percent = §§pop();
                              addr00fc:
                              return;
                           }
                           §§goto(addr00f9);
                        }
                        _loc2_ = §^8§[§1!$§];
                     }
                  }
                  §§push(Number(_loc2_.startPercent));
                  if(!_loc4_)
                  {
                     §§push(Number(_loc2_.endPercent));
                     break loop2;
                  }
                  break;
               }
               §§goto(addr0164);
            }
            if(§§pop() == §§pop())
            {
               if(!_loc4_)
               {
                  percent = Number(_loc2_.startPercent);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            else
            {
               §§push(Number(_loc2_.startPercent));
               if(_loc5_)
               {
                  break loop3;
               }
               addr0164:
               _loc3_ = §§pop();
            }
            §§push(§§findproperty(percent));
            §§push(_loc3_);
            if(_loc5_)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(§ Q§);
                     if(_loc5_)
                     {
                        §§push(Number(_loc2_.length));
                        if(_loc4_)
                        {
                           break;
                        }
                        §§push(§§pop() / §§pop());
                        if(_loc4_)
                        {
                           break loop4;
                        }
                     }
                     §§push(Number(_loc2_.endPercent));
                     if(_loc5_)
                     {
                        break;
                     }
                     addr01ab:
                     §§push(§§pop() * §§pop());
                     break loop4;
                  }
                  §§goto(addr01ab);
               }
               §§push(§§pop() + §§pop());
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().percent = §§pop();
            break;
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               §1!$§ = 0;
               if(!_loc2_)
               {
                  break;
               }
            }
            § Q§ = 0;
            if(_loc2_)
            {
               break;
            }
            §§goto(addr0056);
         }
         percent = Number(§^8§[0].startPercent);
         addr0056:
      }
      
      public function §=!V§() : Boolean
      {
         return §1!$§ >= int(§^8§.length);
      }
   }
}

