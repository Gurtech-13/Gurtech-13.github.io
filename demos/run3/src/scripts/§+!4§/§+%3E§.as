package §+!4§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §7!R§.§'A§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Currency;
   import com.player03.run3.api.§<,§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.menu.§ L§;
   import flash.Lib;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import nme3D.§1![§;
   
   public class §+>§ extends §5!§
   {
      
      public var mouseY:Number;
      
      public var mouseX:Number;
      
      public var §&!$§:§'A§;
      
      public var §@d§:Boolean;
      
      public function §+>§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §@d§ = true;
            if(_loc2_)
            {
               super();
            }
         }
      }
      
      override public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.reset();
            if(!_loc1_)
            {
               §=!+§ = false;
            }
         }
      }
      
      public function §&2§(param1:MouseEvent) : void
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
               if(§&!$§ == null)
               {
                  if(_loc3_)
                  {
                     §=!+§ = false;
                     break;
                  }
               }
               else
               {
                  loop2:
                  while(true)
                  {
                     §§push(§&!$§.contains(param1.stageX,param1.stageY));
                     if(_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc3_)
                        {
                           §§push(!§§pop());
                           if(_loc2_)
                           {
                              break;
                           }
                        }
                     }
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(§§findproperty(§=!+§));
                                 if(_loc3_)
                                 {
                                    §§push(false);
                                    if(!param1.buttonDown)
                                    {
                                       break;
                                    }
                                    §§pop();
                                    if(_loc2_)
                                    {
                                       break loop4;
                                    }
                                 }
                                 §§push(true);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(true);
                                       if(!_loc2_)
                                       {
                                          while(true)
                                          {
                                             §§push(true);
                                             if(!_loc2_)
                                             {
                                                if(§?!7§)
                                                {
                                                   break;
                                                }
                                                if(!_loc2_)
                                                {
                                                   §§pop();
                                                   if(_loc2_)
                                                   {
                                                      break loop6;
                                                   }
                                                   §§push(§=!+§);
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                }
                                             }
                                             §§push(Boolean(§§pop()));
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             break loop6;
                                          }
                                          if(!_loc3_)
                                          {
                                             break loop6;
                                          }
                                          §§pop();
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          §§push(§@d§);
                                          if(!_loc3_)
                                          {
                                             break loop6;
                                          }
                                       }
                                       §§push(Boolean(§§pop()));
                                       break loop6;
                                    }
                                    §§goto(addr010e);
                                 }
                                 if(!§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§pop();
                                       break loop4;
                                    }
                                    break;
                                 }
                                 §§goto(addr010f);
                              }
                              §§pop().§=!+§ = §§pop();
                              if(_loc2_)
                              {
                                 break loop3;
                              }
                           }
                           addr010f:
                           §§push(param1.type == MouseEvent.MOUSE_DOWN);
                           if(_loc3_)
                           {
                              addr010e:
                              §§push(Boolean(§§pop()));
                           }
                           §§push(Boolean(§§pop()));
                           break loop5;
                        }
                        §=!+§ = false;
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        §§push(§=!+§);
                        break loop2;
                     }
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               mouseX = param1.stageX;
               if(_loc3_)
               {
                  break loop0;
               }
               break;
            }
            return;
         }
         mouseY = param1.stageY;
         break loop1;
      }
      
      public function §&h§() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Stage = Lib.current.stage;
         if(_loc2_)
         {
            _loc1_.removeEventListener(MouseEvent.MOUSE_DOWN,§&2§);
            while(true)
            {
               if(!_loc3_)
               {
                  _loc1_.removeEventListener(MouseEvent.MOUSE_UP,§&2§);
                  if(_loc3_)
                  {
                     break;
                  }
               }
               _loc1_.removeEventListener(MouseEvent.MOUSE_MOVE,§&2§);
               if(!_loc3_)
               {
                  break;
               }
            }
            reset();
         }
      }
      
      public function §9;§() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Stage = Lib.current.stage;
         while(true)
         {
            if(_loc3_)
            {
               _loc1_.addEventListener(MouseEvent.MOUSE_DOWN,§&2§);
               if(!_loc3_)
               {
                  break;
               }
               _loc1_.addEventListener(MouseEvent.MOUSE_UP,§&2§);
               if(_loc3_)
               {
                  _loc1_.addEventListener(MouseEvent.MOUSE_MOVE,§&2§);
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            reset();
            break;
         }
      }
      
      override public function §'x§(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §?!7§ = §=!+§;
         }
      }
   }
}

