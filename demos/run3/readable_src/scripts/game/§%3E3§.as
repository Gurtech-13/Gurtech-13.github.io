package game
{
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §,!G§.§>!&§;
   import §-!!§.§^!W§;
   import stage.§']§;
   import flash.Boot;
   
   public class §>3§
   {
      
      public static var §-6§:Boolean;
      
      public static var §0^§:§>!&§;
      
      public static var §0!<§:§>!&§;
      
      public static var §<!P§:int = 10;
      
      public var §"2§:Vector.<§>f§>;
      
      public var §<7§:Vector.<Function>;
      
      public var §23§:Vector.<int>;
      
      public var §6!#§:Vector.<Function>;
      
      public var §]>§:§>f§;
      
      public function §>3§()
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc5_:* = 0;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc1_:Vector.<§>f§> = new Vector.<§>f§>(0,false);
         if(!_loc11_)
         {
            §"2§ = _loc1_;
         }
         var _loc2_:Vector.<Function> = new Vector.<Function>(0,false);
         if(!_loc11_)
         {
            §<7§ = _loc2_;
         }
         var _loc3_:Vector.<int> = new Vector.<int>(2,true);
         if(_loc12_)
         {
            §23§ = _loc3_;
         }
         §§push(0);
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc11_)
         {
            loop0:
            while(_loc4_ < 2)
            {
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc12_)
                  {
                     _loc4_++;
                     if(!_loc12_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc5_ = §§pop();
               if(_loc12_)
               {
                  while(true)
                  {
                     §§push(Number(Math.random()));
                     if(_loc12_)
                     {
                        _loc6_ = §§pop() * 360;
                        if(_loc11_)
                        {
                           break;
                        }
                        §§push(§>3§.§0^§.§[!$§(Number(Math.random())));
                     }
                     _loc7_ = §§pop();
                     if(_loc12_)
                     {
                        §§push(§>3§.§0!<§.§[!$§(Number(Math.random())));
                        if(!_loc11_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc8_ = §§pop();
                        if(!_loc11_)
                        {
                           break;
                        }
                     }
                     continue loop0;
                  }
               }
               §§push(§23§);
               §§push(_loc5_);
               §§push(§^!W§.§^!X§(_loc6_,_loc7_,_loc8_));
               if(_loc12_)
               {
                  §§push(int(§§pop()));
               }
               §§pop()[§§pop()] = §§pop();
            }
         }
         var _loc9_:Vector.<Function> = new Vector.<Function>(0,false);
         if(!_loc11_)
         {
            §6!#§ = _loc9_;
         }
         var _loc10_:§>f§ = new §6!D§(§+!7§.§@!A§(),"editor/EraseIcon.png");
         if(_loc12_)
         {
            if(int(§"2§.length) >= §>3§.§<!P§)
            {
               if(!_loc11_)
               {
                  Boot.lastError = new Error();
                  if(!_loc12_)
                  {
                     §§goto(addr01bb);
                  }
               }
               throw "Too many swatches!";
            }
         }
         addr01bb:
         §"2§.push(_loc10_);
      }
      
      public function §%^§(param1:int, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc4_:* = null as Vector.<§>f§>;
         var _loc5_:* = null as §>f§;
         var _loc6_:* = null as Vector.<Function>;
         var _loc7_:* = null;
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  if(!_loc8_)
                  {
                     §§push(param1);
                     if(_loc8_)
                     {
                        break;
                     }
                     if(§§pop() >= 2)
                     {
                        break loop3;
                     }
                     if(!_loc9_)
                     {
                        break loop2;
                     }
                  }
                  §23§[param1] = param2;
                  if(!_loc8_)
                  {
                     break loop2;
                  }
                  §§goto(addr0067);
               }
               §§goto(addr0065);
            }
            return;
         }
         §§push(0);
         if(_loc9_)
         {
            addr0065:
            §§push(int(§§pop()));
         }
         _loc3_ = §§pop();
         addr0067:
         _loc4_ = §"2§;
         if(!_loc8_)
         {
            while(true)
            {
               §§push(_loc3_);
               if(_loc8_)
               {
                  break;
               }
               if(§§pop() < int(_loc4_.length))
               {
                  _loc5_ = _loc4_[_loc3_];
                  if(_loc9_)
                  {
                     _loc3_++;
                     if(_loc9_)
                     {
                        if(_loc5_.§1!2§ != param1)
                        {
                           continue;
                        }
                        if(_loc8_)
                        {
                           continue;
                        }
                     }
                     _loc5_.§"c§();
                  }
                  continue;
               }
               if(_loc9_)
               {
                  §§push(0);
                  if(!_loc8_)
                  {
                     break;
                  }
                  addr00dd:
                  _loc3_ = §§pop();
               }
            }
            §§goto(addr00dd);
            §§push(int(§§pop()));
         }
         _loc6_ = §6!#§;
         if(_loc9_)
         {
            while(true)
            {
               if(_loc3_ >= int(_loc6_.length))
               {
                  break loop3;
               }
               §§push(_loc6_[_loc3_]);
               if(!_loc8_)
               {
                  §§push(§§pop());
               }
               _loc7_ = §§pop();
               if(!_loc8_)
               {
                  _loc3_++;
                  if(_loc9_)
                  {
                     _loc7_(param1,param2);
                  }
               }
            }
         }
         break loop3;
      }
      
      public function §[m§(param1:int) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as §>f§;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§>f§> = §"2§;
         if(_loc6_)
         {
            loop0:
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               while(true)
               {
                  if(_loc6_)
                  {
                     _loc2_++;
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  if(_loc4_.§1!2§ == param1)
                  {
                     break;
                  }
                  continue loop0;
               }
               return true;
            }
         }
         return false;
      }
   }
}

