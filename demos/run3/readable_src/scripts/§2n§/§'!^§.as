package §2n§
{
   import §!!$§.§ 6§;
   import §!!$§.§4o§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §-!!§.§&!;§;
   import §-!!§.§,C§;
   import §-!!§.§2!B§;
   import §6!Q§.§^F§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import §[!P§.§@$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.TunnelSection;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   
   public class §'!^§ extends §0"§
   {
      
      public var §9_§:TunnelSection;
      
      public var rejectedCharacter:CharacterDef;
      
      public function §'!^§(param1:TunnelSection, param2:CharacterDef)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            §9_§ = param1;
            if(_loc4_)
            {
               rejectedCharacter = param2;
               if(!_loc3_)
               {
                  super();
               }
            }
         }
      }
      
      public function §8t§(param1:CharacterDef, param2:Event) : void
      {
         CharacterRegistry.§3§(param1);
      }
      
      override public function §^g§() : void
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc4_:* = null as StringMap;
         var _loc7_:* = null as § 7§;
         var _loc9_:* = null as DisplayObject;
         var _loc10_:* = null as Bitmap;
         var _loc14_:* = null as CharacterDef;
         var _loc15_:* = null as § 7§;
         if(!_loc16_)
         {
            layout.add(new §?y§(this),new §30§(true,0.85),new §4o§(§!n§.§&#§));
         }
         while(true)
         {
            §§push("restrictionReason_");
            if(!_loc16_)
            {
               §§push(§§pop() + rejectedCharacter.name);
               if(!_loc16_)
               {
                  §§push(§§pop());
                  if(!_loc17_)
                  {
                     break;
                  }
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc1_:* = §§pop();
         var _loc2_:StringMap = §9_§.params;
         while(true)
         {
            while(true)
            {
               if(!_loc16_)
               {
                  §§push(_loc1_);
                  if(!_loc17_)
                  {
                     break;
                  }
                  if(!(§§pop() in StringMap.§+!#§))
                  {
                     §§push(_loc2_.h[_loc1_]);
                     break;
                  }
               }
               §§push(_loc2_.getReserved(_loc1_));
               if(!_loc16_)
               {
                  break;
               }
               continue loop4;
            }
            §§push(§§pop());
            continue loop4;
         }
         var _loc3_:* = §§pop();
         loop4:
         while(true)
         {
            while(true)
            {
               §§push(_loc3_);
               §§push(null);
               if(_loc17_)
               {
                  §§push(§§pop());
                  if(!_loc17_)
                  {
                     break;
                  }
                  if(§§pop() == §§pop())
                  {
                     _loc4_ = §9_§.params;
                     loop16:
                     while(true)
                     {
                        if(_loc17_)
                        {
                           while(true)
                           {
                              §§push("restrictionReason");
                              if(_loc17_)
                              {
                                 if(§§pop() in StringMap.§+!#§)
                                 {
                                    if(!_loc16_)
                                    {
                                       addr0112:
                                       §§push(_loc4_.getReserved("restrictionReason"));
                                       if(_loc17_)
                                       {
                                          §§push(§§pop());
                                       }
                                       _loc3_ = §§pop();
                                       if(_loc17_)
                                       {
                                       }
                                    }
                                    break loop16;
                                 }
                                 §§push(_loc4_.h["restrictionReason"]);
                                 if(_loc16_)
                                 {
                                    break;
                                 }
                              }
                              §§push(§§pop());
                              break;
                           }
                           _loc3_ = §§pop();
                           break;
                        }
                        §§goto(addr0112);
                     }
                  }
                  §§push(_loc3_);
                  if(_loc16_)
                  {
                     break loop4;
                  }
                  §§push(null);
               }
               §§push(§§pop());
               break;
            }
            if(§§pop() == §§pop())
            {
               if(_loc16_)
               {
                  addr018a:
                  §§push(_loc3_);
                  break;
               }
               _loc3_ = "";
               §§goto(addr019a);
            }
            else
            {
               §§push(StringTools.replace(_loc3_,"${name}",rejectedCharacter.§]w§));
               if(_loc17_)
               {
                  _loc3_ = §§pop();
                  if(_loc17_)
                  {
                     §§goto(addr018a);
                  }
                  §§goto(addr019a);
               }
            }
            §§goto(addr019b);
         }
         §§push(" ");
         if(_loc17_)
         {
            _loc3_ = §§pop() + §§pop();
            addr019a:
            addr019b:
            §§push(_loc3_);
            §§push("Choose a different character to continue:");
         }
         §§push(§§pop() + §§pop());
         if(_loc17_)
         {
            §§push(§§pop());
         }
         _loc3_ = §§pop();
         var _loc5_:TextField = §&!;§.§9Q§(0,36,null,_loc3_,width);
         var _loc6_:* = null;
         loop6:
         while(true)
         {
            while(true)
            {
               if(!_loc16_)
               {
                  if(_loc6_ != null)
                  {
                     break;
                  }
                  if(!_loc17_)
                  {
                     break loop6;
                  }
               }
               _loc6_ = int(Number(_loc5_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc5_),new §=!]§(int(_loc6_)));
            break;
         }
         _loc7_ = new §?y§(_loc5_);
         if(!_loc16_)
         {
            §&d§.§1$§().add(_loc7_,new §@$§(true,80));
         }
         _loc7_ = new §?y§(_loc5_);
         if(_loc17_)
         {
            §&d§.§1$§().add(_loc7_,new §4$§(true,0.5));
         }
         _loc7_ = new §?y§(_loc5_);
         if(!_loc16_)
         {
            §&d§.§1$§().add(_loc7_,new §;!!§(40,§2u§.TOP));
            if(_loc17_)
            {
               addChild(_loc5_);
            }
         }
         var _loc8_:Sprite = new Sprite();
         var _loc11_:DisplayObject = null;
         §§push(0);
         if(_loc17_)
         {
            §§push(int(§§pop()));
         }
         var _loc12_:* = §§pop();
         var _loc13_:Vector.<CharacterDef> = CharacterRegistry.available;
         if(_loc17_)
         {
            loop0:
            while(_loc12_ < int(_loc13_.length))
            {
               _loc14_ = _loc13_[_loc12_];
               loop8:
               while(true)
               {
                  if(_loc17_)
                  {
                     _loc12_++;
                     loop9:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc17_)
                           {
                              §§push(§9_§.§%f§(_loc14_));
                              if(!_loc17_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                              if(_loc16_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 continue loop0;
                              }
                              if(!_loc17_)
                              {
                                 break loop9;
                              }
                           }
                           §§push(false);
                           if(!_loc16_)
                           {
                              §§push(_loc14_.§<!,§());
                              if(!_loc16_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 if(!_loc16_)
                                 {
                                    §§pop();
                                    if(!_loc17_)
                                    {
                                       break loop9;
                                    }
                                    §§push(_loc14_.§#U§);
                                    if(!_loc16_)
                                    {
                                       §§push(!§§pop());
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           break;
                        }
                        if(§§pop())
                        {
                           break;
                        }
                        §§push(§2!B§);
                        §§push(_loc14_.§@>§());
                        if(!_loc16_)
                        {
                           §§push(§§pop());
                        }
                        _loc9_ = §§pop().§83§(§§pop());
                        loop11:
                        while(true)
                        {
                           if(!_loc16_)
                           {
                              loop12:
                              while(true)
                              {
                                 if(_loc11_ != null)
                                 {
                                    if(!_loc17_)
                                    {
                                       break;
                                    }
                                    _loc7_ = new §?y§(_loc9_);
                                    _loc15_ = new §?y§(_loc11_);
                                    if(!_loc16_)
                                    {
                                       §&d§.§1$§().add(_loc7_,new §+X§(4,§2u§.RIGHT),_loc15_);
                                    }
                                 }
                                 _loc8_.addChild(_loc9_);
                                 loop13:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(_loc17_)
                                       {
                                          §§push(false);
                                          if(!_loc16_)
                                          {
                                             §§push(_loc14_.§<!,§());
                                             if(_loc17_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!§§pop())
                                             {
                                                break;
                                             }
                                             if(!_loc17_)
                                             {
                                                break loop13;
                                             }
                                          }
                                          §§pop();
                                          if(_loc16_)
                                          {
                                             break loop12;
                                          }
                                       }
                                       §§push(_loc14_.§[t§ == null);
                                       if(_loc17_)
                                       {
                                          break loop13;
                                       }
                                       §§goto(addr049c);
                                    }
                                    if(§§pop())
                                    {
                                       break loop12;
                                    }
                                    _loc10_ = §2!B§.§83§("menu/characterselection/LockedCharacterOverlay.png");
                                    break loop11;
                                 }
                                 §§push(!§§pop());
                                 if(!_loc16_)
                                 {
                                    addr049c:
                                    §§push(Boolean(§§pop()));
                                 }
                                 break loop14;
                              }
                           }
                           _loc10_ = §2!B§.§83§(_loc14_.§[t§);
                           break;
                        }
                        _loc7_ = new §?y§(_loc10_);
                        _loc15_ = new §?y§(_loc9_);
                        if(_loc17_)
                        {
                           §&d§.§1$§().add(_loc7_,new §4$§(true,0.5),_loc15_);
                           if(_loc16_)
                           {
                              break loop8;
                           }
                        }
                        _loc8_.addChild(_loc10_);
                        break loop8;
                     }
                  }
                  break loop9;
               }
               _loc11_ = _loc9_;
            }
         }
         _loc7_ = new §?y§(_loc8_);
         _loc15_ = new §?y§(_loc5_);
         if(!_loc16_)
         {
            §&d§.§1$§().add(_loc7_,new §+X§(12,§2u§.BOTTOM),_loc15_);
         }
         _loc7_ = new §?y§(_loc8_);
         while(true)
         {
            if(_loc17_)
            {
               §&d§.§1$§().add(_loc7_,new §4$§(true,0.5));
               if(_loc16_)
               {
                  break;
               }
            }
            addChild(_loc8_);
            if(!_loc16_)
            {
               break;
            }
            §§goto(addr05c0);
         }
         §4l§(new §?y§(_loc8_),40,null,6);
         addr05c0:
      }
   }
}

