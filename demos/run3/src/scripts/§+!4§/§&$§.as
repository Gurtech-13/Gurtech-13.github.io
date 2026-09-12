package §+!4§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §7!R§.§'A§;
   import §7!R§.§5!A§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import haxe.ds.StringMap;
   import nme3D.model.§;!a§;
   
   public class §&$§ extends §3!O§
   {
      
      public function §&$§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function §&h§() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as §5!§;
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§5!§> = §=c§;
         if(_loc5_)
         {
            while(_loc1_ < int(_loc2_.length))
            {
               _loc3_ = _loc2_[_loc1_];
               if(_loc5_)
               {
                  _loc1_++;
                  if(_loc5_)
                  {
                     _loc3_.§&h§();
                  }
               }
            }
         }
      }
      
      override public function §9;§() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as §5!§;
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§5!§> = §=c§;
         if(!_loc5_)
         {
            while(_loc1_ < int(_loc2_.length))
            {
               _loc3_ = _loc2_[_loc1_];
               if(!_loc5_)
               {
                  _loc1_++;
                  if(!_loc5_)
                  {
                     _loc3_.§9;§();
                  }
               }
            }
         }
      }
      
      override public function §0!4§() : §5!§
      {
         return new §+>§();
      }
      
      public function §!<§(param1:String, param2:§'A§, param3:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc4_:* = null as §5!§;
         var _loc5_:* = null as Vector.<§5!§>;
         var _loc6_:* = 0;
         var _loc7_:* = null as Vector.<§5!§>;
         var _loc10_:* = null as §5!A§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc12_)
               {
                  if(param3 != null)
                  {
                     break;
                  }
                  if(_loc11_)
                  {
                     break loop0;
                  }
               }
               §§push(true);
               if(_loc12_)
               {
                  param3 = §§pop();
                  break;
               }
               addr006c:
               if(§§pop())
               {
                  break loop0;
               }
               §§goto(addr0127);
            }
            §§push(§7x§.exists(param1));
            if(_loc12_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc11_)
               {
                  §§push(!§§pop());
               }
            }
            §§goto(addr006c);
         }
         _loc4_ = §0!4§();
         loop2:
         while(true)
         {
            if(_loc12_)
            {
               §§push(§7x§.exists(param1));
               if(_loc12_)
               {
                  §§push(Boolean(§§pop()));
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc11_)
                     {
                        break;
                     }
                     _loc5_ = §=c§;
                     while(true)
                     {
                        if(_loc12_)
                        {
                           while(true)
                           {
                              §§push(int(_loc5_.indexOf(§7x§.get(param1),0)));
                              if(_loc12_)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                              }
                              _loc6_ = §§pop();
                              if(_loc12_)
                              {
                                 §§push(_loc6_);
                                 break;
                              }
                           }
                           if(§§pop() == -1)
                           {
                              break;
                           }
                        }
                        _loc7_ = _loc5_.splice(_loc6_,1);
                        break;
                     }
                  }
                  §7x§.§1!R§(param1,_loc4_);
                  if(!_loc11_)
                  {
                     break;
                  }
                  break loop2;
               }
            }
            §=c§.push(_loc4_);
            break;
         }
         addr0127:
         var _loc8_:StringMap = §7x§;
         while(true)
         {
            if(!_loc11_)
            {
               if(!(param1 in StringMap.§+!#§))
               {
                  §§push(_loc8_.h[param1]);
                  break;
               }
            }
            §§push(_loc8_.getReserved(param1));
            break;
         }
         var _loc9_:§+>§ = §§pop();
         if(_loc12_)
         {
            while(true)
            {
               if(_loc9_.§&!$§ == null)
               {
                  if(_loc12_)
                  {
                     _loc9_.§&!$§ = param2;
                     if(_loc11_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     addr01a3:
                     _loc9_.§&!$§.§'9§(param2);
                     if(_loc11_)
                     {
                        break;
                     }
                  }
               }
               else if(_loc9_.§&!$§ is §5!A§)
               {
                  if(!_loc11_)
                  {
                     §§goto(addr01a3);
                  }
               }
               else
               {
                  _loc10_ = new §5!A§();
                  if(!_loc11_)
                  {
                     _loc10_.§'9§(_loc9_.§&!$§);
                     if(_loc12_)
                     {
                        _loc10_.§'9§(param2);
                        if(!_loc11_)
                        {
                           _loc9_.§&!$§ = _loc10_;
                        }
                     }
                  }
               }
               _loc9_.§@d§ = param3;
               break;
            }
         }
      }
   }
}

