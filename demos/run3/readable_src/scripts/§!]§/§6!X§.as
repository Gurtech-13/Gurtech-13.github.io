package §!]§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §-!!§.§2!B§;
   import layout3d.PositionData3D;
   import game.§+!7§;
   import game.§=!X§;
   import game.Game;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §>T§.§[C§;
   import §@]§.§4$§;
   import §[!P§.§`!W§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.character.§]!W§;
   import com.player03.run3.save.§0!?§;
   import com.player03.run3.save.§9t§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import unitsystem.§7o§;
   
   public class §6!X§ extends Sprite
   {
      
      public static var init__:Boolean;
      
      public static var §+z§:Rectangle;
      
      public static var §1]§:Point;
      
      public var §1!E§:Boolean;
      
      public var image:Bitmap;
      
      public var character:CharacterDef;
      
      public var §0!B§:Boolean;
      
      public function §6!X§(param1:CharacterDef)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         while(true)
         {
            if(_loc5_)
            {
               §0!B§ = false;
               if(!_loc5_)
               {
                  break;
               }
               §1!E§ = false;
               if(!_loc6_)
               {
                  super();
               }
               mouseEnabled = false;
            }
            mouseChildren = false;
            character = param1;
            if(_loc5_)
            {
               break;
            }
            §§goto(addr0076);
         }
         §§push(§§findproperty(image));
         §§push(§2!B§);
         §§push(param1.§,!-§());
         if(_loc5_)
         {
            §§push(§§pop());
         }
         §§pop().image = §§pop().§83§(§§pop());
         addr0076:
         var _loc2_:§ 7§ = new §?y§(image);
         §§push(image.width / §&d§.§1$§().scale.x);
         if(_loc5_)
         {
            §§push(§§pop() * 0.45);
         }
         var _loc3_:* = §§pop();
         if(!_loc6_)
         {
            while(true)
            {
               §§push(§&d§.§1$§());
               §§push(_loc2_);
               if(!_loc6_)
               {
                  if(_loc3_ == null)
                  {
                     §§push(new §;R§(true));
                     break;
                  }
               }
               §§push(new §`!W§(true,_loc3_));
               break;
            }
            §§pop().add(§§pop(),§§pop());
         }
         _loc2_ = new §?y§(image);
         §§push(image.height / §&d§.§1$§().scale.y);
         if(!_loc6_)
         {
            §§push(§§pop() * 0.45);
         }
         _loc3_ = §§pop();
         if(_loc5_)
         {
            while(true)
            {
               §§push(§&d§.§1$§());
               §§push(_loc2_);
               if(_loc5_)
               {
                  if(_loc3_ == null)
                  {
                     §§push(new §;R§(false));
                     break;
                  }
               }
               §§push(new §`!W§(false,_loc3_));
               break;
            }
            §§pop().add(§§pop(),§§pop());
         }
         _loc2_ = new §?y§(image);
         var _loc4_:§ 7§ = new § 6§(§6!X§.§+z§);
         if(_loc5_)
         {
            §&d§.§1$§().add(_loc2_,new §4$§(true,0.5),_loc4_);
         }
         _loc2_ = new §?y§(image);
         _loc4_ = new § 6§(§6!X§.§+z§);
         if(_loc5_)
         {
            §&d§.§1$§().add(_loc2_,new §4$§(false,0.5),_loc4_);
            while(true)
            {
               if(!_loc6_)
               {
                  addChild(image);
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               visible = false;
               break;
            }
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:* = false;
         var _loc3_:* = null as §0!?§;
         var _loc4_:* = null as §4N§;
         var _loc5_:* = null as Path;
         var _loc6_:* = null as §9t§;
         var _loc1_:CharacterDef = character;
         loop0:
         while(true)
         {
            if(!_loc8_)
            {
               visible = false;
               if(!_loc9_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(§0!B§);
               if(!_loc8_)
               {
                  §§push(!§§pop());
                  if(!_loc9_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        break loop0;
                     }
                     _loc3_ = _loc1_.§>t§;
                     if(_loc8_)
                     {
                        break loop0;
                     }
                     loop2:
                     while(true)
                     {
                        §§push(Save.§@!A§().exists(_loc3_.§=-§));
                        if(_loc9_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc8_)
                           {
                              break;
                           }
                           §§push(Boolean(§§pop()));
                           if(_loc8_)
                           {
                              break;
                           }
                        }
                        _loc2_ = §§pop();
                        while(true)
                        {
                           if(!_loc8_)
                           {
                              break loop0;
                           }
                           addr01ae:
                           §§push(§1!E§);
                           break loop2;
                        }
                        §§goto(addr01b8);
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr01b8:
                           while(true)
                           {
                              §§push(_loc1_.§,!-§());
                              if(_loc9_)
                              {
                                 §§push(§§pop());
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                              }
                              addr01eb:
                              §§push(§§pop());
                              if(_loc9_)
                              {
                                 break;
                              }
                              §§goto(addr01f5);
                           }
                           §§goto(addr01f3);
                        }
                        else
                        {
                           §§push(_loc1_.§@>§());
                           if(_loc9_)
                           {
                              §§goto(addr01eb);
                           }
                        }
                        addr01f3:
                        §§goto(addr01f5);
                     }
                     addr01f5:
                     var _loc7_:* = §§pop();
                     if(!_loc8_)
                     {
                        image.bitmapData = §2!B§.getBitmapData(_loc7_);
                     }
                     return;
                  }
                  §§push(false);
                  if(_loc8_)
                  {
                     break;
                  }
               }
               §§push(Boolean(§§pop()));
               break;
            }
            _loc2_ = §§pop();
            break;
         }
         while(true)
         {
            §§push(_loc2_);
            if(_loc9_)
            {
               if(§§pop())
               {
                  if(_loc8_)
                  {
                     break;
                  }
                  _loc4_ = §4N§.§@!A§();
                  _loc3_ = _loc1_.§>t§;
                  _loc5_ = _loc4_.§;O§(Save.§@!A§().get(_loc3_.§=-§,_loc3_.§ -§));
                  while(true)
                  {
                     if(_loc9_)
                     {
                        if(_loc5_ == null)
                        {
                           break;
                        }
                     }
                     _loc6_ = _loc1_.§ j§;
                     if(!_loc8_)
                     {
                        _loc5_.§;3§(int(Save.§@!A§().get(_loc6_.§=-§,int(_loc6_.§ -§))),null,§6!X§.§1]§);
                        if(!_loc8_)
                        {
                           x = §6!X§.§1]§.x;
                           if(_loc8_)
                           {
                              break;
                           }
                        }
                        y = §6!X§.§1]§.y;
                        if(!_loc9_)
                        {
                           break;
                        }
                     }
                     visible = true;
                     break;
                  }
               }
               if(_loc1_.§[P§ != null)
               {
                  if(_loc8_)
                  {
                     break;
                  }
                  _loc1_ = _loc1_.§[P§.§?7§();
               }
               §1!E§ = _loc1_ == CharacterRegistry.§;<§;
               if(!_loc9_)
               {
                  break;
               }
               §§goto(addr01ae);
            }
            §§goto(addr01b4);
         }
         §§goto(addr01b8);
      }
   }
}

