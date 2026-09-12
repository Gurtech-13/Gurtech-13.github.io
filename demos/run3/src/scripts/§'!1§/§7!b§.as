package §'!1§
{
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §3!b§.§+Z§;
   import §`_§.§']§;
   
   public class §7!b§
   {
      
      public var §4+§:Vector.<§ E§>;
      
      public var cutscene:§+Z§;
      
      public function §7!b§(param1:Vector.<§ E§>, param2:§+Z§)
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:* = null as §3!I§;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         if(_loc7_)
         {
            §4+§ = param1;
            if(_loc7_)
            {
               cutscene = param2;
            }
         }
         while(true)
         {
            §§push(§=B§);
            §§push(int(param1.length));
            if(!_loc8_)
            {
               §§push(1);
               if(_loc8_)
               {
                  break;
               }
               §§push(§§pop() - §§pop());
            }
            §§push(-1);
            break;
         }
         var _loc3_:§3!I§ = §§pop().§@W§(§§pop(),§§pop(),-1);
         if(!_loc8_)
         {
            while(_loc3_.§#1§ != _loc3_.end)
            {
               _loc4_ = _loc3_;
               if(_loc7_)
               {
                  §§push(_loc4_);
                  §§push(_loc4_.§#1§);
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(_loc3_.§['§);
                        if(!_loc8_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc8_)
                           {
                              §§push(int(§§pop()));
                              if(_loc8_)
                              {
                                 break;
                              }
                           }
                           var _temp_1:* = §§pop();
                           §§push(_temp_1);
                           §§push(_temp_1);
                        }
                        _loc6_ = §§pop();
                        break;
                     }
                  }
                  §§pop().§#1§ = §§pop();
                  if(!_loc7_)
                  {
                     continue;
                  }
                  §§push(_loc6_);
                  if(!_loc8_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc5_ = §§pop();
                  if(_loc8_)
                  {
                     continue;
                  }
               }
               param1[_loc5_].init(param2.§9_§);
            }
         }
      }
      
      public function move(param1:int, param2:§']§ = undefined) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            §4+§[param1].§,s§(param2);
         }
      }
      
      public function §"!U§(param1:int, param2:§']§) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            param2.§[B§(§4+§[param1].tile);
         }
      }
   }
}

