package com.player03.run3.api
{
   import §%!Q§.§>K§;
   import §-!!§.§2!B§;
   import §0!P§.§;n§;
   import §0!P§.§`!I§;
   import §4n§.Achievement;
   import §`!7§.§`!3§;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§2N§;
   import com.player03.run3.level.§>W§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§]k§;
   import flash.display.BitmapData;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Point3D;
   import unitsystem.§7o§;
   
   public class GlobalEventManager
   {
      
      public static var init__:Boolean;
      
      public static var §^!$§:§=!U§;
      
      public static var §!J§:String;
      
      public function GlobalEventManager()
      {
      }
      
      public static function dispatchEvent(param1:String) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:* = 0;
         var _loc5_:* = null as §;n§;
         var _loc6_:* = 0;
         var _loc7_:* = null as §`!I§;
         if(!_loc9_)
         {
            § L§.mid = 628353;
            if(_loc8_)
            {
               GlobalEventManager.§!J§ = param1;
            }
         }
         var _loc2_:StringMap = GlobalEventManager.§^!$§;
         while(true)
         {
            if(!_loc9_)
            {
               if(!(param1 in StringMap.§+!#§))
               {
                  §§push(_loc2_.h[param1]);
                  break;
               }
            }
            §§push(_loc2_.getReserved(param1));
            break;
         }
         var _loc3_:§;n§ = §§pop();
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               if(!_loc9_)
               {
                  while(true)
                  {
                     if(_loc3_ == null)
                     {
                        if(_loc9_)
                        {
                           break loop4;
                        }
                        §§push(0);
                        if(_loc8_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc4_ = §§pop();
                        if(!_loc8_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc5_ = _loc3_;
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 §§push(1);
                                 if(_loc8_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                 }
                                 _loc6_ = §§pop();
                                 if(!_loc9_)
                                 {
                                    while(_loc5_.next != null)
                                    {
                                       _loc5_ = _loc5_.next;
                                       if(_loc8_)
                                       {
                                          _loc6_++;
                                       }
                                    }
                                    if(!_loc8_)
                                    {
                                       break loop7;
                                    }
                                 }
                              }
                              §§push(_loc6_);
                              if(_loc8_)
                              {
                                 §§push(int(§§pop()));
                              }
                              break;
                           }
                           _loc4_ = §§pop();
                           break;
                        }
                     }
                     break loop7;
                  }
               }
               if(_loc3_ != null)
               {
                  if(!_loc9_)
                  {
                     break loop3;
                  }
                  break;
               }
               §§goto(addr0242);
            }
            return;
         }
         _loc7_ = new §`!I§(_loc3_);
         if(_loc8_)
         {
            loop1:
            while(_loc7_.l != null)
            {
               _loc5_ = _loc7_.next();
               if(_loc8_)
               {
                  § L§.low = 456144;
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        if(_loc5_ == null)
                        {
                           if(!_loc9_)
                           {
                              § L§.warning = 487220;
                              if(!_loc8_)
                              {
                                 break;
                              }
                           }
                        }
                     }
                     §§push(_loc5_.listener);
                     if(_loc8_)
                     {
                        §§push(§§pop());
                     }
                     if(§§pop() != null)
                     {
                        if(!_loc9_)
                        {
                           break;
                        }
                     }
                     continue loop1;
                  }
                  _loc5_.listener();
               }
            }
         }
         addr0242:
         § L§.mid = 619187;
         break loop4;
      }
      
      public static function addEventListener(param1:String, param2:Function) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc3_:* = null as StringMap;
         var _loc4_:* = null as §;n§;
         var _loc5_:* = null as §=!U§;
         var _loc6_:* = null as §;n§;
         var _loc7_:* = null as StringMap;
         var _loc8_:* = null as §`!I§;
         var _loc9_:* = null as §;n§;
         var _loc10_:* = null as §;n§;
         while(true)
         {
            if(_loc11_)
            {
               if(param2 == null)
               {
                  break;
               }
            }
            _loc3_ = GlobalEventManager.§^!$§;
            while(true)
            {
               if(_loc11_)
               {
                  if(!(param1 in StringMap.§+!#§))
                  {
                     §§push(_loc3_.h[param1]);
                     break;
                  }
               }
               §§push(_loc3_.getReserved(param1));
               break;
            }
            _loc4_ = §§pop();
            if(!_loc12_)
            {
               if(_loc4_ != null)
               {
                  _loc8_ = new §`!I§(_loc4_);
                  if(!_loc12_)
                  {
                     while(_loc8_.l != null)
                     {
                        _loc6_ = _loc8_.next();
                        if(!_loc12_)
                        {
                           §§push(_loc6_.listener);
                           if(_loc11_)
                           {
                              §§push(§§pop());
                           }
                           if(§§pop() != param2)
                           {
                              continue;
                           }
                        }
                        return;
                     }
                  }
                  _loc6_ = _loc4_;
                  if(_loc11_)
                  {
                     while(_loc6_.next != null)
                     {
                        _loc6_ = _loc6_.next;
                     }
                  }
                  _loc9_ = _loc6_;
                  _loc10_ = new §;n§(param2);
                  if(!_loc12_)
                  {
                     _loc10_.next = _loc9_.next;
                     if(!_loc12_)
                     {
                        _loc9_.next = _loc10_;
                     }
                  }
                  break;
               }
            }
            _loc5_ = GlobalEventManager.§^!$§;
            _loc6_ = new §;n§(param2);
            _loc7_ = _loc5_;
            if(!_loc12_)
            {
               if(param1 in StringMap.§+!#§)
               {
                  if(_loc11_)
                  {
                     _loc7_.setReserved(param1,_loc6_);
                     if(_loc12_)
                     {
                     }
                  }
                  break;
               }
               _loc7_.h[param1] = _loc6_;
            }
            break;
         }
      }
      
      public static function removeEventListener(param1:String, param2:Function) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc3_:* = null as StringMap;
         var _loc4_:* = null as §;n§;
         var _loc5_:* = null as §;n§;
         var _loc6_:* = null as §`!I§;
         var _loc7_:* = null as §;n§;
         var _loc8_:* = null as §;n§;
         var _loc9_:* = null as StringMap;
         loop1:
         while(true)
         {
            if(!_loc10_)
            {
               if(param2 == null)
               {
                  break;
               }
            }
            _loc3_ = GlobalEventManager.§^!$§;
            while(true)
            {
               if(_loc11_)
               {
                  if(!(param1 in StringMap.§+!#§))
                  {
                     §§push(_loc3_.h[param1]);
                     break;
                  }
               }
               §§push(_loc3_.getReserved(param1));
               break;
            }
            _loc4_ = §§pop();
            if(!_loc10_)
            {
               if(_loc4_ == null)
               {
                  break;
               }
            }
            _loc5_ = null;
            _loc6_ = new §`!I§(_loc4_);
            if(_loc11_)
            {
               loop0:
               while(true)
               {
                  if(_loc6_.l == null)
                  {
                     break loop1;
                  }
                  _loc7_ = _loc6_.next();
                  while(true)
                  {
                     if(!_loc10_)
                     {
                        §§push(_loc7_.listener);
                        if(_loc11_)
                        {
                           §§push(§§pop());
                        }
                        if(§§pop() != param2)
                        {
                           continue loop0;
                        }
                        if(!_loc10_)
                        {
                           if(_loc5_ == null)
                           {
                              if(!_loc10_)
                              {
                                 _loc8_ = _loc7_.next;
                                 _loc9_ = GlobalEventManager.§^!$§;
                                 if(_loc11_)
                                 {
                                    if(param1 in StringMap.§+!#§)
                                    {
                                       if(_loc11_)
                                       {
                                          _loc9_.setReserved(param1,_loc8_);
                                          if(_loc11_)
                                          {
                                          }
                                       }
                                       break;
                                    }
                                    _loc9_.h[param1] = _loc8_;
                                 }
                                 break;
                              }
                           }
                           else
                           {
                              if(_loc5_.next == null)
                              {
                                 break;
                              }
                              if(_loc10_)
                              {
                                 break;
                              }
                           }
                           _loc5_.next.listener = null;
                           if(_loc10_)
                           {
                              break;
                           }
                        }
                     }
                     _loc5_.next = _loc5_.next.next;
                     break;
                  }
                  return;
                  _loc5_ = _loc7_;
               }
            }
            break;
         }
      }
   }
}

