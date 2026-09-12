package §9e§
{
   import §!!$§.§?y§;
   import §-!!§.§&!;§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import §`!7§.§]!T§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Main;
   import com.player03.run3.api.§4!b§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §5b§ extends Sprite
   {
      
      public var §"3§:§4!b§;
      
      public var §7>§:TextField;
      
      public function §5b§(param1:§4!b§, param2:§&d§)
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc4_:* = null;
         var _loc5_:* = null as § 7§;
         var _loc7_:* = null as TextField;
         var _loc8_:* = null as § 7§;
         var _loc9_:* = null as §&d§;
         if(_loc10_)
         {
            super();
            if(_loc10_)
            {
               §"3§ = param1;
            }
         }
         var _loc3_:TextField = §&!;§.§9Q§(16777215,40,Main.§6i§,param1.title);
         _loc4_ = null;
         if(_loc10_)
         {
            while(true)
            {
               if(_loc4_ == null)
               {
                  if(!_loc10_)
                  {
                     break;
                  }
                  _loc4_ = int(Number(_loc3_.defaultTextFormat.size));
               }
               if(param2 == null)
               {
                  if(_loc10_)
                  {
                     break;
                  }
               }
               else
               {
                  addr00a3:
                  param2.add(new §?y§(_loc3_),new §=!]§(int(_loc4_)));
               }
            }
            §§goto(addr00a3);
         }
         _loc5_ = new §?y§(_loc3_);
         if(!_loc11_)
         {
            while(true)
            {
               if(param2 == null)
               {
                  if(_loc11_)
                  {
                     break;
                  }
                  §§push(§&d§.§1$§());
               }
               else
               {
                  §§push(param2);
               }
               §§pop().add(_loc5_,new §;!!§(20,§2u§.LEFT));
               if(_loc10_)
               {
                  break;
               }
            }
            addChild(_loc3_);
         }
         §§push(param1.fullText);
         if(_loc10_)
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         loop2:
         while(true)
         {
            while(true)
            {
               if(_loc10_)
               {
                  loop6:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        loop12:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc6_);
                              if(_loc10_)
                              {
                                 §§push(null);
                                 if(_loc11_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop());
                                 if(!_loc10_)
                                 {
                                    break loop12;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    break loop7;
                                 }
                                 if(!_loc10_)
                                 {
                                    break loop7;
                                 }
                                 §§push(param1.summary);
                                 if(_loc11_)
                                 {
                                    break loop6;
                                 }
                                 §§push(§§pop());
                                 if(_loc11_)
                                 {
                                    break loop6;
                                 }
                              }
                              _loc6_ = §§pop();
                              if(!_loc11_)
                              {
                                 break loop7;
                              }
                              §§goto(addr0168);
                           }
                           §§goto(addr015b);
                        }
                        §§goto(addr015d);
                     }
                     §§push(_loc6_);
                     break;
                  }
                  addr015d:
                  addr015b:
                  if(§§pop() != null)
                  {
                     if(!_loc10_)
                     {
                        break loop2;
                     }
                     addr0168:
                     _loc7_ = §&!;§.§9Q§(16777215,30,null,_loc6_,1000);
                     _loc5_ = new §?y§(_loc7_);
                     if(_loc10_)
                     {
                        while(true)
                        {
                           if(param2 == null)
                           {
                              if(_loc11_)
                              {
                                 break;
                              }
                              §§push(§&d§.§1$§());
                           }
                           else
                           {
                              §§push(param2);
                           }
                           §§pop().add(_loc5_,new §@$§(true,20));
                           break;
                        }
                     }
                     _loc5_ = new §?y§(_loc7_);
                     if(_loc10_)
                     {
                        while(true)
                        {
                           if(param2 == null)
                           {
                              if(!_loc10_)
                              {
                                 break;
                              }
                              §§push(§&d§.§1$§());
                           }
                           else
                           {
                              §§push(param2);
                           }
                           §§pop().add(_loc5_,new §;!!§(10,§2u§.LEFT));
                           break;
                        }
                     }
                     _loc4_ = null;
                     if(_loc10_)
                     {
                        while(true)
                        {
                           if(_loc4_ == null)
                           {
                              if(_loc11_)
                              {
                                 break;
                              }
                              _loc4_ = int(Number(_loc7_.defaultTextFormat.size));
                           }
                           if(param2 == null)
                           {
                              if(!_loc11_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              addr0250:
                              param2.add(new §?y§(_loc7_),new §=!]§(int(_loc4_)));
                           }
                        }
                        §§goto(addr0250);
                     }
                     _loc5_ = new §?y§(_loc7_);
                     _loc8_ = new §?y§(_loc3_);
                     if(_loc10_)
                     {
                        while(true)
                        {
                           if(param2 == null)
                           {
                              if(!_loc10_)
                              {
                                 break;
                              }
                              §§push(§&d§.§1$§());
                           }
                           else
                           {
                              §§push(param2);
                           }
                           §§pop().add(_loc5_,new §+X§(0,§2u§.BOTTOM),_loc8_);
                           if(!_loc11_)
                           {
                              addChild(_loc7_);
                           }
                           break;
                        }
                     }
                  }
                  if(param1.§]!=§ == null)
                  {
                     break;
                  }
                  if(_loc11_)
                  {
                     break loop2;
                  }
               }
               §7>§ = §&!;§.§9Q§(16777215,35,null,"calculating...");
               break loop2;
            }
            return;
         }
         _loc7_ = §7>§;
         _loc4_ = null;
         if(!_loc11_)
         {
            while(true)
            {
               if(_loc4_ == null)
               {
                  if(_loc11_)
                  {
                     break;
                  }
                  _loc4_ = int(Number(_loc7_.defaultTextFormat.size));
               }
               if(param2 == null)
               {
                  if(!_loc11_)
                  {
                     break;
                  }
               }
               else
               {
                  addr0338:
                  param2.add(new §?y§(_loc7_),new §=!]§(int(_loc4_)));
               }
            }
            §§goto(addr0338);
         }
         _loc5_ = new §?y§(§7>§);
         _loc8_ = new §?y§(_loc3_);
         _loc9_ = param2;
         while(true)
         {
            if(!_loc11_)
            {
               if(_loc9_ != null)
               {
                  _loc9_ = _loc9_;
                  break;
               }
            }
            _loc9_ = §&d§.§1$§();
            if(!_loc11_)
            {
               break;
            }
            break loop3;
         }
         _loc9_.add(_loc5_,new §+X§(40,§2u§.RIGHT),_loc8_);
         if(!_loc11_)
         {
            _loc9_.add(_loc5_,new §4$§(false,0.5),_loc8_);
         }
         break loop3;
      }
      
      public function update(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            if(§7>§ != null)
            {
               var _loc2_:int = §"3§.§]!=§ - param1;
               while(true)
               {
                  if(_loc4_)
                  {
                     if(_loc2_ <= 0)
                     {
                        removeChild(§7>§);
                        if(!_loc3_)
                        {
                           §7>§ = null;
                        }
                        break;
                     }
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
                  §7>§.text = §]!T§.§[!T§(_loc2_);
                  if(_loc4_)
                  {
                  }
                  break;
               }
               return;
            }
         }
      }
   }
}

