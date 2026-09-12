package nme3D.model
{
   import §3!b§.Cutscenes;
   import §3!b§.ItsJustYou;
   import §3!b§.LeaveItHere;
   import §3F§.§4!V§;
   import §>T§.§!=§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import nme3D.Context3DUtils;
   
   public class §6U§
   {
      
      public var §9!B§:Function;
      
      public var §5V§:Vector.<§'h§>;
      
      public function §6U§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §5V§ = new Vector.<§'h§>();
         }
      }
      
      public function update(param1:Number, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = null as §'h§;
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Vector.<§'h§> = §5V§;
         if(!_loc6_)
         {
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               if(_loc7_)
               {
                  _loc3_++;
                  if(_loc7_)
                  {
                     _loc5_.update(param1,param2);
                  }
               }
            }
         }
      }
      
      public function §%!B§(param1:§4!V§, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc4_:* = null as Vector.<§'h§>;
         var _loc5_:* = null as §'h§;
         var _loc6_:* = 0;
         var _loc7_:* = null as Vector.<Model>;
         var _loc8_:* = null as Model;
         loop3:
         while(true)
         {
            while(true)
            {
               if(_loc10_)
               {
                  §§push(§9!B§);
                  if(_loc10_)
                  {
                     §§push(§§pop());
                  }
                  if(§§pop() == null)
                  {
                     break;
                  }
                  if(!_loc10_)
                  {
                     break loop3;
                  }
               }
               while(true)
               {
                  §§push(0);
                  if(_loc10_)
                  {
                     §§push(int(§§pop()));
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  _loc3_ = §§pop();
                  if(!_loc9_)
                  {
                     break loop3;
                  }
                  addr0178:
                  §§push(0);
                  if(_loc10_)
                  {
                     break;
                  }
                  §§goto(addr0181);
               }
               addr0181:
               _loc3_ = §§pop();
               §§goto(addr0182);
            }
            §+!C§();
            if(!_loc9_)
            {
               §§goto(addr0178);
            }
            addr0182:
            _loc4_ = §5V§;
            loop7:
            while(true)
            {
               if(_loc10_)
               {
                  while(_loc3_ < int(_loc4_.length))
                  {
                     _loc5_ = _loc4_[_loc3_];
                     if(_loc10_)
                     {
                        _loc3_++;
                        if(!_loc10_)
                        {
                           break;
                        }
                        _loc5_.§%!B§(param1,param2);
                        if(!_loc10_)
                        {
                           break;
                        }
                     }
                     if(Context3DUtils.§7?§)
                     {
                        if(_loc10_)
                        {
                           break;
                        }
                        break loop7;
                     }
                  }
               }
               §3w§();
               break;
            }
            return;
         }
         _loc4_ = §5V§;
         if(_loc10_)
         {
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               while(true)
               {
                  if(_loc10_)
                  {
                     _loc3_++;
                     if(!_loc10_)
                     {
                        break;
                     }
                  }
                  §§push(_loc5_.§@8§);
                  §§push(§9!B§);
                  if(_loc10_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().sort(§§pop());
                  if(!_loc9_)
                  {
                     _loc5_.§#L§ = 0;
                     if(_loc10_)
                     {
                        §§push(0);
                        if(_loc10_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc6_ = §§pop();
                     }
                  }
                  break;
               }
               _loc7_ = _loc5_.§@8§;
               if(!_loc9_)
               {
                  while(_loc6_ < int(_loc7_.length))
                  {
                     _loc8_ = _loc7_[_loc6_];
                     if(_loc10_)
                     {
                        _loc6_++;
                        if(!_loc9_)
                        {
                           _loc8_.§3V§ = _loc5_.§#L§;
                           if(_loc9_)
                           {
                              continue;
                           }
                           §§push(_loc5_);
                           §§push(_loc5_.§#L§);
                           if(_loc10_)
                           {
                              §§push(§§pop() + int(_loc8_.indices.length));
                           }
                           §§pop().§#L§ = §§pop();
                           if(_loc9_)
                           {
                              continue;
                           }
                        }
                     }
                     _loc8_.§-!;§(true);
                  }
               }
            }
            if(!_loc10_)
            {
               break loop4;
            }
         }
         §9!B§ = null;
         break loop4;
      }
      
      public function §4w§(param1:Model) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:§'h§ = §;=§(param1);
         if(!_loc3_)
         {
            if(_loc2_ != null)
            {
               loop0:
               while(true)
               {
                  while(true)
                  {
                     if(_loc4_)
                     {
                        _loc2_.§4w§(param1);
                        if(_loc3_)
                        {
                           break;
                        }
                        if(int(_loc2_.§@8§.length) != 0)
                        {
                           break loop0;
                        }
                        if(_loc3_)
                        {
                           break loop0;
                        }
                     }
                     _loc2_.dispose();
                     if(_loc4_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  §5V§.splice(int(§5V§.indexOf(_loc2_)),1);
                  break;
               }
            }
         }
         break loop0;
      }
      
      public function §+!C§() : void
      {
      }
      
      public function §3w§() : void
      {
      }
      
      public function §#t§(param1:Model) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as §'h§;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§'h§> = §5V§;
         if(_loc6_)
         {
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               if(!_loc5_)
               {
                  _loc2_++;
                  if(!_loc5_)
                  {
                     if(int(_loc4_.§@8§.indexOf(param1,0)) < 0)
                     {
                        continue;
                     }
                  }
               }
               return true;
            }
         }
         return false;
      }
      
      public function §;=§(param1:Model) : §'h§
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null as §'h§;
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§'h§> = §5V§;
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
                     if(int(_loc4_.§@8§.indexOf(param1,0)) < 0)
                     {
                        continue;
                     }
                  }
               }
               return _loc4_;
            }
         }
         return null;
      }
      
      public function dispose() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as §'h§;
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§'h§> = §5V§;
         if(_loc4_)
         {
            while(_loc1_ < int(_loc2_.length))
            {
               _loc3_ = _loc2_[_loc1_];
               if(!_loc5_)
               {
                  _loc1_++;
                  if(!_loc4_)
                  {
                     continue;
                  }
               }
               _loc3_.dispose();
            }
            if(!_loc5_)
            {
               §5V§.length = 0;
            }
         }
      }
      
      public function §&!2§(param1:Model) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as §'h§;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§'h§> = §5V§;
         if(_loc6_)
         {
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               if(_loc6_)
               {
                  _loc2_++;
                  if(_loc6_)
                  {
                     §§push(_loc4_.§&!2§(param1));
                     if(_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        continue;
                     }
                  }
               }
               return;
            }
         }
         _loc4_ = new §'h§(param1.§1Z§,this);
         while(true)
         {
            if(_loc6_)
            {
               _loc4_.§&!2§(param1);
               if(!_loc6_)
               {
                  break;
               }
            }
            §5V§.push(_loc4_);
            break;
         }
      }
   }
}

