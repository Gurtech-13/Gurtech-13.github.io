package com.player03.run3.save
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §+!4§.§3!O§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Save;
   import com.player03.run3.api.PlayFabAPI;
   import com.player03.run3.character.§'O§;
   import flash.geom.Rectangle;
   import unitsystem.§7o§;
   
   public class §0!#§ implements §+<§
   {
      
      public static var §?Y§:§0!#§;
      
      public var §`I§:Number;
      
      public var §4!1§:Number;
      
      public function §0!#§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               §"j§(0);
               if(!_loc2_)
               {
                  break;
               }
            }
            §3!&§(0);
            break;
         }
      }
      
      public static function §@!A§() : §0!#§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §0!#§;
         if(!_loc2_)
         {
            if(§0!#§.§?Y§ != null)
            {
               return §0!#§.§?Y§;
            }
         }
         return §0!#§.§?Y§ = new §0!#§();
      }
      
      public function §1!,§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = null as §0!#§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     if(_loc4_)
                     {
                        §§push(§`I§);
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§push(0);
                        if(!_loc4_)
                        {
                           break loop3;
                        }
                        if(§§pop() <= §§pop())
                        {
                           break loop1;
                        }
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                     }
                     _loc2_ = this;
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.§`I§);
                        if(_loc4_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§"j§(§§pop());
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                     }
                     if(§`I§ <= 0)
                     {
                        if(_loc4_)
                        {
                           Save.§@!A§().§2]§();
                        }
                     }
                     break loop1;
                  }
                  §§goto(addr0098);
               }
               if(§§pop() > §§pop())
               {
                  break loop0;
               }
               §§goto(addr00ea);
            }
            addr0098:
            §§push(§4!1§);
            §§push(0);
            break loop3;
         }
         _loc2_ = this;
         while(true)
         {
            if(!_loc3_)
            {
               §§push(_loc2_);
               §§push(_loc2_.§4!1§);
               if(_loc4_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§3!&§(§§pop());
               if(_loc3_)
               {
                  break;
               }
               if(§4!1§ > 0)
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            PlayFabAPI.§@!A§().§<!6§();
            break;
         }
         addr00ea:
      }
      
      public function §"j§(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc2_)
            {
               loop1:
               while(true)
               {
                  §§push(false);
                  if(_loc3_)
                  {
                     while(true)
                     {
                        if(§`I§ > 0)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           §§pop();
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                           §§push(param1);
                           if(!_loc3_)
                           {
                              break loop0;
                           }
                           §§push(§§pop() > §`I§);
                           if(_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc2_)
                              {
                                 break;
                              }
                           }
                        }
                        §§push(!§§pop());
                        break;
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                  }
               }
               §`I§ = param1;
            }
            return §`I§;
         }
         return §§pop();
      }
      
      public function §3!&§(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc2_)
            {
               loop1:
               while(true)
               {
                  §§push(false);
                  if(_loc3_)
                  {
                     while(true)
                     {
                        if(§4!1§ > 0)
                        {
                           if(!_loc2_)
                           {
                              §§pop();
                              if(_loc2_)
                              {
                                 break loop1;
                              }
                              §§push(param1);
                              if(_loc2_)
                              {
                                 break loop0;
                              }
                              §§push(§§pop() > §4!1§);
                              if(!_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                              }
                           }
                        }
                        §§push(!§§pop());
                        break;
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                  }
               }
               §4!1§ = param1;
            }
            return §4!1§;
         }
         return §§pop();
      }
      
      public function §,?§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               §"j§(6);
               if(_loc2_)
               {
                  break;
               }
            }
            §3!&§(50);
            break;
         }
      }
      
      public function §@^§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               §"j§(40);
               if(!_loc1_)
               {
                  break;
               }
            }
            §3!&§(360);
            break;
         }
      }
      
      public function §[§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               §"j§(0.001);
               if(!_loc2_)
               {
                  break;
               }
            }
            §3!&§(0.001);
            break;
         }
      }
      
      public function §"!K§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc2_)
                  {
                     §§push(§`I§);
                     if(_loc1_)
                     {
                        break;
                     }
                     §§push(0);
                     if(!_loc2_)
                     {
                        break loop1;
                     }
                     §§push(§§pop() > §§pop());
                     if(!_loc1_)
                     {
                        §§push(!§§pop());
                        if(!_loc2_)
                        {
                           break loop0;
                        }
                     }
                     if(!§§pop())
                     {
                        §§push(true);
                        break loop0;
                     }
                  }
                  §§push(§4!1§);
                  break;
               }
               §§push(0);
               break;
            }
            §§push(§§pop() > §§pop());
            if(!_loc1_)
            {
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
      
      public function §]U§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(§`I§);
                     if(_loc1_)
                     {
                        §§push(0);
                        if(_loc2_)
                        {
                           break;
                        }
                        if(§§pop() > §§pop())
                        {
                           if(!_loc1_)
                           {
                              break loop1;
                           }
                           §"j§(0.001);
                           if(!_loc1_)
                           {
                              break loop0;
                           }
                        }
                        §§push(§4!1§);
                     }
                     §§push(0);
                     break;
                  }
                  if(§§pop() > §§pop())
                  {
                     if(_loc1_)
                     {
                        break;
                     }
                  }
                  break loop0;
               }
               §3!&§(0.001);
               break;
            }
         }
         break loop0;
      }
   }
}

