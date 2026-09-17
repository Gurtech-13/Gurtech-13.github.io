package com.player03.run3
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §&!J§.§7=§;
   import §+!1§.§[!9§;
   import §4!6§.§!!V§;
   import §4!6§.§=s§;
   import §8!0§.§@!N§;
   import world3d.Entity3D;
   import §<&§.§6!>§;
   import §[^§.§+`§;
   import com.player03.analytics.§8!3§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.api.PlayFabAPI;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.character.§`!B§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§0!?§;
   import com.player03.run3.save.§0d§;
   import com.player03.run3.save.§1!;§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§2o§;
   import com.player03.run3.save.§4!^§;
   import com.player03.run3.save.§9t§;
   import com.player03.run3.save.§>!6§;
   import com.player03.run3.save.§]k§;
   import flash.Boot;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.§%d§;
   import nme3D.model.§,T§;
   import nme3D.shader.§'H§;
   import nme3D.shader.PositionUVDepthVertex;
   import openfl.Assets;
   import unitsystem.§7o§;
   
   public class Save implements §+<§
   {
      
      public static var init__:Boolean;
      
      public static var §,>§:§0d§;
      
      public static var mostBatteries:§2!;§;
      
      public static var currentPath:§0!?§;
      
      public static var forceVisitMap:§2o§;
      
      public static var exploreRuns:§9t§;
      
      public static var infiniteRuns:§9t§;
      
      public static var infiniteDistance:§1!;§;
      
      public static var exploreRunsUnfiltered:§9t§;
      
      public static var infiniteRunsUnfiltered:§9t§;
      
      public static var currentCharacter:§9t§;
      
      public static var tilesDislodged:§9t§;
      
      public static var musicMuted:§2o§;
      
      public static var soundMuted:§2o§;
      
      public static var lastBuildNumber:§9t§;
      
      public static var firstPlayTime:§0!?§;
      
      public static var §"!@§:§]k§;
      
      public static var hasLoggedIn:§2o§;
      
      public static var instance:Save;
      
      public static var §2#§:* = {"statics":{"lastBuildNumber":{"defaultValue":[-1]}}};
      
      public var username:String;
      
      public var §'!;§:SharedObject;
      
      public var §3M§:int;
      
      public var §9X§:SharedObject;
      
      public var §-!=§:Vector.<Function>;
      
      public var buildNumber:int;
      
      public function Save()
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = null as Array;
         var _loc4_:* = null as String;
         §3M§ = -2;
         Save.instance = this;
         if(!_loc7_)
         {
            § L§.high = 464261;
            §9X§ = SharedObject.getLocal("last");
            §§push(Assets.exists("text/BuildNumber.txt","TEXT"));
            if(!_loc7_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc7_)
               {
                  §§push(!§§pop());
               }
            }
            if(!§§pop())
            {
               §§push(§§findproperty(buildNumber));
               §§push(Std);
               §§push(Assets.getText("text/BuildNumber.txt"));
               if(_loc6_)
               {
                  §§push(§§pop());
               }
               §§pop().buildNumber = §§pop().parseInt(§§pop());
               if(_loc6_)
               {
                  set_username(Reflect.field(§9X§.data,"username"));
                  if(!_loc7_)
                  {
                     § L§.high = 648835;
                  }
               }
               var _loc1_:SharedObject = SharedObject.getLocal("Run3_backup");
               §§push(Reflect.hasField(_loc1_.data,"backupMade"));
               if(!_loc7_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc6_)
                  {
                     §§push(!§§pop());
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc1_.data.backupMade = true;
                     §§push(0);
                     if(!_loc7_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc7_)
                        {
                           _loc2_ = §§pop();
                           §§push(Reflect.fields(§'!;§.data));
                           if(!_loc7_)
                           {
                              §§push(§§pop());
                              if(_loc6_)
                              {
                                 §§push(§§pop());
                              }
                           }
                           _loc3_ = §§pop();
                           if(!_loc6_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(_loc2_);
                           }
                           addr01a4:
                        }
                     }
                     while(§§pop() < int(_loc3_.length))
                     {
                        §§push(_loc3_[_loc2_]);
                        if(_loc6_)
                        {
                           §§push(§§pop());
                        }
                        _loc4_ = §§pop();
                        if(!_loc7_)
                        {
                           _loc2_++;
                           if(_loc6_)
                           {
                              _loc1_.data[_loc4_] = Reflect.field(§'!;§.data,_loc4_);
                           }
                        }
                        §§goto(addr01a4);
                     }
                  }
                  _loc1_.close();
                  break;
               }
               var _loc5_:Vector.<Function> = new Vector.<Function>(0,false);
               if(!_loc7_)
               {
                  §-!=§ = _loc5_;
               }
               return;
            }
         }
         Boot.lastError = new Error();
         throw new Error("BuildNumber.txt doesn\'t exist! Make sure you aren\'t accessing Save.instance before the assets are initialized.");
      }
      
      public static function §@!A§() : Save
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as Save;
         if(!_loc3_)
         {
            if(Save.instance != null)
            {
               return Save.instance;
            }
         }
         return Save.instance = new Save();
      }
      
      public function set_username(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc2_:* = null as SharedObject;
         var _loc3_:* = false;
         var _loc4_:* = false;
         var _loc5_:* = null as §9t§;
         var _loc6_:* = 0;
         var _loc7_:* = null as Array;
         var _loc8_:* = null as String;
         var _loc9_:* = null as §0!?§;
         while(true)
         {
            loop3:
            while(true)
            {
               if(!_loc10_)
               {
                  §§push(true);
                  if(_loc11_)
                  {
                     if(username == param1)
                     {
                        if(_loc11_)
                        {
                           §§pop();
                           if(!_loc11_)
                           {
                              continue loop5;
                           }
                           §§push(§'!;§ == null);
                           if(_loc11_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        break;
                     }
                     if(§'!;§ == null)
                     {
                        break;
                     }
                     if(_loc10_)
                     {
                        continue loop5;
                     }
                  }
                  else
                  {
                     §§goto(addr03b1);
                  }
               }
               loop14:
               while(true)
               {
                  while(true)
                  {
                     §§push(§7o§);
                     §§push("Changing save file username: ");
                     §§push(username);
                     if(_loc11_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc10_)
                        {
                           §§push(§§pop());
                           §§push(" -> ");
                           if(_loc10_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc11_)
                           {
                              break loop14;
                           }
                        }
                        §§push(param1);
                     }
                     §§push(§§pop() + §§pop());
                     break loop14;
                  }
                  §§pop().§3t§(§§pop(),{
                     (§§pop()):"Save.hx",
                     "lineNumber":357,
                     "className":"com.player03.run3.Save",
                     "methodName":"set_username"
                  });
                  if(_loc11_)
                  {
                     break loop3;
                  }
                  continue loop5;
               }
               §§push(§§pop());
               §§push("fileName");
               break loop15;
            }
            username = param1;
            continue loop5;
         }
         _loc2_ = §'!;§;
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               loop11:
               while(true)
               {
                  if(!_loc10_)
                  {
                     while(true)
                     {
                        §§push(true);
                        if(_loc11_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc10_)
                           {
                              _loc3_ = §§pop();
                              if(username == null)
                              {
                                 §'!;§ = SharedObject.getLocal("Run3");
                                 break loop11;
                              }
                              §'!;§ = SharedObject.getLocal("Run3_" + username);
                              if(_loc2_ != null)
                              {
                                 addr0161:
                                 _loc5_ = Save.lastBuildNumber;
                                 if(_loc10_)
                                 {
                                    break loop4;
                                 }
                                 while(true)
                                 {
                                    §§push(Save.§@!A§().exists(_loc5_.§=-§));
                                    if(!_loc10_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(!§§pop());
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    addr019f:
                                    _loc4_ = §§pop();
                                    break loop5;
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(!_loc10_)
                                 {
                                    §§goto(addr019f);
                                 }
                                 §§goto(addr01bd);
                              }
                              else
                              {
                                 §§push(false);
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                              }
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break;
                     }
                     _loc4_ = §§pop();
                     break loop5;
                  }
                  §§goto(addr0161);
               }
               §§goto(addr027d);
            }
            addr01bd:
            if(_loc4_)
            {
               if(!_loc10_)
               {
                  §§push(0);
                  if(_loc11_)
                  {
                     §§push(int(§§pop()));
                     if(_loc11_)
                     {
                        _loc6_ = §§pop();
                        §§push(Reflect.fields(_loc2_.data));
                        if(_loc11_)
                        {
                           §§push(§§pop());
                           if(!_loc10_)
                           {
                              §§push(§§pop());
                           }
                        }
                        _loc7_ = §§pop();
                        if(!_loc11_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc6_);
                        }
                        addr023f:
                     }
                  }
                  while(§§pop() < int(_loc7_.length))
                  {
                     §§push(_loc7_[_loc6_]);
                     if(_loc11_)
                     {
                        §§push(§§pop());
                     }
                     _loc8_ = §§pop();
                     if(_loc11_)
                     {
                        _loc6_++;
                        if(!_loc10_)
                        {
                           §'!;§.data[_loc8_] = Reflect.field(_loc2_.data,_loc8_);
                        }
                     }
                     §§goto(addr023f);
                  }
                  if(_loc11_)
                  {
                     §'!;§.flush();
                     if(!_loc10_)
                     {
                        _loc2_.clear();
                     }
                  }
               }
               break;
            }
            break loop11;
         }
         _loc2_ = null;
         if(!_loc10_)
         {
            §§push(false);
            if(_loc11_)
            {
               §§push(Boolean(§§pop()));
            }
            _loc3_ = §§pop();
         }
         addr027d:
         _loc9_ = Save.firstPlayTime;
         loop6:
         while(true)
         {
            §§push(Save.§@!A§().exists(_loc9_.§=-§));
            if(!_loc10_)
            {
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc11_)
                  {
                     §§push(!§§pop());
                     if(!_loc11_)
                     {
                        break;
                     }
                  }
                  loop8:
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§push(Save.firstPlayTime);
                        §§push(§8!3§.toString(Date.now()));
                        if(_loc11_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().§?F§(§§pop());
                        if(_loc10_)
                        {
                           break;
                        }
                     }
                     if(§3M§ == -2)
                     {
                        if(!_loc11_)
                        {
                           break loop6;
                        }
                        _loc5_ = Save.lastBuildNumber;
                        while(true)
                        {
                           if(!_loc10_)
                           {
                              §3M§ = int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§)));
                              if(!_loc10_)
                              {
                                 if(§3M§ == buildNumber)
                                 {
                                    break;
                                 }
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                              }
                           }
                           Save.lastBuildNumber.§?F§(buildNumber);
                           break;
                        }
                     }
                     while(true)
                     {
                        if(_loc2_ != null)
                        {
                           if(_loc10_)
                           {
                              break loop8;
                           }
                           _loc2_.flush();
                           _loc2_.close();
                           §6!>§.§63§(§'!;§);
                           if(_loc10_)
                           {
                              break;
                           }
                        }
                        §9X§.data["username"] = username;
                        break;
                     }
                     §9X§.flush();
                     break;
                  }
                  §§push(_loc3_);
                  break;
               }
            }
            if(§§pop())
            {
               if(!_loc10_)
               {
                  GlobalEventManager.dispatchEvent("saveFileChanged");
               }
            }
            break;
         }
         addr03b1:
         return username;
      }
      
      public function §1!R§(param1:String, param2:Object) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            if(param2 == null)
            {
               if(_loc3_)
               {
                  Reflect.deleteField(§'!;§.data,param1);
                  if(_loc4_)
                  {
                  }
               }
            }
            else
            {
               §'!;§.setProperty(param1,param2);
            }
         }
      }
      
      public function §@!C§() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc5_:* = null as §4!^§;
         var _loc6_:* = 0;
         var _loc7_:* = null as Vector.<§-Q§>;
         var _loc8_:* = null as §-Q§;
         var _loc1_:SharedObject = SharedObject.getLocal("Run3_backup");
         while(true)
         {
            §§push(§6!>§.§7!`§(_loc1_));
            if(_loc9_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc9_)
               {
                  break;
               }
            }
            §§push(Boolean(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Vector.<§4!^§> = §4!^§.§&!#§;
         loop3:
         while(true)
         {
            while(true)
            {
               if(!_loc10_)
               {
                  while(_loc3_ < int(_loc4_.length))
                  {
                     _loc5_ = _loc4_[_loc3_];
                     while(true)
                     {
                        if(_loc9_)
                        {
                           _loc3_++;
                           if(!_loc9_)
                           {
                              break;
                           }
                        }
                        §§push(0);
                        if(!_loc10_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc6_ = §§pop();
                        break;
                     }
                     _loc7_ = _loc5_.§+!3§;
                     if(!_loc10_)
                     {
                        while(_loc6_ < int(_loc7_.length))
                        {
                           _loc8_ = _loc7_[_loc6_];
                           if(!_loc10_)
                           {
                              _loc6_++;
                              if(!_loc10_)
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc9_)
                                    {
                                       §1!R§(_loc8_.§=-§,null);
                                       if(!_loc9_)
                                       {
                                          continue;
                                       }
                                    }
                                    Reflect.deleteField(_loc1_.data,_loc8_.§=-§);
                                    if(_loc10_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §1!R§(_loc8_.§=-§,Reflect.field(_loc1_.data,_loc8_.§=-§));
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(_loc10_)
                  {
                     break;
                  }
                  _loc1_.close();
                  if(!_loc9_)
                  {
                     break;
                  }
                  §>!6§.§>!X§();
                  if(!_loc9_)
                  {
                     break loop3;
                  }
               }
               §'!;§.flush();
               if(_loc9_)
               {
                  break loop3;
               }
               break;
            }
            return;
         }
         PlayFabAPI.§@!A§().§9!W§();
         break loop4;
      }
      
      public function §#!?§() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as String;
         var _loc1_:SharedObject = SharedObject.getLocal("Run3_backup");
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  §'!;§.clear();
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§push(§6!>§.§7!`§(_loc1_));
                  if(!_loc5_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     §§push(0);
                     if(!_loc5_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(Reflect.fields(_loc1_.data));
                     if(_loc6_)
                     {
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           §§push(§§pop());
                        }
                     }
                     var _loc3_:* = §§pop();
                     while(true)
                     {
                        if(_loc6_)
                        {
                           while(_loc2_ < int(_loc3_.length))
                           {
                              §§push(_loc3_[_loc2_]);
                              if(_loc6_)
                              {
                                 §§push(§§pop());
                              }
                              _loc4_ = §§pop();
                              if(!_loc5_)
                              {
                                 _loc2_++;
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                              }
                              §1!R§(_loc4_,Reflect.field(_loc1_.data,_loc4_));
                           }
                           if(!_loc6_)
                           {
                              break;
                           }
                        }
                        _loc1_.close();
                        if(!_loc5_)
                        {
                           §>!6§.§>!X§();
                           if(_loc6_)
                           {
                              break;
                           }
                           §§goto(addr014f);
                        }
                        break;
                     }
                     §'!;§.flush();
                     if(_loc6_)
                     {
                        PlayFabAPI.§@!A§().§9!W§();
                     }
                     addr014f:
                     return;
                  }
                  if(!_loc6_)
                  {
                     break loop1;
                  }
               }
               _loc1_.clear();
               if(!_loc5_)
               {
                  new Save();
                  if(_loc6_)
                  {
                     break;
                  }
               }
               break loop1;
            }
            PlayFabAPI.§@!A§().§9!W§();
            break;
         }
      }
      
      public function get(param1:String, param2:Object) : Object
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            if(param1 != null)
            {
               var _loc3_:Object = Reflect.field(§'!;§.data,param1);
               if(!_loc4_)
               {
                  if(_loc3_ != null)
                  {
                     return _loc3_;
                  }
               }
               return param2;
            }
         }
         return param2;
      }
      
      public function §2]§() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null;
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<Function> = §-!=§;
         while(true)
         {
            if(!_loc5_)
            {
               while(_loc1_ < int(_loc2_.length))
               {
                  §§push(_loc2_[_loc1_]);
                  if(_loc4_)
                  {
                     §§push(§§pop());
                  }
                  _loc3_ = §§pop();
                  if(_loc4_)
                  {
                     _loc1_++;
                     if(!_loc5_)
                     {
                        if(_loc3_ == null)
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           continue;
                        }
                     }
                  }
                  _loc3_();
               }
               if(!_loc4_)
               {
                  break;
               }
            }
            §'!;§.flush();
            break;
         }
      }
      
      public function exists(param1:String) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(Reflect.hasField(§'!;§.data,param1));
         if(!_loc3_)
         {
            return Boolean(§§pop());
         }
      }
      
      public function §;2§() : Array
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(Reflect.fields(§'!;§.data));
         if(_loc1_)
         {
            return §§pop();
         }
      }
      
      public function §7!H§(param1:Function) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §-!=§.push(param1);
         }
      }
   }
}

