package §>d§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §+!1§.§'!b§;
   import §+!1§.§[!9§;
   import §-!!§.§^!W§;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §4!8§.§1!3§;
   import §8!0§.§2_§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.menu.§ L§;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import nme3D.model.§7v§;
   import nme3D.model.Model;
   
   public class §=6§ extends §#l§
   {
      
      public static var §-6§:Boolean;
      
      public static var §<H§:§^!W§;
      
      public function §=6§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super(10,24,10,31);
         }
      }
      
      override public function §"!Y§(param1:int, param2:String) : String
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(§=6§.§<H§);
         §§push(Number(Math.random()));
         if(_loc5_)
         {
            §§push(§§pop() * 45);
         }
         §§pop().§2!D§ = §§pop();
         if(!_loc6_)
         {
            while(true)
            {
               §§push(§=6§.§<H§);
               §§push(0.8);
               if(!_loc6_)
               {
                  §§push(Number(Math.random()));
                  if(_loc5_)
                  {
                     §§push(§§pop() * 0.19999999999999996);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc6_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§7!;§ = §§pop();
            if(!_loc6_)
            {
               while(true)
               {
                  §§push(§=6§.§<H§);
                  §§push(0.4);
                  if(!_loc6_)
                  {
                     §§push(Number(Math.random()));
                     if(!_loc6_)
                     {
                        §§push(§§pop() * 0.19999999999999996);
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§pop().§"!D§ = §§pop();
            }
         }
         var _loc3_:§^!W§ = §=6§.§<H§;
         while(true)
         {
            §§push(§^!W§.§^!X§(_loc3_.§2!D§,_loc3_.§7!;§,_loc3_.§"!D§));
            if(_loc5_)
            {
               §§push(int(§§pop()));
               if(!_loc5_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push("color-0x");
            §§push(StringTools.hex(_loc4_,6));
            if(!_loc6_)
            {
               §§push(§§pop());
               if(_loc6_)
               {
                  break;
               }
            }
            §§push(§§pop() + §§pop());
            if(!_loc6_)
            {
               §§push("|");
               if(_loc5_)
               {
                  addr0115:
                  §§push(§§pop() + §§pop());
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                     §§push(param2);
                     break;
                  }
                  §§push(§§pop());
                  §§push("|power-0.8");
               }
               return §§pop() + §§pop();
            }
         }
         §§goto(addr0115);
      }
      
      override public function §^2§(param1:int) : Sprite
      {
         if(param1 == 2)
         {
            return new §`!Q§("Here for the candy?","Try Infinite Mode!");
         }
         return null;
      }
      
      override public function §?c§() : String
      {
         return "menu/holiday/CandyCorn.png";
      }
      
      override public function §]4§(param1:Number) : Model
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:* = null as §=s§;
         var _loc5_:* = null as §!!V§;
         var _loc6_:* = 0;
         var _loc7_:* = null as §=s§;
         var _loc8_:* = NaN;
         §§push(§7v§);
         §§push("text/model/CandyCorn.simple");
         §§push(§'!b§.§?!3§("CandyCorn.png"));
         §§push(param1);
         if(_loc10_)
         {
            §§push(§§pop() * 0.5);
         }
         var _loc2_:§7v§ = §§pop().§ p§(§§pop(),§§pop(),§§pop());
         var _loc4_:§'!Y§ = §2_§.§'!D§(_loc2_.vertices,"uv");
         if(_loc10_)
         {
            while(_loc4_.index < _loc4_.length)
            {
               _loc5_ = _loc4_.vertices;
               if(_loc10_)
               {
                  while(true)
                  {
                     §§push(_loc5_);
                     §§push(_loc5_.§5G§);
                     if(_loc10_)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.index);
                        if(_loc10_)
                        {
                           var _temp_2:* = §§pop();
                           §§push(_temp_2);
                           §§push(_temp_2);
                           if(!_loc9_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc6_ = §§pop();
                           if(!_loc9_)
                           {
                              §§push(§§pop() + 1);
                           }
                        }
                        §§pop().index = §§pop();
                        if(!_loc10_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() * _loc6_);
                     break;
                  }
                  §§pop().offset = §§pop();
                  if(_loc10_)
                  {
                     §§push(_loc4_.§+R§);
                     §§push(_loc5_.offset);
                     if(_loc10_)
                     {
                        §§push(§§pop() + _loc4_.§+^§);
                     }
                     §§pop().offset = §§pop();
                  }
               }
               _loc7_ = _loc4_.§+R§;
               _loc3_ = _loc7_;
               if(!_loc9_)
               {
                  §§push(1);
                  §§push(_loc3_.§@!Y§);
                  §§push(_loc3_.offset);
                  if(_loc10_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§push(§§pop()[§§pop()]);
                  if(_loc10_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc10_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc8_ = §§pop();
                  if(_loc10_)
                  {
                     §§push(_loc3_.§@!Y§);
                     §§push(_loc3_.offset);
                     if(_loc10_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§pop()[§§pop()] = _loc8_;
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

