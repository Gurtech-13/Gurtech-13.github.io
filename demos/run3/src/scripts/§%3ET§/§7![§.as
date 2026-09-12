package §>T§
{
   import §"!M§.§3u§;
   import §"!M§.§5r§;
   import §"!M§.§?!a§;
   import §%!Q§.§+#§;
   import flash.Boot;
   
   public class §7![§ extends §3u§
   {
      
      public var §[v§:§5r§;
      
      public function §7![§(param1:§[C§)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = null;
         while(true)
         {
            if(_loc7_)
            {
               if(param1.§4!5§ != §-n§.§'!%§)
               {
                  if(_loc7_)
                  {
                     addr0038:
                     Boot.lastError = new Error();
                     if(!_loc6_)
                     {
                        while(true)
                        {
                           §§push("Wrong shape: ");
                           if(!_loc6_)
                           {
                              §§push(Type.§8!G§(param1.§4!5§));
                              if(!_loc6_)
                              {
                                 §§push(§§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc7_)
                              {
                                 break;
                              }
                           }
                           throw §§pop();
                        }
                        throw §§pop();
                     }
                     break;
                  }
               }
               super(param1);
               break;
            }
            §§goto(addr0038);
         }
         var _loc2_:§+#§ = §+#§.§>! §(param1.§@p§.identifier);
         var _loc3_:Vector.<int> = §@o§.§,3§(_loc2_,param1.§@p§.identifier);
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc6_)
            {
               while(true)
               {
                  §§push(_loc4_);
                  §§push(_loc3_.length);
                  if(!_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
                  if(§§pop() >= §§pop())
                  {
                     break;
                  }
                  §§push(_loc3_[_loc4_]);
                  if(!_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc5_ = §§pop();
                  if(!_loc6_)
                  {
                     _loc4_++;
                     if(!_loc6_)
                     {
                        §,g§(new §?!a§(param1,_loc5_));
                     }
                  }
               }
               if(!_loc7_)
               {
                  break;
               }
            }
            §[v§ = new §5r§(param1);
            if(!_loc6_)
            {
               break;
            }
            §§goto(addr013c);
         }
         §,g§(§[v§);
         addr013c:
      }
      
      override public function §2y§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            super.§2y§(param1,param2,param3);
            if(!_loc5_)
            {
               §8W§.§ !H§(75);
            }
         }
      }
   }
}

