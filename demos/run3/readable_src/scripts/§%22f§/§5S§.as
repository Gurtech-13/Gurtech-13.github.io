package §"f§
{
   import §!!$§.§?y§;
   import §-!!§.§&!;§;
   import §-!!§.§&l§;
   import §-!!§.§+"§;
   import §-!!§.§,C§;
   import §6!Q§.§"q§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import §[!P§.§@$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §5S§ extends §[k§
   {
      
      public var §3!E§:Array;
      
      public var §#!=§:String;
      
      public var §1K§:Boolean;
      
      public function §5S§(param1:String, param2:Boolean, param3:Array)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc4_)
            {
               §#!=§ = param1;
               if(!_loc5_)
               {
                  break;
               }
            }
            §1K§ = param2;
            if(!_loc4_)
            {
               break;
            }
            §§goto(addr0071);
         }
         §3!E§ = param3;
         while(true)
         {
            if(!_loc4_)
            {
               super();
               if(!_loc5_)
               {
                  break;
               }
            }
            addEventListener(MouseEvent.CLICK,§7!+§);
            break;
         }
         addr0071:
      }
      
      public function §7!+§(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc18_:Boolean = true;
         var _loc19_:* = §§pop();
         var _loc3_:* = null as § 7§;
         var _loc5_:* = null as § 7§;
         var _loc7_:* = null as Array;
         var _loc8_:* = null as String;
         var _loc9_:* = null as EReg;
         var _loc10_:* = null as TextField;
         var _loc11_:* = null as §&d§;
         var _loc13_:* = null as §&l§;
         var _loc14_:* = 0;
         var _loc15_:* = null as §'8§;
         var _loc16_:* = null as DisplayObject;
         var _loc17_:* = null as §+"§;
         var _loc1_:Shape = new Shape();
         if(_loc18_)
         {
            §<!T§.fillRect(_loc1_,§^F§.SOLID(0));
            if(!_loc19_)
            {
               addChild(_loc1_);
            }
         }
         §§push(§§findproperty(§,C§));
         §§push("menu/CloseWindowIcon.png");
         §§push(close);
         if(!_loc19_)
         {
            §§push(§§pop());
         }
         var _loc2_:§,C§ = new §§pop().§,C§(§§pop(),§§pop());
         _loc3_ = new §?y§(_loc2_);
         while(true)
         {
            if(!_loc19_)
            {
               §&d§.§1$§().add(_loc3_,§^`§.§ !P§(§2u§.RIGHT));
               if(!_loc18_)
               {
                  break;
               }
               §&d§.§1$§().add(_loc3_,§^`§.§ !P§(§2u§.TOP));
               if(_loc19_)
               {
                  break;
               }
            }
            addChild(_loc2_);
            break;
         }
         while(true)
         {
            §§push(§&!;§);
            §§push(16777215);
            §§push(40);
            §§push(null);
            §§push("An unknown error occurred. You may need to restart your game to fix it");
            if(!_loc19_)
            {
               if(§1K§)
               {
                  if(_loc19_)
                  {
                     break;
                  }
                  §§push(".");
                  if(_loc18_)
                  {
                  }
               }
               else
               {
                  §§push(", but first, please submit an error report with this data:");
               }
               §§push(§§pop() + §§pop());
               if(!_loc18_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc4_:TextField = §§pop().§9Q§(§§pop(),§§pop(),§§pop(),§§pop(),width);
         _loc3_ = new §?y§(_loc4_);
         if(!_loc19_)
         {
            §&d§.§1$§().add(_loc3_,new §30§(true,0.8));
         }
         _loc3_ = new §?y§(_loc4_);
         if(!_loc19_)
         {
            §&d§.§1$§().add(_loc3_,new §4$§(true,0.5));
         }
         _loc3_ = new §?y§(_loc4_);
         _loc5_ = new §?y§(_loc2_);
         while(true)
         {
            if(!_loc19_)
            {
               §&d§.§1$§().add(_loc3_,new §+X§(0,§2u§.BOTTOM),_loc5_);
               if(_loc19_)
               {
                  break;
               }
            }
            addChild(_loc4_);
            break;
         }
         var _loc6_:DisplayObject = _loc4_;
         while(true)
         {
            if(_loc18_)
            {
               §§push(§1K§);
               if(!_loc19_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               if(!_loc19_)
               {
                  §§push([]);
                  if(_loc18_)
                  {
                     §§push(§§pop());
                  }
                  _loc7_ = §§pop();
                  if(_loc18_)
                  {
                     §§push(§#!=§);
                     if(!_loc19_)
                     {
                        §§push(§§pop());
                     }
                     _loc8_ = §§pop();
                  }
               }
            }
            _loc9_ = new EReg(".{1,45}","");
            if(!_loc19_)
            {
               while(true)
               {
                  §§push(_loc9_.match(_loc8_));
                  if(_loc18_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  §§push(_loc7_);
                  §§push(_loc9_.matched(0));
                  if(!_loc19_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().push(§§pop());
                  if(_loc18_)
                  {
                     while(true)
                     {
                        §§push(_loc9_.matchedRight());
                        if(!_loc19_)
                        {
                           §§push(§§pop());
                           if(_loc19_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop());
                        break;
                     }
                     _loc8_ = §§pop();
                  }
               }
            }
            _loc10_ = §&!;§.§9Q§(0,20,null,_loc7_.join(" "),width / 2,null,true);
            if(_loc18_)
            {
               _loc10_.type = "dynamic";
            }
            _loc3_ = new §?y§(_loc10_);
            if(!_loc19_)
            {
               §&d§.§1$§().add(_loc3_,new §30§(true,0.5));
            }
            _loc3_ = new §?y§(_loc10_);
            _loc5_ = new §?y§(_loc4_);
            _loc11_ = null;
            loop8:
            while(true)
            {
               while(true)
               {
                  if(_loc18_)
                  {
                     if(_loc11_ != null)
                     {
                        _loc11_ = _loc11_;
                        break;
                     }
                  }
                  _loc11_ = §&d§.§1$§();
                  if(_loc18_)
                  {
                     break;
                  }
                  break loop8;
               }
               _loc11_.add(_loc3_,new §+X§(0,§2u§.BOTTOM),_loc5_);
               if(_loc18_)
               {
                  _loc11_.add(_loc3_,new §4$§(true,0.5),_loc5_);
                  if(_loc18_)
                  {
                     break;
                  }
               }
               §§goto(addr0381);
            }
            addChild(_loc10_);
            addr0381:
            _loc6_ = _loc10_;
            break;
         }
         §§push(§§findproperty(§+"§));
         §§push(close);
         if(_loc18_)
         {
            §§push(§§pop());
         }
         var _loc12_:§+"§ = new §§pop().§+"§(§§pop(),0,40,"Ok");
         if(_loc18_)
         {
            §&d§.§1$§().add(new §?y§(_loc12_),new §"q§(11184810,6710886,3.6));
         }
         _loc3_ = new §?y§(_loc12_);
         loop10:
         while(true)
         {
            if(_loc18_)
            {
               §&d§.§1$§().add(_loc3_,new §4$§(true,0.5));
               if(!_loc19_)
               {
                  §&d§.§1$§().add(_loc3_,new §;!!§(5,§2u§.BOTTOM));
                  if(!_loc19_)
                  {
                     loop11:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(_loc18_)
                           {
                              if(§3!E§ == null)
                              {
                                 break;
                              }
                              if(_loc19_)
                              {
                                 break loop11;
                              }
                           }
                           §§pop();
                           if(_loc18_)
                           {
                              §§push(int(§3!E§.length) > 0);
                              if(!_loc19_)
                              {
                                 break loop11;
                              }
                              break;
                           }
                        }
                        if(!§§pop())
                        {
                           break loop10;
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break loop12;
                  }
               }
            }
            _loc13_ = new §&l§(100,100);
            _loc3_ = new §?y§(_loc13_);
            while(true)
            {
               if(_loc18_)
               {
                  §&d§.§1$§().add(_loc3_,new §@$§(true,0));
                  if(_loc19_)
                  {
                     break;
                  }
                  §"!9§.§5C§(new §?y§(_loc13_),new §?y§(_loc6_),15);
                  if(!_loc18_)
                  {
                     break;
                  }
                  §"!9§.§<_§(new §?y§(_loc13_),new §?y§(_loc12_),10);
                  if(_loc19_)
                  {
                     break;
                  }
               }
               addChild(_loc13_);
               break;
            }
            _loc6_ = null;
            loop14:
            while(true)
            {
               while(true)
               {
                  if(!_loc19_)
                  {
                     §§push(0);
                     if(_loc19_)
                     {
                        break;
                     }
                     §§push(int(§§pop()));
                     if(_loc19_)
                     {
                        break;
                     }
                     _loc14_ = §§pop();
                     if(!_loc18_)
                     {
                        break loop14;
                     }
                  }
                  §§push(§3!E§);
                  if(_loc18_)
                  {
                     §§push(§§pop());
                  }
                  _loc7_ = §§pop();
                  if(_loc18_)
                  {
                     break loop14;
                  }
                  break loop10;
               }
               while(true)
               {
                  if(§§pop() >= int(_loc7_.length))
                  {
                     break loop10;
                  }
                  _loc15_ = _loc7_[_loc14_];
                  loop16:
                  while(true)
                  {
                     loop17:
                     while(true)
                     {
                        loop20:
                        while(true)
                        {
                           loop21:
                           while(true)
                           {
                              loop22:
                              while(true)
                              {
                                 if(!_loc19_)
                                 {
                                    _loc14_++;
                                    loop23:
                                    while(true)
                                    {
                                       §§push(false);
                                       if(_loc18_)
                                       {
                                          if(_loc15_.description == null)
                                          {
                                             while(true)
                                             {
                                                if(_loc18_)
                                                {
                                                   §§pop();
                                                   §§push(_loc15_.§>L§);
                                                   if(!_loc18_)
                                                   {
                                                      break loop22;
                                                   }
                                                   §§push(null);
                                                   if(_loc19_)
                                                   {
                                                      break loop21;
                                                   }
                                                   §§push(§§pop());
                                                   if(!_loc18_)
                                                   {
                                                      break loop23;
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc19_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§push(Boolean(§§pop()));
                                                break;
                                             }
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          break loop14;
                                       }
                                       §§push(_loc15_.description);
                                       if(!_loc19_)
                                       {
                                          §§push(null);
                                          if(_loc18_)
                                          {
                                             §§push(§§pop());
                                             if(_loc18_)
                                             {
                                                break;
                                             }
                                             break loop20;
                                          }
                                          break loop21;
                                       }
                                       break loop22;
                                    }
                                    if(§§pop() != §§pop())
                                    {
                                       break loop17;
                                    }
                                    if(_loc19_)
                                    {
                                       break loop16;
                                    }
                                 }
                                 §§push(_loc15_);
                                 §§push(Std.string(int(§3!E§.indexOf(_loc15_))));
                                 if(_loc18_)
                                 {
                                    §§push(§§pop());
                                 }
                                 §§pop().description = §§pop();
                                 if(!_loc19_)
                                 {
                                    break loop17;
                                 }
                                 break loop16;
                              }
                              §§goto(addr05d6);
                           }
                           §§goto(addr05d7);
                        }
                        if(§§pop() == §§pop())
                        {
                           break loop16;
                        }
                        §§push(§§findproperty(§+"§));
                        §§push(_loc15_.getURL);
                        if(!_loc19_)
                        {
                           §§push(§§pop());
                        }
                        _loc17_ = new §§pop().§+"§(§§pop(),0,30,_loc15_.description);
                        if(!_loc19_)
                        {
                           §&d§.§1$§().add(new §?y§(_loc17_),new §"q§(11184810,6710886,3.6));
                        }
                        _loc16_ = _loc17_;
                        §§goto(addr065b);
                     }
                     addr05d7:
                     addr05d6:
                     §§push(_loc15_.§>L§);
                     §§push(null);
                     break loop20;
                  }
                  _loc16_ = §&!;§.§9Q§(16777215,30,null,_loc15_.description,null,null,null,null,"center");
                  loop18:
                  while(true)
                  {
                     if(_loc18_)
                     {
                        addr065b:
                        if(_loc6_ == null)
                        {
                           break;
                        }
                     }
                     _loc3_ = new §?y§(_loc16_);
                     _loc5_ = new §?y§(_loc6_);
                     _loc11_ = null;
                     while(true)
                     {
                        if(!_loc19_)
                        {
                           if(_loc11_ != null)
                           {
                              _loc11_ = _loc11_;
                              break;
                           }
                        }
                        _loc11_ = §&d§.§1$§();
                        if(!_loc19_)
                        {
                           break;
                        }
                        break loop18;
                     }
                     _loc11_.add(_loc3_,new §+X§(10,§2u§.BOTTOM),_loc5_);
                     if(!_loc19_)
                     {
                        _loc11_.add(_loc3_,new §4$§(true,0.5),_loc5_);
                     }
                     break;
                  }
                  _loc6_ = _loc16_;
                  if(!_loc19_)
                  {
                     _loc13_.addChild(_loc16_);
                  }
                  break loop14;
               }
               break loop10;
            }
            while(true)
            {
               §§push(_loc14_);
               break loop15;
            }
         }
      }
      
      public function close(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            visible = false;
         }
      }
   }
}

