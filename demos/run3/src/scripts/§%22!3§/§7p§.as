package §"!3§
{
   import §-!!§.§,C§;
   import §-!!§.§2!B§;
   import §3!b§.§+!"§;
   import §3!b§.§+Z§;
   import §3!b§.Cutscenes;
   import flash.events.Event;
   
   public class §7p§ extends §,C§
   {
      
      public var cutscene:§+Z§;
      
      public function §7p§(param1:String, param2:§+Z§)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               §§push(this);
               §§push(param1);
               §§push(§#_§);
               if(_loc4_)
               {
                  §§push(§§pop());
               }
               §§pop().super(§§pop(),§§pop());
               if(!_loc4_)
               {
                  break;
               }
            }
            cutscene = param2;
            break;
         }
      }
      
      public static function §!!R§(param1:String) : §7p§
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            §§push("cutscene/");
            if(!_loc5_)
            {
               §§push(§§pop() + param1);
               if(!_loc4_)
               {
                  break;
               }
            }
            §§push(§§pop());
            if(_loc4_)
            {
               break;
            }
            §§goto(addr003d);
         }
         §§push(§§pop() + ".png");
         if(!_loc5_)
         {
            addr003d:
            §§goto(addr0047);
         }
         addr0047:
         §§push(§§pop());
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc5_)
         {
            while(true)
            {
               §§push(§2!B§.exists(_loc2_));
               if(_loc4_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc5_)
                  {
                     break;
                  }
               }
               §§push(!§§pop());
               break;
            }
            if(!§§pop())
            {
               var _loc3_:§+Z§ = Cutscenes.§3'§(param1);
               if(!_loc5_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(true);
                        if(_loc4_)
                        {
                           if(_loc3_ == null)
                           {
                              break loop2;
                           }
                           if(_loc5_)
                           {
                              break loop2;
                           }
                           §§pop();
                           if(_loc5_)
                           {
                              break;
                           }
                           §§push(_loc3_.§4b§ == §+!"§.NEVER);
                           if(!_loc4_)
                           {
                              break loop2;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop2;
                     }
                  }
                  if(§§pop())
                  {
                     break loop3;
                  }
                  return new §7p§(_loc2_,_loc3_);
               }
               return null;
            }
         }
         return null;
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            visible = cutscene.§^!>§();
         }
      }
      
      public function §#_§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            cutscene.display(4);
         }
      }
   }
}

