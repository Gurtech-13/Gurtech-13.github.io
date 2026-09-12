package §#3§
{
   import §!!$§.§ 6§;
   import §!D§.§0!M§;
   import §%!Q§.§ !>§;
   import §%!Q§.§=e§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §3!b§.Cutscenes;
   import §3!b§.SomethingWeird;
   import §=w§.§,D§;
   import §@s§.§,%§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.level.§ !W§;
   import flash.Boot;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.geom.Rectangle;
   
   public class §1M§ extends Sprite implements §,D§
   {
      
      public var §&!W§:int;
      
      public var §-g§:Boolean;
      
      public var §13§:int;
      
      public var §7T§:Number;
      
      public var §0V§:Boolean;
      
      public var §&!1§:Boolean;
      
      public var §45§:int;
      
      public function §1M§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               §13§ = -1;
               if(!_loc2_)
               {
                  break;
               }
               §-g§ = false;
               if(!_loc2_)
               {
                  break;
               }
            }
            §&!1§ = true;
            §0V§ = true;
            if(!_loc1_)
            {
               §&!W§ = 1;
               break;
            }
            §§goto(addr0067);
         }
         §45§ = 0;
         super();
         addr0067:
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            §§push(true);
            if(!_loc2_)
            {
               §§push(§0V§);
               if(_loc3_)
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  break;
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            §§pop();
            §§push(stage == null);
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            break;
         }
         if(§§pop())
         {
            return;
         }
         §§push(§§findproperty(§7T§));
         §§push(§7T§);
         if(!_loc2_)
         {
            §§push(§§pop() + stage.frameRate * param1);
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§pop().§7T§ = §§pop();
         if(int(Math.round(§7T§)) != §13§)
         {
            §45§ = int(Math.round(§7T§));
            if(_loc3_)
            {
               §2!-§();
               §13§ = §45§;
            }
         }
      }
      
      public function stop() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §0V§ = false;
         }
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(0 < §&!W§)
            {
               §45§ = 0;
            }
            else
            {
               while(true)
               {
                  §§push(§&!1§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           §45§ = 0;
                           if(!_loc2_)
                           {
                              break;
                           }
                        }
                     }
                     else
                     {
                        §§push(§§findproperty(§45§));
                        §§push(§&!W§);
                        if(_loc1_)
                        {
                           §§push(§§pop() - 1);
                        }
                        §§pop().§45§ = §§pop();
                        if(_loc1_)
                        {
                           stop();
                        }
                     }
                     §§push(§-g§);
                  }
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        parent.removeChild(this);
                        if(_loc1_)
                        {
                           break;
                        }
                     }
                     break loop0;
                  }
                  break;
               }
            }
            §7T§ = §45§;
            if(!_loc2_)
            {
               break;
            }
            §§goto(addr00c1);
         }
         §2!-§();
         addr00c1:
      }
      
      public function §^!E§(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(_loc3_)
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
                              loop6:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!_loc2_)
                                    {
                                       §§push(param1);
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       §§push(0);
                                       if(_loc2_)
                                       {
                                          break loop6;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          §§pop();
                                          §§push(param1 < §&!W§);
                                          if(_loc2_)
                                          {
                                             break loop5;
                                          }
                                          §§push(Boolean(§§pop()));
                                          if(_loc2_)
                                          {
                                             break loop4;
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          §45§ = param1;
                                          break loop3;
                                       }
                                       §§push(true);
                                    }
                                    §§push(param1);
                                    break;
                                 }
                                 §§push(0);
                                 break;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 break loop4;
                              }
                              break;
                           }
                           if(§§pop())
                           {
                              §45§ = 0;
                              if(_loc3_)
                              {
                                 break loop3;
                              }
                              break loop0;
                           }
                           §§push(§§findproperty(§45§));
                           §§push(§&!W§);
                           if(!_loc2_)
                           {
                              §§push(§§pop() - 1);
                           }
                           §§pop().§45§ = §§pop();
                           stop();
                           if(!_loc2_)
                           {
                              if(§-g§)
                              {
                                 if(_loc3_)
                                 {
                                    parent.removeChild(this);
                                    break loop3;
                                 }
                                 break loop1;
                              }
                              break loop3;
                           }
                           break loop2;
                        }
                        §§pop();
                        §§push(Boolean(§&!1§));
                        break loop5;
                     }
                  }
                  break loop3;
               }
               §2!-§();
               if(_loc3_)
               {
                  break;
               }
               break loop0;
            }
            §0V§ = false;
            break;
         }
      }
      
      public function §=!V§() : Boolean
      {
         return parent == null;
      }
      
      public function §2!-§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         Boot.lastError = new Error();
         throw new Error("displayCurrentFrame() must be overridden");
      }
   }
}

