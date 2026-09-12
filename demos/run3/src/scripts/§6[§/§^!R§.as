package §6[§
{
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §-!!§.§&!;§;
   import §-!!§.§,C§;
   import §6!Q§.§'!E§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.save.§4!^§;
   import flash.Boot;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §^!R§ extends Sprite
   {
      
      public var §-7§:TextField;
      
      public var §,!§:Function;
      
      public var §]7§:§3!0§;
      
      public var §=!0§:String;
      
      public var §=F§:§&d§;
      
      public var §]_§:§,C§;
      
      public function §^!R§(param1:String, param2:§3!0§ = undefined, param3:Object = undefined)
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc6_:* = null as § 7§;
         var _loc7_:* = null as § 7§;
         var _loc8_:* = null as §&d§;
         if(!_loc10_)
         {
            super();
            if(_loc9_)
            {
               §-7§ = §&!;§.§9Q§(0,24);
            }
         }
         var _loc4_:TextField = §-7§;
         var _loc5_:* = null;
         loop0:
         while(true)
         {
            if(_loc9_)
            {
               if(_loc5_ == null)
               {
                  _loc5_ = int(Number(_loc4_.defaultTextFormat.size));
               }
               §&d§.§1$§().add(new §?y§(_loc4_),new §=!]§(int(_loc5_)));
               if(!_loc9_)
               {
                  break;
               }
            }
            §-7§.background = true;
            addChild(§-7§);
            §]7§ = param2;
            while(true)
            {
               if(!_loc10_)
               {
                  if(§]7§ == null)
                  {
                     §§push(§§findproperty(§]_§));
                     §§push(§§findproperty(§,C§));
                     §§push("editor/DeleteLevelIcon.png");
                     §§push(§]D§);
                     if(_loc9_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§]_§ = new §§pop().§,C§(§§pop(),§§pop());
                     _loc6_ = new §?y§(§]_§);
                     _loc7_ = new §?y§(§-7§);
                     _loc8_ = null;
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc10_)
                           {
                              if(_loc8_ != null)
                              {
                                 _loc8_ = _loc8_;
                                 break;
                              }
                           }
                           _loc8_ = §&d§.§1$§();
                           if(_loc9_)
                           {
                              break;
                           }
                           break loop2;
                        }
                        _loc8_.add(_loc6_,new §+X§(0,§2u§.RIGHT),_loc7_);
                        if(_loc9_)
                        {
                           break;
                        }
                     }
                     _loc8_.add(_loc6_,new §4$§(false,0.5),_loc7_);
                     if(_loc9_)
                     {
                        addChild(§]_§);
                     }
                  }
                  §3!@§(param1);
                  if(_loc10_)
                  {
                     break;
                  }
               }
               §,!§ = param3;
               §=F§ = §&d§.§1$§();
               if(_loc9_)
               {
                  buttonMode = true;
                  if(_loc9_)
                  {
                     break loop0;
                  }
                  addr01d7:
                  §-7§.addEventListener(MouseEvent.CLICK,§#_§);
                  break;
               }
               break loop0;
            }
            §§goto(addr01ec);
         }
         §-7§.mouseEnabled = true;
         if(_loc9_)
         {
            §§goto(addr01d7);
         }
         addr01ec:
      }
      
      public function §3!@§(param1:String) : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               §-7§.text = param1;
               if(!_loc2_)
               {
                  break;
               }
            }
            while(true)
            {
               if(§]_§ != null)
               {
                  if(!_loc3_)
                  {
                     §]_§.x = §-7§.width;
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
               }
               addr008e:
               §=!0§ = param1;
               break;
            }
            §§goto(addr0095);
         }
         §§push(§]_§);
         §§push(§-7§.height - §]_§.height);
         if(_loc2_)
         {
            §§push(§§pop() / 2);
         }
         §§pop().y = §§pop();
         if(!_loc3_)
         {
            §§goto(addr008e);
         }
         addr0095:
         return param1;
      }
      
      public function §#_§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:* = null as String;
         var _loc4_:* = null as Error;
         while(true)
         {
            if(!_loc6_)
            {
               if(§]7§ != null)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  §]7§.§@!?§(param1);
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               else
               {
                  §§push(§8A§.§@!A§().§`e§(§=!0§));
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        §§push(§§pop());
                     }
                  }
                  _loc3_ = §§pop();
               }
            }
            try
            {
               Main.instance.§[W§ = null;
               if(!_loc6_)
               {
                  Main.instance.§,Z§(new §`!O§(§=!0§,_loc3_));
               }
               break;
            }
            catch(_loc_e_:Error)
            {
               _loc4_ = _loc_e_;
               if(_loc4_ as Error)
               {
                  Boot.lastError = _loc4_;
               }
               §'!E§.§@!A§().§>!W§(_loc4_.message);
               break;
            }
         }
      }
      
      public function §]D§(param1:Event = undefined) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc2_)
            {
               if(§]7§ != null)
               {
                  break;
               }
               §8A§.§@!A§().§1!R§(§=!0§,null);
               §=F§.remove(new §?y§(§-7§));
               §=F§.remove(new §?y§(§]_§));
            }
            §§push(§,!§);
            if(!_loc3_)
            {
               §§push(§§pop());
            }
            while(true)
            {
               if(§§pop() != null)
               {
                  §,!§(this);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               if(parent != null)
               {
                  if(!_loc2_)
                  {
                     break loop0;
                  }
                  parent.removeChild(this);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               §§push(§8A§.§@!A§().§8!%§(null));
               if(!_loc3_)
               {
                  §§push(§§pop());
               }
               if(§§pop() == §=!0§)
               {
                  if(_loc2_)
                  {
                     break;
                  }
               }
               break loop0;
            }
            §8A§.§@!A§().§`!4§();
            break;
         }
      }
   }
}

