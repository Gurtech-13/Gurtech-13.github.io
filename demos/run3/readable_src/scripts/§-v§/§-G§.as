package §-v§
{
   import §'!W§.§&!A§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §-!!§.§,C§;
   import §6!Q§.§'!E§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import flash.events.Event;
   
   public class §-G§ extends §,C§
   {
      
      public function §-G§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this);
            §§push("menu/QualityIcon.png");
            §§push(§-G§.§>!U§);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().super(§§pop(),§§pop());
         }
      }
      
      public static function §>!U§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc2_:* = null as String;
         var _loc3_:* = null as String;
         var _loc8_:* = null as §3!I§;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         §§push(Save.§@!A§().get("quality","H"));
         if(_loc12_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(!_loc11_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(_loc5_);
                  if(_loc12_)
                  {
                     §§push("L");
                     if(!_loc12_)
                     {
                        break;
                     }
                     if(§§pop() == §§pop())
                     {
                        if(_loc12_)
                        {
                           _loc2_ = "H";
                           if(_loc12_)
                           {
                              _loc3_ = "Quality: high";
                              break loop1;
                           }
                           break loop2;
                        }
                        break loop1;
                     }
                     §§push(_loc5_);
                  }
                  §§push("M");
                  break;
               }
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     §§push("L");
                     if(!_loc11_)
                     {
                        _loc2_ = §§pop();
                        §§push("Quality: low");
                        if(!_loc11_)
                        {
                           _loc3_ = §§pop();
                           if(_loc12_)
                           {
                              break loop1;
                           }
                           break loop2;
                        }
                        break;
                     }
                  }
                  else
                  {
                     §§push("M");
                  }
                  _loc2_ = §§pop();
                  §§push("Quality: medium");
                  if(_loc12_)
                  {
                     §§push(§§pop());
                  }
                  break;
               }
               _loc3_ = §§pop();
               break loop1;
            }
            var _loc6_:§'!E§ = §'!E§.§@!A§();
            while(true)
            {
               §§push(§=B§);
               §§push(int(_loc6_.§6a§.length));
               if(!_loc11_)
               {
                  §§push(1);
                  if(!_loc12_)
                  {
                     break;
                  }
                  §§push(§§pop() - §§pop());
               }
               §§push(-1);
               break;
            }
            var _loc7_:§3!I§ = §§pop().§@W§(§§pop(),§§pop(),-1);
            if(!_loc11_)
            {
               loop0:
               while(_loc7_.§#1§ != _loc7_.end)
               {
                  _loc8_ = _loc7_;
                  while(true)
                  {
                     if(_loc12_)
                     {
                        loop6:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc8_);
                              §§push(_loc8_.§#1§);
                              if(_loc12_)
                              {
                                 §§push(_loc7_.§['§);
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc12_)
                                 {
                                    break loop6;
                                 }
                                 §§push(int(§§pop()));
                                 if(_loc11_)
                                 {
                                    break loop6;
                                 }
                              }
                              var _temp_2:* = §§pop();
                              §§push(_temp_2);
                              §§push(_temp_2);
                              break;
                           }
                           _loc10_ = §§pop();
                           break;
                        }
                        §§pop().§#1§ = §§pop();
                        if(!_loc12_)
                        {
                           break;
                        }
                     }
                     §§push(_loc10_);
                     if(!_loc11_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc9_ = §§pop();
                     if(!_loc11_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  _loc6_.§6a§[_loc9_].hide();
               }
               if(!_loc11_)
               {
                  §'!E§.§@!A§().§>!W§(_loc3_,1);
               }
            }
            return;
         }
         Main.instance.§9!^§(_loc2_);
         break loop2;
      }
   }
}

