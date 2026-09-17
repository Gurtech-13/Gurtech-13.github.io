package §-v§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §-!!§.§&!;§;
   import §-!!§.§2!B§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class §!!;§ extends Sprite
   {
      
      public var §-7§:TextField;
      
      public var §-!0§:Bitmap;
      
      public var §[X§:Bitmap;
      
      public var §'U§:Bitmap;
      
      public var §2H§:Bitmap;
      
      public function §!!;§()
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         super();
         while(true)
         {
            if(!_loc5_)
            {
               §-!0§ = §2!B§.§83§("currency/SmallPile.png");
               addChild(§-!0§);
               §[X§ = §2!B§.§83§("currency/MediumPile.png");
               addChild(§[X§);
               if(_loc6_)
               {
                  §'U§ = §2!B§.§83§("currency/LargePile.png");
                  addChild(§'U§);
               }
               §2H§ = §2!B§.§83§("currency/HugePile.png");
               if(_loc5_)
               {
                  break;
               }
            }
            addChild(§2H§);
            if(!_loc5_)
            {
               §-7§ = §&!;§.§9Q§(0,40,null,"01234567");
               if(_loc6_)
               {
                  §-7§.text = "";
               }
            }
            break;
         }
         var _loc1_:TextField = §-7§;
         var _loc2_:* = null;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  if(_loc2_ != null)
                  {
                     break;
                  }
                  if(_loc5_)
                  {
                     break loop1;
                  }
               }
               _loc2_ = int(Number(_loc1_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc1_),new §=!]§(int(_loc2_)));
            break;
         }
         var _loc3_:§ 7§ = new §?y§(§-7§);
         var _loc4_:§ 7§ = new §?y§(§-!0§);
         if(_loc6_)
         {
            §&d§.§1$§().add(_loc3_,new §+X§(4,§2u§.RIGHT),_loc4_);
         }
         _loc3_ = new §?y§(§-7§);
         _loc4_ = new §?y§(§-!0§);
         while(true)
         {
            if(!_loc5_)
            {
               §&d§.§1$§().add(_loc3_,new §4$§(false,0.5),_loc4_);
               if(!_loc5_)
               {
                  addChild(§-7§);
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            visible = false;
            break;
         }
      }
      
      public function §4t§(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §-!0§.visible = false;
         §[X§.visible = false;
         §'U§.visible = false;
         §2H§.visible = false;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc3_)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc3_)
                                 {
                                    §§push(0);
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    if(§§pop() <= §§pop())
                                    {
                                       break loop3;
                                    }
                                    §§push(param1);
                                    if(_loc3_)
                                    {
                                       §§push(15);
                                       if(!_loc3_)
                                       {
                                          break loop5;
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             §-!0§.visible = true;
                                             break loop3;
                                          }
                                          break loop4;
                                       }
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                          break loop2;
                                       }
                                    }
                                 }
                                 §§push(40);
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 break loop5;
                              }
                              if(§§pop() < §§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    §[X§.visible = true;
                                    if(!_loc2_)
                                    {
                                       break loop3;
                                    }
                                    break loop0;
                                 }
                                 break loop3;
                              }
                              §§push(param1);
                              break loop2;
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr00b9);
                     }
                  }
                  addr00af:
                  if(§§pop() < 100)
                  {
                     if(!_loc2_)
                     {
                        addr00b9:
                        §'U§.visible = true;
                        if(_loc3_)
                        {
                           break loop3;
                        }
                        break;
                     }
                     break loop3;
                  }
                  §2H§.visible = true;
                  if(_loc3_)
                  {
                     break loop3;
                  }
                  break loop0;
               }
               break loop3;
            }
            visible = true;
            break;
         }
      }
   }
}

