package §-d§
{
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §2!"§.Spritesheet;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§9t§;
   
   public class §9=§ extends §!!-§
   {
      
      public var §>A§:Vector.<§!!-§>;
      
      public function §9=§(param1:Vector.<§!!-§>, param2:Object = undefined)
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc6_:* = 0;
         if(!_loc8_)
         {
            while(true)
            {
               if(param2 == null)
               {
                  if(_loc8_)
                  {
                     break;
                  }
                  param2 = false;
               }
               §>A§ = param1;
               if(!_loc8_)
               {
                  start = param1[0].start;
               }
               break;
            }
         }
         §§push(param1[0].length);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(1);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(int(param1.length));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc7_)
            {
               loop0:
               while(_loc4_ < _loc5_)
               {
                  loop3:
                  while(true)
                  {
                     §§push(_loc4_++);
                     if(!_loc8_)
                     {
                        §§push(int(§§pop()));
                        if(_loc8_)
                        {
                           break;
                        }
                     }
                     _loc6_ = §§pop();
                     loop4:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc8_)
                           {
                              §§push(param1[_loc6_].start);
                              if(_loc8_)
                              {
                                 break;
                              }
                              §§push(start);
                              if(!_loc7_)
                              {
                                 break loop4;
                              }
                              if(§§pop() < §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    start = param1[_loc6_].start;
                                    if(!_loc7_)
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           §§push(_loc3_);
                           if(!_loc8_)
                           {
                              break loop3;
                           }
                           break;
                        }
                        _loc3_ = §§pop();
                        continue loop0;
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc7_)
                     {
                        §§push(int(§§pop()));
                     }
                     break loop5;
                  }
                  §§push(param1[_loc6_].length);
                  break loop4;
               }
               if(!_loc7_)
               {
                  break;
               }
            }
            super(start,_loc3_,param2);
            break;
         }
      }
      
      override public function §#!3§(param1:Boolean) : Boolean
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:* = null as §!!-§;
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§!!-§> = §>A§;
         if(!_loc6_)
         {
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               if(!_loc6_)
               {
                  _loc2_++;
                  if(!_loc6_)
                  {
                     _loc4_.§#!3§(param1);
                  }
               }
            }
         }
         §§push(§§findproperty(§@!X§));
         §§push(param1);
         if(!_loc6_)
         {
            §§push(Boolean(§§pop()));
         }
         return §§pop().§@!X§ = §§pop();
      }
      
      override public function §-!P§(param1:Spritesheet, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = null as §!!-§;
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Vector.<§!!-§> = §>A§;
         if(_loc7_)
         {
            loop0:
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               loop1:
               while(true)
               {
                  if(_loc7_)
                  {
                     _loc3_++;
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  while(true)
                  {
                     §§push(param2);
                     if(!_loc6_)
                     {
                        §§push(_loc5_.length);
                        if(_loc7_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc7_)
                              {
                                 break loop1;
                              }
                              §§goto(addr00a3);
                           }
                           §§push(param2);
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§push(_loc5_.length);
                        }
                        §§push(§§pop() - §§pop());
                        if(_loc6_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  param2 = §§pop();
                  continue loop0;
               }
               _loc5_.§-!P§(param1,param2);
               if(!_loc6_)
               {
                  addr00a3:
                  return;
               }
            }
         }
      }
      
      override public function clone() : §!!-§
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = null as §!!-§;
         var _loc1_:Vector.<§!!-§> = new Vector.<§!!-§>(0,false);
         var _loc2_:Vector.<§!!-§> = _loc1_;
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Vector.<§!!-§> = §>A§;
         if(_loc7_)
         {
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               if(!_loc6_)
               {
                  _loc3_++;
                  if(!_loc7_)
                  {
                     continue;
                  }
               }
               _loc2_.push(_loc5_.clone());
            }
         }
         return new §9=§(_loc2_,§@!X§);
      }
   }
}

