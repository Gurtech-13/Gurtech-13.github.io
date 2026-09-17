package §#!a§
{
   import §!!$§.§ 6§;
   import §%!Q§.§+#§;
   import §%!Z§.§&!S§;
   import layout3d.§>N§;
   import §4!6§.§=s§;
   import §6!Q§.§#W§;
   import §6!Q§.§]u§;
   import game.§5v§;
   import game.Game;
   import §8&§.§%!$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import com.player03.run3.Save;
   import com.player03.run3.level.Level;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.menu.§[!<§;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§2!;§;
   import flash.Lib;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.system.Security;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import nme3D.Scene3D;
   import nme3D.Context3DUtils;
   
   public class §]3§ extends EventDispatcher
   {
      
      public var §+G§:Vector.<Object>;
      
      public var §4!#§:Vector.<Object>;
      
      public var § G§:Boolean;
      
      public var loader:Loader;
      
      public var kongregate:*;
      
      public function §]3§()
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            § G§ = true;
            while(true)
            {
               if(_loc4_)
               {
                  super();
                  if(_loc5_)
                  {
                     break;
                  }
               }
               §+G§ = new Vector.<Object>();
               break;
            }
         }
         var _loc1_:Stage = Lib.current.stage;
         §§push(_loc1_.loaderInfo.parameters.kongregate_api_path);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  if(_loc2_ != null)
                  {
                     break;
                  }
                  if(_loc5_)
                  {
                     break loop1;
                  }
                  §§push("https://www.kongregate.com/flash/API_AS3_Local.swf");
                  if(_loc4_)
                  {
                     §§push(§§pop());
                  }
                  _loc2_ = §§pop();
                  if(!_loc4_)
                  {
                     break loop1;
                  }
               }
               § G§ = false;
               if(!_loc5_)
               {
                  break;
               }
               break loop1;
            }
            Security.allowDomain(_loc2_);
            break;
         }
         var _loc3_:URLRequest = new URLRequest(_loc2_);
         if(_loc4_)
         {
            loader = new Loader();
            loop3:
            while(true)
            {
               while(true)
               {
                  if(!_loc5_)
                  {
                     loader.contentLoaderInfo.addEventListener(Event.COMPLETE,§"!C§);
                     if(_loc5_)
                     {
                        break;
                     }
                     loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,§%i§);
                     if(!_loc4_)
                     {
                        break loop3;
                     }
                  }
                  loader.load(_loc3_);
                  if(!_loc5_)
                  {
                     break loop3;
                  }
                  break;
               }
            }
            _loc1_.addChild(loader);
            break loop4;
         }
      }
      
      public function §8!<§(param1:String, param2:String, param3:DisplayObject) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  if(_loc4_)
                  {
                     if(kongregate == null)
                     {
                        break loop0;
                     }
                     if(_loc4_)
                     {
                        §§pop();
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§push(§ G§);
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break loop0;
               }
               kongregate.sharedContent.save(param1,param2,null,param3,null);
            }
            if(§§pop())
            {
               if(!_loc5_)
               {
                  break loop1;
               }
            }
         }
      }
      
      public function submit(param1:String, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            if(kongregate != null)
            {
               if(_loc4_)
               {
                  kongregate.stats.submit(param1,param2);
                  if(_loc4_)
                  {
                  }
               }
               else
               {
                  addr0077:
                  §+G§.push({
                     "name":param1,
                     "value":param2
                  });
               }
            }
            else if(§+G§ != null)
            {
               if(!_loc3_)
               {
                  §§goto(addr0077);
               }
            }
         }
      }
      
      public function showRegistrationBox() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               §§push(false);
               if(kongregate != null)
               {
                  while(true)
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc1_)
                        {
                           break loop0;
                        }
                        §§push(isGuest());
                        if(_loc1_)
                        {
                           break;
                        }
                        §§push(Boolean(§§pop()));
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
               }
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     if(Reflect.hasField(kongregate.services,"showRegistrationBox"))
                     {
                        if(_loc2_)
                        {
                           kongregate.services.showRegistrationBox();
                           if(_loc2_)
                           {
                           }
                        }
                        break;
                     }
                     Lib.trace("Kongregate API: IKongregateServices.showRegistrationBox()");
                  }
               }
               break;
            }
         }
      }
      
      public function §?!T§(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            dispatchEvent(param1);
         }
      }
      
      public function §%i§(param1:IOErrorEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               Lib.current.stage.removeChild(loader);
               if(!_loc2_)
               {
                  loader = null;
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            dispatchEvent(param1);
            break;
         }
      }
      
      public function §"!C§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:* = null as Vector.<Object>;
         var _loc4_:* = null;
         Lib.current.stage.removeChild(loader);
         loop2:
         while(true)
         {
            if(!_loc5_)
            {
               loader = null;
               if(!_loc6_)
               {
                  break;
               }
               kongregate = param1.target.content;
               if(_loc5_)
               {
                  break;
               }
            }
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  if(_loc6_)
                  {
                     if(§4!#§ == null)
                     {
                        continue loop5;
                     }
                     if(_loc6_)
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(kongregate == null);
                        if(_loc5_)
                        {
                           continue loop5;
                        }
                        §§push(!§§pop());
                        if(_loc5_)
                        {
                           continue loop5;
                        }
                     }
                  }
                  §§push(Boolean(§§pop()));
                  continue loop5;
               }
               §§push(0);
               if(_loc6_)
               {
                  §§push(int(§§pop()));
                  if(_loc6_)
                  {
                     _loc2_ = §§pop();
                     if(!_loc6_)
                     {
                        break loop5;
                     }
                     _loc3_ = §4!#§;
                     if(_loc6_)
                     {
                        while(_loc2_ < int(_loc3_.length))
                        {
                           _loc4_ = _loc3_[_loc2_];
                           if(!_loc5_)
                           {
                              _loc2_++;
                              if(_loc5_)
                              {
                                 continue;
                              }
                           }
                           §@!!§(_loc4_.t,_loc4_.l);
                        }
                     }
                     §§goto(addr0111);
                  }
               }
               §§goto(addr0141);
            }
            while(true)
            {
               while(true)
               {
                  if(§§pop())
                  {
                     break loop4;
                  }
                  addr0111:
                  kongregate.services.connect();
                  break loop2;
               }
               addr0141:
               _loc2_ = §§pop();
               break;
            }
            _loc3_ = §+G§;
            while(true)
            {
               if(_loc6_)
               {
                  while(_loc2_ < int(_loc3_.length))
                  {
                     _loc4_ = _loc3_[_loc2_];
                     if(!_loc5_)
                     {
                        _loc2_++;
                        if(_loc6_)
                        {
                           kongregate.stats.submit(_loc4_.name,int(_loc4_.value));
                        }
                     }
                  }
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               dispatchEvent(param1);
               break;
            }
            return;
         }
         kongregate.services.addEventListener("login",§?!T§);
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         §§goto(addr0141);
      }
      
      public function §0t§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(kongregate == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function isGuest() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(kongregate == null)
            {
               return true;
            }
         }
         return kongregate.services.isGuest();
      }
      
      public function getUsername() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(kongregate == null)
            {
               return "Guest";
            }
         }
         return kongregate.services.getUsername();
      }
      
      public function getUserId() : int
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(kongregate == null)
            {
               return -1;
            }
         }
         return kongregate.services.getUserId();
      }
      
      public function getGameAuthToken() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(kongregate == null)
            {
               return null;
            }
         }
         return kongregate.services.getGameAuthToken();
      }
      
      public function §@!!§(param1:String, param2:Function) : void
      {
         var listener:Function;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         listener = param2;
         if(kongregate != null)
         {
            kongregate.sharedContent.addLoadListener(param1,function(param1:*):void
            {
               listener(new §%!$§(param1));
            });
         }
         else
         {
            if(§4!#§ == null)
            {
               §4!#§ = new Vector.<Object>();
            }
            §4!#§.push({
               "t":param1,
               "l":listener
            });
         }
      }
   }
}

