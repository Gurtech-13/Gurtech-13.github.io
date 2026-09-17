package com.player03.run3.menu
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §-!!§.§&l§;
   import §-v§.§%!3§;
   import scenes.Cutscenes;
   import scenes.WormholeInSight;
   import §9e§.§5b§;
   import §=w§.§@[§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §[!P§.§@$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import com.player03.run3.api.§4!b§;
   import com.player03.run3.api.News;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   
   public class §[I§ extends §[k§ implements §@[§, §3!!§
   {
      
      public static var instance:§[I§;
      
      public var §@q§:Vector.<§5b§>;
      
      public var §?X§:Number;
      
      public var §5J§:§&l§;
      
      public var §+b§:§5b§;
      
      public function §[I§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               §?X§ = 0;
               if(!_loc2_)
               {
                  break;
               }
            }
            super();
            break;
         }
      }
      
      public static function §@!A§() : §[I§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §[I§;
         if(!_loc2_)
         {
            if(§[I§.instance != null)
            {
               return §[I§.instance;
            }
         }
         return §[I§.instance = new §[I§();
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = null as Vector.<§5b§>;
         var _loc5_:* = null as §5b§;
         loop1:
         while(true)
         {
            if(_loc7_)
            {
               §§push(§§findproperty(§?X§));
               §§push(§?X§);
               if(_loc7_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§?X§ = §§pop();
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        if(_loc7_)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(§?X§);
                              if(!_loc6_)
                              {
                                 while(true)
                                 {
                                    §§push(0);
                                    if(_loc7_)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          break loop1;
                                       }
                                       if(!_loc7_)
                                       {
                                          break loop5;
                                       }
                                       §?X§ = 1;
                                       if(!_loc7_)
                                       {
                                          break loop5;
                                       }
                                       §§push(Number(Date.now().getTime()));
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       §§push(1000);
                                    }
                                    §§push(§§pop() / §§pop());
                                    break;
                                 }
                              }
                              §§push(int(§§pop()));
                              if(!_loc6_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc7_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    break loop2;
                                 }
                                 break loop3;
                              }
                              break loop4;
                           }
                        }
                        §§push(0);
                        if(!_loc6_)
                        {
                           break;
                        }
                        break loop3;
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc3_ = §§pop();
                  break;
               }
            }
            break loop2;
         }
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc3_:* = null as §4!b§;
         var _loc4_:* = false;
         var _loc5_:* = 0;
         var _loc6_:* = null as Vector.<§5b§>;
         var _loc7_:* = null as §5b§;
         var _loc8_:* = null as § 7§;
         var _loc9_:* = null as § 7§;
         §§push(0);
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(News.§@!A§().§8,§);
         if(!_loc11_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc11_)
            {
               loop0:
               while(_loc1_ < int(_loc2_.length))
               {
                  _loc3_ = _loc2_[_loc1_];
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        _loc1_++;
                        if(!_loc10_)
                        {
                           break;
                        }
                        §§push(false);
                        if(_loc10_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        _loc4_ = §§pop();
                        if(_loc11_)
                        {
                           break;
                        }
                     }
                     §§push(0);
                     if(_loc10_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc5_ = §§pop();
                     break;
                  }
                  _loc6_ = §@q§;
                  loop4:
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        while(_loc5_ < int(_loc6_.length))
                        {
                           _loc7_ = _loc6_[_loc5_];
                           if(_loc10_)
                           {
                              _loc5_++;
                              if(!_loc11_)
                              {
                                 if(_loc7_.§"3§ != _loc3_)
                                 {
                                    continue;
                                 }
                                 if(!_loc10_)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                           §§push(true);
                           if(_loc11_)
                           {
                              break loop4;
                           }
                           §§push(Boolean(§§pop()));
                           if(_loc11_)
                           {
                              break loop4;
                           }
                           _loc4_ = §§pop();
                           if(_loc10_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     §§push(_loc4_);
                     break;
                  }
                  if(!§§pop())
                  {
                     _loc7_ = new §5b§(_loc3_,layout);
                     if(_loc10_)
                     {
                        §5J§.addChild(_loc7_);
                        if(_loc10_)
                        {
                           §@q§.push(_loc7_);
                           if(!_loc10_)
                           {
                              continue;
                           }
                        }
                        if(§+b§ != null)
                        {
                           if(_loc11_)
                           {
                              continue;
                           }
                           _loc8_ = new §?y§(_loc7_);
                           _loc9_ = new §?y§(§+b§);
                           if(_loc10_)
                           {
                              §&d§.§1$§().add(_loc8_,new §+X§(20,§2u§.TOP),_loc9_);
                           }
                        }
                        §+b§ = _loc7_;
                     }
                  }
               }
               if(!_loc10_)
               {
                  break;
               }
            }
            §?X§ = 0;
            if(_loc10_)
            {
               break;
            }
            §§goto(addr01e3);
         }
         update(0);
         addr01e3:
      }
      
      override public function §^g§() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:§%!3§ = new §%!3§();
         var _loc2_:§ 7§ = new §?y§(_loc1_);
         while(true)
         {
            if(_loc5_)
            {
               §&d§.§1$§().add(_loc2_,§^`§.§ !P§(§2u§.LEFT));
               if(_loc4_)
               {
                  break;
               }
            }
            §&d§.§1$§().add(_loc2_,§^`§.§ !P§(§2u§.TOP));
            if(_loc5_)
            {
               addChild(_loc1_);
               if(_loc5_)
               {
                  break;
               }
               §§goto(addr009c);
            }
            break;
         }
         §5J§ = new §&l§(100,100);
         addr009c:
         _loc2_ = new §?y§(§5J§);
         while(true)
         {
            if(!_loc4_)
            {
               §&d§.§1$§().add(_loc2_,new §@$§(true,0));
               if(_loc4_)
               {
                  break;
               }
               §"!9§.§5C§(new §?y§(§5J§),new §?y§(_loc1_));
               if(!_loc5_)
               {
                  break;
               }
            }
            addChild(§5J§);
            break;
         }
         var _loc3_:Vector.<§5b§> = new Vector.<§5b§>(0,false);
         if(!_loc4_)
         {
            §@q§ = _loc3_;
         }
      }
   }
}

