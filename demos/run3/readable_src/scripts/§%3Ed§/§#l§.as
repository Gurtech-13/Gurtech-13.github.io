package §>d§
{
   import § 0§.§-!N§;
   import flash.display.Sprite;
   import nme3D.model.Model;
   
   public class §#l§
   {
      
      public static var §1g§:§#l§ = null;
      
      public var §,!R§:int;
      
      public var §>!_§:int;
      
      public var §9!>§:Boolean;
      
      public var §8!1§:int;
      
      public var §>m§:int;
      
      public function §#l§(param1:int, param2:int, param3:int, param4:int)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc6_)
               {
                  §9!>§ = false;
                  if(!_loc5_)
                  {
                     break loop0;
                  }
                  §,!R§ = param1;
                  if(!_loc5_)
                  {
                     break;
                  }
                  §>!_§ = param2;
                  if(_loc6_)
                  {
                     break loop0;
                  }
               }
               §8!1§ = param3;
               if(!_loc6_)
               {
                  break loop0;
               }
               break;
            }
            return;
         }
         §>m§ = param4;
         break loop1;
      }
      
      public static function §>]§() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:* = null as §#l§;
         var _loc1_:Date = Date.now();
         §§push(int(_loc1_.getMonth()));
         if(_loc8_)
         {
            §§push(§§pop() + 1);
            if(_loc8_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(int(_loc1_.getDate()));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push([new §;!F§(),new §`U§(),new §=6§()]);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc8_)
         {
            while(_loc5_ < int(_loc4_.length))
            {
               _loc6_ = _loc4_[_loc5_];
               if(!_loc8_)
               {
                  break;
               }
               _loc5_++;
               if(!_loc8_)
               {
                  break;
               }
               §§push(_loc6_.§@;§(_loc2_,_loc3_));
               if(_loc8_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     §#l§.§1g§ = _loc6_;
                  }
                  break;
               }
            }
         }
      }
      
      public function §"!Y§(param1:int, param2:String) : String
      {
         return param2;
      }
      
      public function §%!2§(param1:§-!N§) : void
      {
      }
      
      public function §^2§(param1:int) : Sprite
      {
         return null;
      }
      
      public function §?c§() : String
      {
         return null;
      }
      
      public function §[n§(param1:Number, param2:Boolean) : Model
      {
         return null;
      }
      
      public function §]4§(param1:Number) : Model
      {
         return null;
      }
      
      public function §@;§(param1:int, param2:int) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            loop1:
            while(true)
            {
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           §§push(true);
                           §§push(param1);
                           if(_loc3_)
                           {
                              break;
                           }
                           §§push(§,!R§);
                           if(!_loc4_)
                           {
                              break loop8;
                           }
                           if(§§pop() > §§pop())
                           {
                              break loop7;
                           }
                           if(!_loc4_)
                           {
                              break loop1;
                           }
                           §§pop();
                           if(_loc3_)
                           {
                              continue loop2;
                           }
                        }
                        §§push(false);
                        if(_loc4_)
                        {
                           §§push(param1);
                           break;
                        }
                        break loop1;
                     }
                     §§push(§,!R§);
                     break;
                  }
                  if(§§pop() == §§pop())
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        if(!_loc4_)
                        {
                           continue loop2;
                        }
                        while(true)
                        {
                           §§push(param2);
                           if(_loc4_)
                           {
                              §§push(§>!_§);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() >= §§pop());
                                 break loop1;
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr0101);
                     }
                  }
                  §§goto(addr0088);
               }
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     continue loop2;
                  }
                  §§goto(addr00b5);
               }
               else
               {
                  §§push(false);
               }
               §§goto(addr0101);
            }
            §§push(Boolean(§§pop()));
            if(!_loc3_)
            {
               addr0088:
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  break loop7;
               }
               §§goto(addr0101);
            }
            §§goto(addr00e3);
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               §§push(param1);
               if(_loc4_)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§8!1§);
                           if(!_loc3_)
                           {
                              addr00ab:
                              if(§§pop() < §§pop())
                              {
                                 §§push(true);
                                 if(_loc4_)
                                 {
                                    return §§pop();
                                 }
                                 break;
                              }
                              if(_loc3_)
                              {
                                 break loop5;
                              }
                              §§push(param1);
                              if(!_loc4_)
                              {
                                 break loop4;
                              }
                              §§push(§8!1§);
                              if(_loc3_)
                              {
                                 break loop3;
                              }
                           }
                           if(§§pop() == §§pop())
                           {
                              break loop5;
                           }
                           §§push(false);
                           if(_loc4_)
                           {
                              break loop2;
                           }
                           break;
                        }
                        addr0101:
                        return §§pop();
                     }
                     §§push(param2);
                     break;
                  }
               }
               break loop4;
            }
            §§push(§§pop() <= §§pop());
            if(!_loc3_)
            {
               addr00e3:
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
   }
}

