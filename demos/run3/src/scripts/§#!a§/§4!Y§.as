package §#!a§
{
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import flash.Lib;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxe.crypto.§&!!§;
   
   public class §4!Y§
   {
      
      public static var §-6§:Boolean;
      
      public static var §6y§:*;
      
      public static var §#7§:int;
      
      public static var §"u§:Stage;
      
      public static var §;!_§:EReg;
      
      public static var §%![§:String = null;
      
      public function §4!Y§()
      {
      }
      
      public static function §0W§() : void
      {
         §4!Y§.§#7§ = 0;
      }
      
      public static function §"!Q§() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:* = null as TextField;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         loop2:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  if(§4!Y§.§"u§ == null)
                  {
                     break;
                  }
                  if(!_loc6_)
                  {
                     break loop2;
                  }
               }
               _loc1_ = new TextField();
               _loc1_.text = "Error: " + §4!Y§.§%![§ + " is not allowed to host this version of this game.";
               loop4:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        _loc1_.width = 550;
                        _loc1_.height = 400;
                        if(_loc5_)
                        {
                           break;
                        }
                        _loc1_.textColor = 16777215;
                        if(!_loc6_)
                        {
                           break loop4;
                        }
                     }
                     _loc1_.wordWrap = true;
                     if(!_loc5_)
                     {
                        _loc1_.background = true;
                        break loop4;
                     }
                     §§goto(addr00b0);
                  }
                  loop6:
                  while(true)
                  {
                     §§push(0);
                     if(_loc6_)
                     {
                        §§push(int(§§pop()));
                        if(_loc6_)
                        {
                           _loc2_ = §§pop();
                           §§push(int(§4!Y§.§"u§.numChildren));
                           if(_loc5_)
                           {
                              break;
                           }
                        }
                     }
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(_loc2_);
                        break loop6;
                     }
                  }
                  while(§§pop() < _loc3_)
                  {
                     §§push(_loc2_);
                     if(_loc6_)
                     {
                        _loc2_++;
                        if(_loc6_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc4_ = §§pop();
                     if(!_loc5_)
                     {
                        §4!Y§.§"u§.getChildAt(_loc4_).visible = false;
                     }
                     §§push(_loc2_);
                  }
                  §§goto(addr0118);
               }
               _loc1_.backgroundColor = 0;
               if(_loc6_)
               {
                  addr00b0:
                  _loc1_.selectable = false;
                  break loop5;
               }
               addr0118:
               §4!Y§.§"u§.addChild(_loc1_);
               break;
            }
            §4!Y§.§#7§ = -1;
            break;
         }
      }
      
      public static function §@!#§() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null;
         if(!_loc4_)
         {
            if(§4!Y§.§"u§ != null)
            {
               if(!_loc4_)
               {
                  return;
               }
            }
            else
            {
               §4!Y§.§"u§ = Lib.current.stage;
               if(!_loc4_)
               {
                  if(§4!Y§.§#7§ == -1)
                  {
                     if(_loc5_)
                     {
                        §4!Y§.§"!Q§();
                        if(_loc4_)
                        {
                           addr0086:
                           var _loc2_:* = §4!Y§.§"u§.loaderInfo.loaderURL;
                           if(_loc5_)
                           {
                              §§push(StringTools.startsWith(_loc2_,"file:"));
                              if(!_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    §4!Y§.§#7§ = 1;
                                    if(_loc5_)
                                    {
                                       §4!Y§.§%![§ = "localhost";
                                    }
                                 }
                              }
                              else
                              {
                                 try
                                 {
                                    if(ExternalInterface.available)
                                    {
                                       if(_loc5_)
                                       {
                                          §4!Y§.§%![§ = ExternalInterface.call("window.location.href.toString");
                                       }
                                    }
                                 }
                                 catch(_loc_e_:*)
                                 {
                                    loop0:
                                    while(true)
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                if(!§4!Y§.§;!_§.match(_loc2_))
                                                {
                                                   §4!Y§.§0W§();
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         loop5:
                                                         while(true)
                                                         {
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(§4!Y§.§%![§);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(null);
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     §§push(!§4!Y§.§;!_§.match(§4!Y§.§%![§));
                                                                     if(!_loc5_)
                                                                     {
                                                                        break loop5;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                        §4!Y§.§%![§ = _loc2_;
                                                                        if(_loc4_)
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§4!Y§);
                                                                        §§push(§4!Y§.§;!_§.matched(1));
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(§§pop());
                                                                        }
                                                                        §§pop().§%![§ = §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §4!Y§.§%![§ = _loc2_;
                                                                     if(_loc4_)
                                                                     {
                                                                        break loop4;
                                                                     }
                                                                  }
                                                                  §§push(§4!Y§);
                                                                  §§push(§&!!§.§9<§(§4!Y§.§%![§));
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                                  §§pop().§%![§ = §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  §§push(§&!!§.§9<§(_loc2_));
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr0206:
                                                                     _loc2_ = §§pop();
                                                                     if(!_loc5_)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     §§push(§4!Y§.§%![§);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        break loop6;
                                                                     }
                                                                     §§push("5b1dce2f7c06e61c0de1f4bc96d77861874e163e");
                                                                     if(_loc4_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        §4!Y§.§#7§ = 3;
                                                                        break loop0;
                                                                     }
                                                                     §§push(_loc2_);
                                                                  }
                                                                  addr0241:
                                                                  §§push("f68e3243bd2f1abfdc9b555b7e957ecb2168daee");
                                                                  if(_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  break loop3;
                                                               }
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  §4!Y§.§0W§();
                                                                  break loop0;
                                                               }
                                                               if(!_loc5_)
                                                               {
                                                                  break loop2;
                                                               }
                                                            }
                                                            if(§§pop() != §§pop())
                                                            {
                                                               §§push(false);
                                                               break;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               break loop0;
                                                            }
                                                            §§goto(addr0226);
                                                            §§push(_loc2_);
                                                         }
                                                         if(_loc2_ == "3efff3446117bf77569c964be3440c5e53ac988f")
                                                         {
                                                            §§pop();
                                                            break;
                                                         }
                                                         break loop1;
                                                      }
                                                      §4!Y§.§#7§ = 4;
                                                      if(_loc5_)
                                                      {
                                                         break loop0;
                                                      }
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(§4!Y§.§;!_§.matched(1));
                                                   if(_loc5_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc4_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(_loc5_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§goto(addr01d3);
                                                         }
                                                         §§goto(addr0206);
                                                      }
                                                      §§goto(addr0241);
                                                   }
                                                }
                                                §§push("87c59400cef2723290164e3ac7f1c9b0b8a62e48");
                                                break;
                                             }
                                             §§push(§§pop() == §§pop());
                                             if(_loc5_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             break loop1;
                                          }
                                          §4!Y§.§#7§ = 2;
                                          if(_loc5_)
                                          {
                                          }
                                          break loop0;
                                       }
                                       if(§§pop())
                                       {
                                          break loop2;
                                       }
                                       §4!Y§.§0W§();
                                       break;
                                    }
                                 }
                              }
                           }
                           break loop0;
                        }
                     }
                     §§goto(addr0073);
                  }
                  else
                  {
                     §4!Y§.§6y§ = §4!Y§.§"u§.loaderInfo.parameters;
                  }
                  §§goto(addr0086);
               }
            }
         }
         addr0073:
      }
   }
}

