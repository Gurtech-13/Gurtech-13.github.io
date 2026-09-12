package §^!0§
{
   import §1!a§.§!!<§;
   import §1!a§.§"!4§;
   import §1!a§.§#r§;
   import §1!a§.§%!W§;
   import §1!a§.§&0§;
   import §1!a§.§,!7§;
   import §1!a§.§5!'§;
   import §1!a§.§55§;
   import §1!a§.§7!D§;
   import §1!a§.§8U§;
   import §1!a§.§8l§;
   import §1!a§.§;!$§;
   import §1!a§.§;!V§;
   import §1!a§.§;x§;
   import §1!a§.§<!-§;
   import §1!a§.§<!2§;
   import §1!a§.§[Z§;
   import §1!a§.§^!?§;
   import §1!a§.§^S§;
   import §1!a§.§^k§;
   import §1!a§.§^u§;
   import §1!a§.§`!9§;
   import flash.Boot;
   
   public class §7P§
   {
      
      public static var §4W§:String = null;
      
      public function §7P§()
      {
      }
      
      public static function LoginWithKongregate(param1:§8U§, param2:Object = undefined, param3:Object = undefined) : void
      {
         var onComplete:Object = param2;
         var onError:Object = param3;
         param1.TitleId = §=r§.TitleId != null ? §=r§.TitleId : param1.TitleId;
         if(param1.TitleId == null)
         {
            Boot.lastError = new Error();
            throw new Error("Must be have PlayFabSettings.TitleId set to call this method");
         }
         var _loc4_:String = JSON.stringify(param1);
         var _loc5_:Function = function(param1:*, param2:§%2§):void
         {
            var _loc3_:* = null as §;!$§;
            if(param2 != null)
            {
               if(onError != null)
               {
                  onError(param2);
               }
               if(§=r§.§;J§ != null)
               {
                  §=r§.§;J§(param2);
               }
            }
            else
            {
               _loc3_ = new §;!$§(param1);
               §7P§.§4W§ = param1.SessionTicket != null ? param1.SessionTicket : §7P§.§4W§;
               §7P§.§;W§(param1.SettingsForUser.NeedsAttribution);
               if(onComplete != null)
               {
                  onComplete(_loc3_);
               }
            }
         };
         §+!B§.§`!&§(§=r§.§,!+§() + "/Client/LoginWithKongregate",_loc4_,null,null,_loc5_);
      }
      
      public static function LinkKongregate(param1:§`!9§, param2:Object = undefined, param3:Object = undefined) : void
      {
         var onComplete:Object = param2;
         var onError:Object = param3;
         if(§7P§.§4W§ == null)
         {
            Boot.lastError = new Error();
            throw new Error("Must be logged in to call this method");
         }
         var _loc4_:String = JSON.stringify(param1);
         var _loc5_:Function = function(param1:*, param2:§%2§):void
         {
            var _loc3_:* = null as §7!D§;
            if(param2 != null)
            {
               if(onError != null)
               {
                  onError(param2);
               }
               if(§=r§.§;J§ != null)
               {
                  §=r§.§;J§(param2);
               }
            }
            else
            {
               _loc3_ = new §7!D§(param1);
               if(onComplete != null)
               {
                  onComplete(_loc3_);
               }
            }
         };
         §+!B§.§`!&§(§=r§.§,!+§() + "/Client/LinkKongregate",_loc4_,"X-Authorization",§7P§.§4W§,_loc5_);
      }
      
      public static function UpdateUserTitleDisplayName(param1:§<!2§, param2:Object = undefined, param3:Object = undefined) : void
      {
         var onComplete:Object = param2;
         var onError:Object = param3;
         if(§7P§.§4W§ == null)
         {
            Boot.lastError = new Error();
            throw new Error("Must be logged in to call this method");
         }
         var _loc4_:String = JSON.stringify(param1);
         var _loc5_:Function = function(param1:*, param2:§%2§):void
         {
            var _loc3_:* = null as §8l§;
            if(param2 != null)
            {
               if(onError != null)
               {
                  onError(param2);
               }
               if(§=r§.§;J§ != null)
               {
                  §=r§.§;J§(param2);
               }
            }
            else
            {
               _loc3_ = new §8l§(param1);
               if(onComplete != null)
               {
                  onComplete(_loc3_);
               }
            }
         };
         §+!B§.§`!&§(§=r§.§,!+§() + "/Client/UpdateUserTitleDisplayName",_loc4_,"X-Authorization",§7P§.§4W§,_loc5_);
      }
      
      public static function GetPlayerStatistics(param1:§&0§, param2:Object = undefined, param3:Object = undefined) : void
      {
         var onComplete:Object = param2;
         var onError:Object = param3;
         if(§7P§.§4W§ == null)
         {
            Boot.lastError = new Error();
            throw new Error("Must be logged in to call this method");
         }
         var _loc4_:String = JSON.stringify(param1);
         var _loc5_:Function = function(param1:*, param2:§%2§):void
         {
            var _loc3_:* = null as §^!?§;
            if(param2 != null)
            {
               if(onError != null)
               {
                  onError(param2);
               }
               if(§=r§.§;J§ != null)
               {
                  §=r§.§;J§(param2);
               }
            }
            else
            {
               _loc3_ = new §^!?§(param1);
               if(onComplete != null)
               {
                  onComplete(_loc3_);
               }
            }
         };
         §+!B§.§`!&§(§=r§.§,!+§() + "/Client/GetPlayerStatistics",_loc4_,"X-Authorization",§7P§.§4W§,_loc5_);
      }
      
      public static function GetPlayerStatisticVersions(param1:§^k§, param2:Object = undefined, param3:Object = undefined) : void
      {
         var onComplete:Object = param2;
         var onError:Object = param3;
         if(§7P§.§4W§ == null)
         {
            Boot.lastError = new Error();
            throw new Error("Must be logged in to call this method");
         }
         var _loc4_:String = JSON.stringify(param1);
         var _loc5_:Function = function(param1:*, param2:§%2§):void
         {
            var _loc3_:* = null as §;x§;
            if(param2 != null)
            {
               if(onError != null)
               {
                  onError(param2);
               }
               if(§=r§.§;J§ != null)
               {
                  §=r§.§;J§(param2);
               }
            }
            else
            {
               _loc3_ = new §;x§(param1);
               if(onComplete != null)
               {
                  onComplete(_loc3_);
               }
            }
         };
         §+!B§.§`!&§(§=r§.§,!+§() + "/Client/GetPlayerStatisticVersions",_loc4_,"X-Authorization",§7P§.§4W§,_loc5_);
      }
      
      public static function GetUserData(param1:§5!'§, param2:Object = undefined, param3:Object = undefined) : void
      {
         var onComplete:Object = param2;
         var onError:Object = param3;
         if(§7P§.§4W§ == null)
         {
            Boot.lastError = new Error();
            throw new Error("Must be logged in to call this method");
         }
         var _loc4_:String = JSON.stringify(param1);
         var _loc5_:Function = function(param1:*, param2:§%2§):void
         {
            var _loc3_:* = null as §"!4§;
            if(param2 != null)
            {
               if(onError != null)
               {
                  onError(param2);
               }
               if(§=r§.§;J§ != null)
               {
                  §=r§.§;J§(param2);
               }
            }
            else
            {
               _loc3_ = new §"!4§(param1);
               if(onComplete != null)
               {
                  onComplete(_loc3_);
               }
            }
         };
         §+!B§.§`!&§(§=r§.§,!+§() + "/Client/GetUserData",_loc4_,"X-Authorization",§7P§.§4W§,_loc5_);
      }
      
      public static function GetUserPublisherData(param1:§5!'§, param2:Object = undefined, param3:Object = undefined) : void
      {
         var onComplete:Object = param2;
         var onError:Object = param3;
         if(§7P§.§4W§ == null)
         {
            Boot.lastError = new Error();
            throw new Error("Must be logged in to call this method");
         }
         var _loc4_:String = JSON.stringify(param1);
         var _loc5_:Function = function(param1:*, param2:§%2§):void
         {
            var _loc3_:* = null as §"!4§;
            if(param2 != null)
            {
               if(onError != null)
               {
                  onError(param2);
               }
               if(§=r§.§;J§ != null)
               {
                  §=r§.§;J§(param2);
               }
            }
            else
            {
               _loc3_ = new §"!4§(param1);
               if(onComplete != null)
               {
                  onComplete(_loc3_);
               }
            }
         };
         §+!B§.§`!&§(§=r§.§,!+§() + "/Client/GetUserPublisherData",_loc4_,"X-Authorization",§7P§.§4W§,_loc5_);
      }
      
      public static function UpdatePlayerStatistics(param1:§^S§, param2:Object = undefined, param3:Object = undefined) : void
      {
         var onComplete:Object = param2;
         var onError:Object = param3;
         if(§7P§.§4W§ == null)
         {
            Boot.lastError = new Error();
            throw new Error("Must be logged in to call this method");
         }
         var _loc4_:String = JSON.stringify(param1);
         var _loc5_:Function = function(param1:*, param2:§%2§):void
         {
            var _loc3_:* = null as §%!W§;
            if(param2 != null)
            {
               if(onError != null)
               {
                  onError(param2);
               }
               if(§=r§.§;J§ != null)
               {
                  §=r§.§;J§(param2);
               }
            }
            else
            {
               _loc3_ = new §%!W§(param1);
               if(onComplete != null)
               {
                  onComplete(_loc3_);
               }
            }
         };
         §+!B§.§`!&§(§=r§.§,!+§() + "/Client/UpdatePlayerStatistics",_loc4_,"X-Authorization",§7P§.§4W§,_loc5_);
      }
      
      public static function UpdateUserData(param1:§55§, param2:Object = undefined, param3:Object = undefined) : void
      {
         var onComplete:Object = param2;
         var onError:Object = param3;
         if(§7P§.§4W§ == null)
         {
            Boot.lastError = new Error();
            throw new Error("Must be logged in to call this method");
         }
         var _loc4_:String = JSON.stringify(param1);
         var _loc5_:Function = function(param1:*, param2:§%2§):void
         {
            var _loc3_:* = null as §!!<§;
            if(param2 != null)
            {
               if(onError != null)
               {
                  onError(param2);
               }
               if(§=r§.§;J§ != null)
               {
                  §=r§.§;J§(param2);
               }
            }
            else
            {
               _loc3_ = new §!!<§(param1);
               if(onComplete != null)
               {
                  onComplete(_loc3_);
               }
            }
         };
         §+!B§.§`!&§(§=r§.§,!+§() + "/Client/UpdateUserData",_loc4_,"X-Authorization",§7P§.§4W§,_loc5_);
      }
      
      public static function UpdateUserPublisherData(param1:§55§, param2:Object = undefined, param3:Object = undefined) : void
      {
         var onComplete:Object = param2;
         var onError:Object = param3;
         if(§7P§.§4W§ == null)
         {
            Boot.lastError = new Error();
            throw new Error("Must be logged in to call this method");
         }
         var _loc4_:String = JSON.stringify(param1);
         var _loc5_:Function = function(param1:*, param2:§%2§):void
         {
            var _loc3_:* = null as §!!<§;
            if(param2 != null)
            {
               if(onError != null)
               {
                  onError(param2);
               }
               if(§=r§.§;J§ != null)
               {
                  §=r§.§;J§(param2);
               }
            }
            else
            {
               _loc3_ = new §!!<§(param1);
               if(onComplete != null)
               {
                  onComplete(_loc3_);
               }
            }
         };
         §+!B§.§`!&§(§=r§.§,!+§() + "/Client/UpdateUserPublisherData",_loc4_,"X-Authorization",§7P§.§4W§,_loc5_);
      }
      
      public static function GetTitleNews(param1:§<!-§, param2:Object = undefined, param3:Object = undefined) : void
      {
         var onComplete:Object = param2;
         var onError:Object = param3;
         if(§7P§.§4W§ == null)
         {
            Boot.lastError = new Error();
            throw new Error("Must be logged in to call this method");
         }
         var _loc4_:String = JSON.stringify(param1);
         var _loc5_:Function = function(param1:*, param2:§%2§):void
         {
            var _loc3_:* = null as §^u§;
            if(param2 != null)
            {
               if(onError != null)
               {
                  onError(param2);
               }
               if(§=r§.§;J§ != null)
               {
                  §=r§.§;J§(param2);
               }
            }
            else
            {
               _loc3_ = new §^u§(param1);
               if(onComplete != null)
               {
                  onComplete(_loc3_);
               }
            }
         };
         §+!B§.§`!&§(§=r§.§,!+§() + "/Client/GetTitleNews",_loc4_,"X-Authorization",§7P§.§4W§,_loc5_);
      }
      
      public static function GetContentDownloadUrl(param1:§#r§, param2:Object = undefined, param3:Object = undefined) : void
      {
         var onComplete:Object = param2;
         var onError:Object = param3;
         if(§7P§.§4W§ == null)
         {
            Boot.lastError = new Error();
            throw new Error("Must be logged in to call this method");
         }
         var _loc4_:String = JSON.stringify(param1);
         var _loc5_:Function = function(param1:*, param2:§%2§):void
         {
            var _loc3_:* = null as §,!7§;
            if(param2 != null)
            {
               if(onError != null)
               {
                  onError(param2);
               }
               if(§=r§.§;J§ != null)
               {
                  §=r§.§;J§(param2);
               }
            }
            else
            {
               _loc3_ = new §,!7§(param1);
               if(onComplete != null)
               {
                  onComplete(_loc3_);
               }
            }
         };
         §+!B§.§`!&§(§=r§.§,!+§() + "/Client/GetContentDownloadUrl",_loc4_,"X-Authorization",§7P§.§4W§,_loc5_);
      }
      
      public static function AttributeInstall(param1:§[Z§, param2:Object = undefined, param3:Object = undefined) : void
      {
         var onComplete:Object = param2;
         var onError:Object = param3;
         if(§7P§.§4W§ == null)
         {
            Boot.lastError = new Error();
            throw new Error("Must be logged in to call this method");
         }
         var _loc4_:String = JSON.stringify(param1);
         var _loc5_:Function = function(param1:*, param2:§%2§):void
         {
            var _loc3_:* = null as §;!V§;
            if(param2 != null)
            {
               if(onError != null)
               {
                  onError(param2);
               }
               if(§=r§.§;J§ != null)
               {
                  §=r§.§;J§(param2);
               }
            }
            else
            {
               _loc3_ = new §;!V§(param1);
               _temp_1.§-Y§ += "_Successful";
               if(onComplete != null)
               {
                  onComplete(_loc3_);
               }
            }
         };
         §+!B§.§`!&§(§=r§.§,!+§() + "/Client/AttributeInstall",_loc4_,"X-Authorization",§7P§.§4W§,_loc5_);
      }
      
      public static function §;W§(param1:Boolean) : void
      {
         var _loc2_:* = null as §[Z§;
         if(param1 && !§=r§.§6_§ && (§=r§.§-Y§ != null && §=r§.§-Y§ != "") && (§=r§.§[!@§ != null && §=r§.§[!@§ != ""))
         {
            _loc2_ = new §[Z§();
            if(§=r§.§-Y§ == "Idfa")
            {
               _loc2_.Idfa = §=r§.§[!@§;
            }
            else
            {
               if(§=r§.§-Y§ != "Android_Id")
               {
                  return;
               }
               _loc2_.Android_Id = §=r§.§[!@§;
            }
            §7P§.AttributeInstall(_loc2_,null,null);
         }
      }
   }
}

