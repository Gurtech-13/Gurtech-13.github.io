package §-v§
{
   import §!!$§.§?y§;
   import §-!!§.§&!;§;
   import §-!!§.§,C§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §[!P§.§@$§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.level.Level;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import unitsystem.§7o§;
   
   public class §3!B§ extends Sprite
   {
      
      public var §6#§:TextField;
      
      public var §`W§:Sprite;
      
      public function §3!B§(param1:String, param2:Number, param3:int, param4:Boolean, param5:Boolean = false)
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc8_:* = null as DisplayObject;
         var _loc12_:* = 0;
         var _loc13_:* = null as § 7§;
         var _loc14_:* = null as § 7§;
         var _loc15_:* = null as §&d§;
         while(true)
         {
            if(_loc16_)
            {
               super();
               if(_loc17_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(§§findproperty(§6#§));
               §§push(§&!;§);
               §§push(param3);
               §§push(param2);
               §§push(null);
               if(_loc16_)
               {
                  if(!§9'§.§@!A§().§?!;§.§ G§)
                  {
                     §§push("Play on Kongregate to ");
                     break;
                  }
               }
               §§push("Log in to ");
               break;
            }
            §§push(§§pop() + param1);
            if(param4)
            {
               §§push("!");
               if(_loc16_)
               {
               }
            }
            else
            {
               §§push(":");
            }
            §§pop().§6#§ = §§pop().§9Q§(§§pop(),§§pop(),§§pop(),§§pop() + §§pop(),null,null,null,null,null,false);
            break;
         }
         var _loc6_:TextField = §6#§;
         var _loc7_:* = null;
         if(_loc16_)
         {
            while(true)
            {
               if(_loc7_ == null)
               {
                  if(_loc17_)
                  {
                     break;
                  }
                  _loc7_ = int(Number(_loc6_.defaultTextFormat.size));
               }
               §&d§.§1$§().add(new §?y§(_loc6_),new §=!]§(int(_loc7_)));
               if(!_loc17_)
               {
                  break;
               }
            }
            §`W§ = new Sprite();
            if(!_loc17_)
            {
               §`W§.addChild(new §,C§("menu/KongregateButton.png",§]!V§));
            }
         }
         var _loc9_:DisplayObject = null;
         §§push(0);
         if(!_loc17_)
         {
            §§push(int(§§pop()));
         }
         var _loc10_:* = §§pop();
         var _loc11_:int = int(§`W§.numChildren);
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  if(_loc16_)
                  {
                     loop0:
                     for(; _loc10_ < _loc11_; _loc9_ = _loc8_)
                     {
                        §§push(_loc10_);
                        if(_loc16_)
                        {
                           _loc10_++;
                           if(!_loc17_)
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        _loc12_ = §§pop();
                        _loc8_ = §`W§.getChildAt(_loc12_);
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc17_)
                              {
                                 if(!param5)
                                 {
                                    break;
                                 }
                                 if(!_loc16_)
                                 {
                                    break loop7;
                                 }
                              }
                              _loc13_ = new §?y§(_loc8_);
                              _loc14_ = new §?y§(§6#§);
                              if(_loc16_)
                              {
                                 §&d§.§1$§().add(_loc13_,new §@$§(false,0),_loc14_);
                                 if(!_loc17_)
                                 {
                                    §"!9§.§]!A§(new §?y§(_loc8_));
                                 }
                              }
                              break;
                           }
                           if(_loc9_ != null)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        _loc13_ = new §?y§(_loc8_);
                        _loc14_ = new §?y§(_loc9_);
                        if(_loc16_)
                        {
                           §&d§.§1$§().add(_loc13_,new §+X§(3,§2u§.RIGHT),_loc14_);
                        }
                     }
                     if(!_loc17_)
                     {
                        if(!param4)
                        {
                           _loc13_ = new §?y§(§`W§);
                           _loc14_ = new §?y§(§6#§);
                           _loc15_ = null;
                           while(true)
                           {
                              if(_loc16_)
                              {
                                 if(_loc15_ != null)
                                 {
                                    _loc15_ = _loc15_;
                                    break;
                                 }
                              }
                              _loc15_ = §&d§.§1$§();
                              if(!_loc17_)
                              {
                                 break;
                              }
                              break loop6;
                           }
                           _loc15_.add(_loc13_,new §+X§(12,§2u§.RIGHT),_loc14_);
                           if(!_loc17_)
                           {
                              _loc15_.add(_loc13_,new §4$§(false,0.5),_loc14_);
                           }
                           break;
                        }
                     }
                  }
                  _loc13_ = new §?y§(§`W§);
                  _loc14_ = new §?y§(§6#§);
                  _loc15_ = null;
                  while(true)
                  {
                     if(_loc16_)
                     {
                        if(_loc15_ != null)
                        {
                           _loc15_ = _loc15_;
                           break;
                        }
                     }
                     _loc15_ = §&d§.§1$§();
                     if(_loc16_)
                     {
                        break;
                     }
                     break loop4;
                  }
                  _loc15_.add(_loc13_,new §+X§(12,§2u§.BOTTOM),_loc14_);
                  if(!_loc17_)
                  {
                     _loc15_.add(_loc13_,new §4$§(true,0.5),_loc14_);
                     if(!_loc17_)
                     {
                        break;
                     }
                  }
                  break loop5;
               }
               addChild(§6#§);
               if(_loc16_)
               {
                  break;
               }
               break loop4;
            }
            addChild(§`W§);
            break;
         }
      }
      
      public function §]!V§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:§9'§ = §9'§.§@!A§();
         if(!_loc3_)
         {
            §7o§.instance.§+D§(true);
            if(_loc4_)
            {
               if(§9'§.§@!A§().§?!;§.§ G§)
               {
                  if(_loc4_)
                  {
                     _loc2_.§?!;§.showRegistrationBox();
                     if(_loc4_)
                     {
                     }
                  }
               }
               else
               {
                  _loc2_.§+W§();
               }
            }
         }
      }
   }
}

