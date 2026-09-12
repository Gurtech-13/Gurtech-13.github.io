package §6!Q§
{
   import § 0§.§-!N§;
   import §!!$§.§?y§;
   import §%!Q§.§+#§;
   import §-d§.§!!-§;
   import §-v§.§+'§;
   import §-v§.§+S§;
   import §-v§.§4!N§;
   import §2X§.§>N§;
   import §3!b§.Cutscenes;
   import §3!b§.SomethingWeird;
   import §3!b§.Teapot;
   import §3!b§.TheGap;
   import §6[§.§11§;
   import §6[§.§>3§;
   import §6[§.§>f§;
   import §=w§.§@[§;
   import §>!O§.§^`§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.trigger.condition.§"!,§;
   import com.player03.run3.level.trigger.condition.§#!G§;
   import com.player03.run3.menu.§ L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.media.Sound;
   import unitsystem.§7o§;
   
   public class §]$§ extends §[k§ implements §@[§
   {
      
      public var §^!#§:Array;
      
      public var §"-§:§+S§;
      
      public var §<^§:§+'§;
      
      public var §[w§:§4!N§;
      
      public function §]$§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               super();
               if(_loc2_)
               {
                  break;
               }
            }
            §^!#§ = [];
            break;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:* = null as Array;
         var _loc4_:* = null as §@[§;
         loop2:
         while(true)
         {
            if(!_loc5_)
            {
               visible = !§7o§.instance.paused;
               if(_loc5_)
               {
                  break;
               }
            }
            if(visible)
            {
               loop3:
               while(true)
               {
                  if(_loc6_)
                  {
                     §§push(0);
                     if(_loc6_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc5_)
                        {
                           _loc2_ = §§pop();
                           if(!_loc5_)
                           {
                              break loop2;
                           }
                           break;
                        }
                     }
                     while(true)
                     {
                        if(§§pop() >= int(_loc3_.length))
                        {
                           break loop3;
                        }
                        _loc4_ = _loc3_[_loc2_];
                        while(true)
                        {
                           if(_loc6_)
                           {
                              _loc2_++;
                              if(!_loc6_)
                              {
                                 break;
                              }
                           }
                           _loc4_.update(param1);
                           break;
                        }
                     }
                     break;
                     addr00c2:
                  }
                  while(true)
                  {
                     §§goto(addr00c2);
                  }
                  break;
                  addr00c1:
               }
            }
            §§goto(addr00ca);
         }
         §§push(§^!#§);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         _loc3_ = §§pop();
         if(!_loc5_)
         {
            §§goto(addr00c1);
         }
         addr00ca:
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as §@[§;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(!_loc5_)
               {
                  if(Main.instance.level == null)
                  {
                     visible = false;
                     return;
                  }
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(_loc4_)
                        {
                           if(Main.instance.tunnel.§5§ != §,a§.INFINITE)
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              break loop3;
                           }
                        }
                        §§pop();
                        if(!_loc5_)
                        {
                           §§push(Main.instance.level is §-!N§);
                           if(!_loc5_)
                           {
                              break loop3;
                           }
                           break;
                        }
                     }
                     if(§§pop())
                     {
                        if(§<^§.parent != null)
                        {
                           break loop2;
                        }
                        if(!_loc5_)
                        {
                           addr008f:
                           addChild(§<^§);
                           §<^§.visible = true;
                           layout.§%X§(new §?y§(§[w§));
                           if(_loc4_)
                           {
                              break loop2;
                           }
                           break loop1;
                        }
                     }
                     else if(§<^§.parent != this)
                     {
                        break loop2;
                     }
                     removeChild(§<^§);
                     §<^§.visible = false;
                     layout.§%X§(new §?y§(§[w§));
                     break loop2;
                  }
                  §§push(Boolean(§§pop()));
                  break loop4;
               }
               §§goto(addr008f);
            }
            visible = !§7o§.instance.paused;
            break;
         }
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§^!#§);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            while(_loc1_ < int(_loc2_.length))
            {
               _loc3_ = _loc2_[_loc1_];
               if(!_loc5_)
               {
                  _loc1_++;
                  if(!_loc5_)
                  {
                     _loc3_.reset();
                  }
               }
            }
         }
      }
      
      override public function removeChildAt(param1:int) : DisplayObject
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:DisplayObject = getChildAt(param1);
         while(true)
         {
            if(_loc3_)
            {
               if(!(_loc2_ is §@[§))
               {
                  break;
               }
               if(_loc4_)
               {
                  break;
               }
            }
            §§push(§^!#§);
            if(!_loc4_)
            {
               if(int(§§pop().indexOf(_loc2_)) < 0)
               {
                  break;
               }
               if(_loc4_)
               {
                  break;
               }
               §§push(§^!#§);
            }
            §§pop().splice(int(§^!#§.indexOf(_loc2_)),1);
            break;
         }
         return super.removeChildAt(param1);
      }
      
      override public function removeChild(param1:DisplayObject) : DisplayObject
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  if(!(param1 is §@[§))
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               §§push(§^!#§);
               if(!_loc2_)
               {
                  if(int(§§pop().indexOf(param1)) >= 0)
                  {
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                  }
                  break;
               }
               §§goto(addr0068);
            }
            return super.removeChild(param1);
         }
         addr0068:
         §^!#§.splice(int(§^!#§.indexOf(param1)),1);
         break loop1;
      }
      
      override public function §^g§() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §<^§ = new §+'§();
         }
         var _loc1_:§ 7§ = new §?y§(§<^§);
         §§push(§&d§.§1$§());
         §§push(_loc1_);
         §§push(§§findproperty(§;!!§));
         §§push(64);
         if(!_loc2_)
         {
            §§push(§§pop() * 0.2);
         }
         §§pop().add(§§pop(),new §§pop().§;!!§(§§pop(),§2u§.TOP));
         §§push(false);
         if(!_loc2_)
         {
            if(Main.instance.tunnel != null)
            {
               while(true)
               {
                  if(_loc3_)
                  {
                     §§pop();
                     §§push(Main.instance.tunnel is §-!N§);
                     if(_loc2_)
                     {
                        break;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break;
               }
            }
         }
         while(true)
         {
            if(§§pop())
            {
               if(_loc2_)
               {
                  break;
               }
               §<^§.§<q§();
               addChild(§<^§);
               if(!_loc3_)
               {
                  break;
               }
            }
            §"-§ = new §+S§();
            break;
         }
         _loc1_ = new §?y§(§"-§);
         if(_loc3_)
         {
            §&d§.§1$§().add(_loc1_,new §;!!§(64,§2u§.TOP));
            while(true)
            {
               if(!_loc2_)
               {
                  §"-§.reset();
                  if(_loc2_)
                  {
                     break;
                  }
               }
               addChild(§"-§);
               if(_loc3_)
               {
                  §[w§ = new §4!N§();
               }
               break;
            }
         }
         _loc1_ = new §?y§(§[w§);
         if(_loc3_)
         {
            §&d§.§1$§().add(_loc1_,new §4$§(true,0.5));
         }
         _loc1_ = new §?y§(§[w§);
         if(!_loc2_)
         {
            §&d§.§1$§().add(_loc1_,new §;!!§(3,§2u§.TOP));
            if(_loc3_)
            {
               addChild(§[w§);
            }
         }
      }
      
      override public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               if(!(param1 is §@[§))
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            §§push(§^!#§);
            if(!_loc3_)
            {
               if(int(§§pop().indexOf(param1)) >= 0)
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
               §§push(§^!#§);
            }
            §§pop().push(param1);
            break;
         }
         return super.addChildAt(param1,param2);
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1 is §@[§)
            {
               if(!_loc3_)
               {
                  while(true)
                  {
                     §§push(§^!#§);
                     if(!_loc3_)
                     {
                        if(int(§§pop().indexOf(param1)) >= 0)
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§push(§^!#§);
                     }
                     §§pop().push(param1);
                     break;
                  }
               }
            }
         }
         return super.addChild(param1);
      }
   }
}

