package §<B§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §-!!§.§&!;§;
   import §-!!§.§2!B§;
   import §4n§.§3!G§;
   import §4n§.Achievement;
   import §4n§.Achievements;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §?!6§.§-!H§;
   import §@]§.§+X§;
   import §[!P§.§30§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.§8!M§;
   import com.player03.run3.menu.§[!<§;
   import com.player03.run3.save.§]k§;
   import flash.Lib;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxe.ds.IntMap;
   
   public class §0!V§ extends §6!_§
   {
      
      public var textField2:TextField;
      
      public var §-7§:TextField;
      
      public var §^A§:Shape;
      
      public function §0!V§()
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc7_)
            {
               while(true)
               {
                  if(!§2K§)
                  {
                     if(!_loc7_)
                     {
                        break;
                     }
                     §2K§ = function():Number
                     {
                        var _temp_1:* = true;
                        var _loc1_:Boolean = false;
                        var _loc2_:Boolean = _temp_1;
                        §§push(Achievements.§ ![§());
                        if(_loc2_)
                        {
                           §§push(int(§§pop()));
                        }
                        §§push(Achievements.§ !J§.length);
                        if(!_loc1_)
                        {
                           §§push(int(§§pop()));
                        }
                        if(§§pop() < §§pop())
                        {
                           §§push(0.8);
                           if(!_loc1_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           return 0.4;
                        }
                        return §§pop();
                     };
                     if(_loc8_)
                     {
                        break loop0;
                     }
                  }
                  super();
                  if(_loc7_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            §-7§ = §&!;§.§9Q§(16777215,40,null,"413/612",null,null,null,null,"right");
            break;
         }
         var _loc1_:TextField = §-7§;
         var _loc2_:* = null;
         loop2:
         while(true)
         {
            if(_loc7_)
            {
               while(true)
               {
                  if(_loc2_ == null)
                  {
                     if(_loc8_)
                     {
                        break;
                     }
                     _loc2_ = int(Number(_loc1_.defaultTextFormat.size));
                  }
                  §&d§.§1$§().add(new §?y§(_loc1_),new §=!]§(int(_loc2_)));
                  if(_loc7_)
                  {
                     break;
                  }
                  break loop2;
               }
            }
            addChild(§-7§);
            break;
         }
         var _loc3_:Bitmap = §2!B§.§83§("menu/Achievements.png");
         var _loc4_:§ 7§ = new §?y§(_loc3_);
         var _loc5_:§ 7§ = new §?y§(§-7§);
         while(true)
         {
            if(!_loc8_)
            {
               §&d§.§1$§().add(_loc4_,new §+X§(0,§2u§.RIGHT),_loc5_);
               if(!_loc7_)
               {
                  break;
               }
               addChild(_loc3_);
               if(_loc8_)
               {
                  break;
               }
            }
            textField2 = §&!;§.§9Q§(16777215,40,null,"??? more power cells to earn!",Lib.current.stage.stageWidth * 0.35,null,null,null,"right");
            break;
         }
         _loc1_ = textField2;
         _loc2_ = null;
         if(_loc7_)
         {
            while(true)
            {
               if(_loc2_ == null)
               {
                  if(_loc8_)
                  {
                     break;
                  }
                  _loc2_ = int(Number(_loc1_.defaultTextFormat.size));
               }
               §&d§.§1$§().add(new §?y§(_loc1_),new §=!]§(int(_loc2_)));
               break;
            }
         }
         _loc4_ = new §?y§(textField2);
         _loc5_ = new §?y§(_loc3_);
         if(_loc7_)
         {
            §&d§.§1$§().add(_loc4_,§^`§.§ !P§(§2u§.RIGHT),_loc5_);
         }
         _loc4_ = new §?y§(textField2);
         if(_loc7_)
         {
            §&d§.§1$§().add(_loc4_,new §30§(true,0.35));
         }
         _loc4_ = new §?y§(textField2);
         _loc5_ = new §?y§(_loc3_);
         if(_loc7_)
         {
            §&d§.§1$§().add(_loc4_,new §+X§(0,§2u§.BOTTOM),_loc5_);
            if(_loc7_)
            {
               addChild(textField2);
            }
         }
         var _loc6_:Shape = new Shape();
         §<!T§.fillRect(_loc6_,§^F§.INVISIBLE,null,null,null,new §?y§(§-7§));
         if(!_loc8_)
         {
            addChildAt(_loc6_,0);
            if(!_loc8_)
            {
               §^A§ = new Shape();
            }
         }
         §<!T§.fillRect(§^A§,§^F§.INVISIBLE,null,null,null,new §?y§(textField2));
         addChildAt(§^A§,1);
         buttonMode = true;
         useHandCursor = true;
         addEventListener(MouseEvent.CLICK,§1!S§);
      }
      
      public function §1!S§(param1:Event) : void
      {
         §[!<§.§@!A§().§4X§(§3!G§.§@!A§());
      }
      
      override public function reset() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc5_:* = null as Achievement;
         var _loc6_:* = null as §]k§;
         §§push(0);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(0);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = new §-!H§(Achievements.§&!#§.h);
         if(!_loc9_)
         {
            loop0:
            while(Boolean(_loc4_.hasNext()))
            {
               _loc5_ = _loc4_.next();
               while(true)
               {
                  if(!_loc9_)
                  {
                     §§push(_loc5_.§!O§());
                     if(_loc8_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        continue loop0;
                     }
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  _loc1_++;
                  break;
               }
               _loc6_ = _loc5_.§3!X§;
               if(_loc8_)
               {
                  §§push(Boolean(Save.§@!A§().get(_loc6_.§=-§,Boolean(_loc6_.§ -§))));
                  if(!_loc9_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!_loc9_)
                  {
                     _loc2_++;
                     if(!_loc8_)
                     {
                        continue;
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc8_)
                  {
                     §§push(§§pop() + _loc5_.payout);
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc3_ = §§pop();
            }
         }
         §§push(Std);
         §§push(_loc1_);
         if(_loc8_)
         {
            §§push(§§pop() - _loc2_);
         }
         §§push(§§pop().string(§§pop()));
         if(_loc8_)
         {
            §§push(§§pop());
         }
         while(true)
         {
            §§push(§§pop() + "/");
            if(_loc8_)
            {
               §§push(§§pop());
               if(_loc9_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc7_:* = §§pop();
         §-7§.text = _loc7_ + ("" + _loc1_);
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               if(_loc8_)
               {
                  loop6:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc9_)
                        {
                           §§push(0);
                           if(!_loc8_)
                           {
                              break;
                           }
                           if(§§pop() > §§pop())
                           {
                              textField2.text = "" + _loc3_ + " power cells left to earn!";
                              if(!_loc9_)
                              {
                                 break loop5;
                              }
                              break loop6;
                           }
                           if(textField2.parent == null)
                           {
                              break loop5;
                           }
                           §§push(_loc1_);
                        }
                        §§push(Achievements.§ !J§.length);
                        if(_loc8_)
                        {
                           break;
                        }
                        addr019d:
                        if(§§pop() < §§pop())
                        {
                           textField2.text = "Unlock new characters for even more achievements.";
                           break loop6;
                        }
                        textField2.text = "Congrats - you earned all the achievements!";
                        if(!_loc9_)
                        {
                           break loop6;
                        }
                        break loop4;
                     }
                     §§goto(addr019d);
                  }
               }
               break loop6;
            }
            return;
         }
         §^A§.graphics.beginFill(0,0);
         §^A§.graphics.drawRect(textField2.x,textField2.y,textField2.width,textField2.height);
         break loop5;
      }
   }
}

