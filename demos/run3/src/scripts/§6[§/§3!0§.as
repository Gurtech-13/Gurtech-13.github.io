package §6[§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §-!!§.§&!;§;
   import §-!!§.§+"§;
   import §2n§.§0"§;
   import §2n§.§2!R§;
   import §6!Q§.§"q§;
   import §6!Q§.§'!E§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Main;
   import flash.Boot;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §3!0§ extends §0"§
   {
      
      public var §6E§:§<!0§;
      
      public var §<A§:§<!0§;
      
      public var §?!Z§:Boolean;
      
      public var §'!A§:§5v§;
      
      public function §3!0§(param1:§5v§)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §?!Z§ = true;
            if(_loc3_)
            {
               super();
               while(true)
               {
                  if(_loc3_)
                  {
                     §'!A§ = param1;
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  visible = false;
                  if(_loc3_)
                  {
                     break;
                  }
               }
               addEventListener(MouseEvent.CLICK,§#_§);
            }
         }
      }
      
      public static function §%P§() : String
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:* = null as String;
         var _loc3_:* = 0;
         §§push(1);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc5_)
         {
            loop0:
            while(_loc2_ < 1000)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     _loc2_++;
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc3_ = §§pop();
               loop2:
               while(true)
               {
                  if(_loc4_)
                  {
                     while(true)
                     {
                        §§push("Level ");
                        if(_loc4_)
                        {
                           §§push(§§pop() + _loc3_);
                           if(_loc5_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop());
                        if(!_loc5_)
                        {
                           break;
                        }
                        addr0080:
                        _loc1_ = §§pop();
                        if(!_loc4_)
                        {
                           break loop2;
                        }
                     }
                     §§goto(addr0080);
                  }
                  while(true)
                  {
                     §§push(§8A§.§@!A§().§9q§(_loc1_));
                     if(_loc4_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     §§push(!§§pop());
                     break;
                  }
                  if(§§pop())
                  {
                     break;
                  }
                  continue loop0;
               }
               return _loc1_;
            }
         }
         return "TEMPORARY LEVEL";
      }
      
      public function §+8§(param1:int) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:int = 0;
         loop8:
         while(true)
         {
            loop9:
            while(true)
            {
               loop13:
               while(true)
               {
                  while(true)
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        §§push(3);
                        if(_loc4_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           param1 = 3;
                        }
                        §§push(param1);
                        if(!_loc3_)
                        {
                           break loop13;
                        }
                        §§push(30);
                        if(!_loc3_)
                        {
                           break loop9;
                        }
                        if(§§pop() <= §§pop())
                        {
                           break loop8;
                        }
                        §§push(int(30));
                     }
                     param1 = §§pop();
                     if(!_loc4_)
                     {
                        break loop8;
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr00cf);
               }
               §§goto(addr00ff);
            }
            while(true)
            {
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc4_)
                  {
                     §§goto(addr00da);
                  }
                  §§goto(addr00db);
               }
               §§goto(addr00b4);
            }
            §§goto(addr00ef);
         }
         §§push(false);
         if(_loc3_)
         {
            §§push(§?!Z§);
            if(!_loc4_)
            {
               §§push(!§§pop());
            }
            loop10:
            while(true)
            {
               loop11:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(§<A§ != null);
                        if(_loc4_)
                        {
                           break loop10;
                        }
                        §§push(Boolean(§§pop()));
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr0095:
                        _loc2_ = §<A§.§%!V§;
                        break loop11;
                     }
                     §§goto(addr00fe);
                  }
                  §§goto(addr00ff);
               }
               while(true)
               {
                  §§push(false);
                  break loop10;
               }
            }
            loop0:
            while(true)
            {
               if(_loc2_ > 1)
               {
                  if(_loc3_)
                  {
                     while(true)
                     {
                        §§pop();
                        §§push(param1);
                        if(!_loc4_)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                           }
                        }
                        while(true)
                        {
                           §§push(30);
                           break loop9;
                        }
                     }
                     addr00ef:
                     if(§§pop() != §§pop())
                     {
                        §<A§.§?F§(_loc2_);
                     }
                     addr00ff:
                     return param1;
                     addr00fe:
                     addr00b4:
                  }
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  addr00da:
               }
               addr00db:
               while(true)
               {
                  if(!§§pop())
                  {
                     break loop0;
                  }
                  _loc2_--;
                  break loop11;
               }
               §§goto(addr00ef);
               break loop11;
            }
            §§push(§<A§.§%!V§);
            if(!_loc4_)
            {
               §§goto(addr00ef);
               §§push(_loc2_);
            }
            §§goto(addr00ff);
         }
         §§goto(addr00b4);
      }
      
      public function §<!a§(param1:int) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = 0;
         loop0:
         while(true)
         {
            while(true)
            {
               while(true)
               {
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(1);
                     if(_loc4_)
                     {
                        break;
                     }
                     if(§§pop() >= §§pop())
                     {
                        continue loop4;
                     }
                     §§push(1);
                     if(_loc4_)
                     {
                        break loop0;
                     }
                  }
                  param1 = §§pop();
                  continue loop4;
               }
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  break loop4;
               }
               §§goto(addr008b);
            }
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(false);
                     if(_loc3_)
                     {
                        §§push(§?!Z§);
                        if(_loc3_)
                        {
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           §§pop();
                           §§push(§6E§ == null);
                           if(!_loc4_)
                           {
                              §§push(!§§pop());
                           }
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        §§push(§6E§.§%!V§);
                        if(_loc3_)
                        {
                           §§push(param1);
                           break loop2;
                        }
                        §§push(int(§§pop()));
                        if(_loc4_)
                        {
                           break loop4;
                        }
                        _loc2_ = §§pop();
                        §§push(true);
                        if(_loc2_ < 6)
                        {
                           break loop3;
                        }
                     }
                     §§pop();
                     if(_loc3_)
                     {
                        §§push(_loc2_);
                        break loop0;
                     }
                     §§goto(addr00bf);
                  }
                  §§goto(addr00cf);
               }
               §§goto(addr00d0);
            }
            §§goto(addr00bb);
         }
         addr00bb:
         §§push(§§pop() > 30);
         if(!_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         if(§§pop())
         {
            addr00bf:
            §§push(§<A§.§%!V§);
            if(!_loc4_)
            {
               return §§pop();
            }
         }
         else
         {
            addr00cf:
            §§push(param1);
         }
         addr00d0:
         return §§pop();
      }
      
      public function §@!?§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         while(true)
         {
            if(_loc7_)
            {
               §§push(§6!]§);
               if(!_loc6_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               if(!_loc7_)
               {
                  break;
               }
            }
            §^,§(null);
            break;
         }
         §§push(int(Math.floor(Number(Math.random()) * 4)));
         if(_loc7_)
         {
            §§push(§§pop() + 1);
            if(!_loc6_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(int(Math.ceil(8 / _loc2_)));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc7_)
               {
                  §§push(4);
                  if(_loc6_)
                  {
                     break;
                  }
                  if(§§pop() < _loc3_)
                  {
                     §§push(_loc3_);
                     if(!_loc6_)
                     {
                        break;
                     }
                     break loop1;
                  }
               }
               §§push(4);
               if(!_loc6_)
               {
                  break;
               }
               break loop1;
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         §§push(int(Math.floor(Number(Math.random()) * (int(Math.floor(24 / _loc2_)) - _loc4_ + 1))));
         if(!_loc6_)
         {
            §§push(§§pop() + _loc4_);
            if(_loc7_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §?!Z§ = true;
         while(true)
         {
            if(!_loc6_)
            {
               §<A§.§?F§(_loc2_);
               if(_loc7_)
               {
                  §6E§.§?F§(_loc5_);
                  if(_loc6_)
                  {
                     break;
                  }
                  §?!Z§ = false;
               }
            }
            param1.stopPropagation();
            stage.addEventListener(MouseEvent.CLICK,§9F§);
            if(_loc7_)
            {
               break;
            }
            §§goto(addr014d);
         }
         visible = true;
         addr014d:
      }
      
      public function §9F§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §6V§();
         }
      }
      
      public function §#_§(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      public function §6V§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               stage.removeEventListener(MouseEvent.CLICK,§9F§);
               if(!_loc2_)
               {
                  break;
               }
            }
            visible = false;
            break;
         }
      }
      
      public function §^#§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:* = null as Error;
         while(true)
         {
            §§push("layout-tunnel");
            §§push(§6E§.§%!V§);
            if(!_loc7_)
            {
               §§push(§§pop() + §§pop() + ",");
               if(_loc7_)
               {
                  break;
               }
               §§push(§<A§.§%!V§);
            }
            §§push(§§pop() + §§pop());
            if(_loc6_)
            {
               break;
            }
            §§goto(addr0058);
         }
         addr0058:
         var _loc3_:String = §§pop();
         while(true)
         {
            §§push(§3!0§.§%P§());
            if(_loc6_)
            {
               §§push(§§pop());
               if(_loc7_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            §8A§.§@!A§().§1!R§(_loc4_,_loc3_);
         }
         try
         {
            Main.instance.§[W§ = null;
            if(!_loc7_)
            {
               Main.instance.§,Z§(new §`!O§(_loc4_,_loc3_));
            }
         }
         catch(_loc_e_:Error)
         {
            _loc5_ = _loc_e_;
            if(_loc5_ as Error)
            {
               Boot.lastError = _loc5_;
            }
            §'!E§.§@!A§().§>!W§(_loc5_.message);
         }
         §6V§();
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:TextField = §&!;§.§9Q§(0,50,null,"New level");
         var _loc2_:§ 7§ = new §?y§(_loc1_);
         while(true)
         {
            if(_loc5_)
            {
               §&d§.§1$§().add(_loc2_,new §;!!§(30,§2u§.TOP));
               if(!_loc5_)
               {
                  break;
               }
            }
            addChild(_loc1_);
            if(!_loc6_)
            {
               §§push(§§findproperty(§6E§));
               §§push(§§findproperty(§<!0§));
               §§push(5);
               §§push(§+8§);
               if(_loc5_)
               {
                  §§push(§§pop());
               }
               §§pop().§6E§ = new §§pop().§<!0§(§§pop(),§§pop(),null,"Sides:",null,0);
            }
            break;
         }
         _loc2_ = new §?y§(§6E§);
         if(_loc5_)
         {
            §&d§.§1$§().add(_loc2_,new §;!!§(30,§2u§.LEFT));
         }
         _loc2_ = new §?y§(§6E§);
         var _loc3_:§ 7§ = new §?y§(_loc1_);
         while(true)
         {
            if(_loc5_)
            {
               §§push(§&d§.§1$§());
               §§push(_loc2_);
               §§push(§§findproperty(§+X§));
               §§push(30);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.BOTTOM),_loc3_);
               if(!_loc5_)
               {
                  break;
               }
            }
            addChild(§6E§);
            if(_loc5_)
            {
               §§push(§§findproperty(§<A§));
               §§push(§§findproperty(§<!0§));
               §§push(2);
               §§push(§<!a§);
               if(_loc5_)
               {
                  §§push(§§pop());
               }
               §§pop().§<A§ = new §§pop().§<!0§(§§pop(),§§pop(),null,"Tiles per side:",null,0);
            }
            break;
         }
         _loc2_ = new §?y§(§<A§);
         if(!_loc6_)
         {
            §&d§.§1$§().add(_loc2_,new §;!!§(30,§2u§.LEFT));
         }
         _loc2_ = new §?y§(§<A§);
         _loc3_ = new §?y§(§6E§);
         while(true)
         {
            if(_loc5_)
            {
               §§push(§&d§.§1$§());
               §§push(_loc2_);
               §§push(§§findproperty(§+X§));
               §§push(30);
               if(!_loc6_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.BOTTOM),_loc3_);
               if(!_loc5_)
               {
                  break;
               }
            }
            addChild(§<A§);
            break;
         }
         _loc2_ = new §?y§(_loc1_);
         _loc3_ = new §?y§(§<A§);
         if(_loc5_)
         {
            §&d§.§1$§().add(_loc2_,new §4$§(true,0.5),_loc3_);
         }
         §§push(§§findproperty(§+"§));
         §§push(§^#§);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc4_:§+"§ = new §§pop().§+"§(§§pop(),0,30,"Create");
         if(_loc5_)
         {
            §&d§.§1$§().add(new §?y§(_loc4_),new §"q§(11184810,6710886,3.6));
         }
         _loc2_ = new §?y§(_loc4_);
         _loc3_ = new §?y§(§<A§);
         if(!_loc6_)
         {
            §&d§.§1$§().add(_loc2_,new §4$§(true,0.5),_loc3_);
         }
         _loc2_ = new §?y§(_loc4_);
         _loc3_ = new §?y§(§<A§);
         if(!_loc6_)
         {
            §§push(§&d§.§1$§());
            §§push(_loc2_);
            §§push(§§findproperty(§+X§));
            §§push(30);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
            §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.BOTTOM),_loc3_);
            while(true)
            {
               if(_loc5_)
               {
                  addChild(_loc4_);
                  if(_loc6_)
                  {
                     break;
                  }
               }
               §!1§(new §?y§(§<A§),null,30);
               if(!_loc6_)
               {
                  break;
               }
            }
            §4l§(new §?y§(_loc4_),30);
         }
      }
   }
}

