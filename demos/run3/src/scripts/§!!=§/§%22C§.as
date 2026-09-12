package §!!=§
{
   import §&%§.§@w§;
   import §+!4§.§3!O§;
   import §+!4§.§8!_§;
   import §6[§.§&!K§;
   import com.player03.run3.Save;
   import flash.display.DisplayObjectContainer;
   import unitsystem.§7o§;
   
   public class §"C§
   {
      
      public static var §?!&§:§8!_§;
      
      public static var §&!#§:Vector.<§3!O§>;
      
      public static var §=t§:String = "controlScheme";
      
      public function §"C§()
      {
      }
      
      public static function init(param1:DisplayObjectContainer) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Vector.<§3!O§> = new Vector.<§3!O§>(0,false);
         while(true)
         {
            if(_loc4_)
            {
               §"C§.§&!#§ = _loc2_;
               if(_loc5_)
               {
                  break;
               }
               §"C§.§?!&§ = new §8!_§(["left","right","up","down","jump"]);
               if(_loc5_)
               {
                  break;
               }
            }
            §"C§.§&!#§.push(§"C§.§?!&§);
            if(_loc4_)
            {
               break;
            }
            §§goto(addr008a);
         }
         §"C§.§?!&§.§'S§("select",[32,13]);
         addr008a:
         §§push(int(Save.§@!A§().get(§"C§.§=t§,-1)));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            loop1:
            while(true)
            {
               §§push(false);
               if(!_loc5_)
               {
                  if(_loc3_ >= 0)
                  {
                     while(true)
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              break loop1;
                           }
                           §§push(_loc3_ < int(§"C§.§&!#§.length));
                           if(!_loc4_)
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
                  if(_loc4_)
                  {
                     §7o§.§!!U§(§"C§.§&!#§[_loc3_]);
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
               }
               else
               {
                  §7o§.§!!U§(§"C§.§?!&§);
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            §§push(Save.§@!A§());
            §§push(§"C§.§0z§);
            if(_loc4_)
            {
               §§push(§§pop());
            }
            §§pop().§7!H§(§§pop());
         }
      }
      
      public static function §]!S§(param1:§3!O§) : void
      {
         §7o§.§!!U§(param1);
      }
      
      public static function §;w§(param1:§3!O§) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = 0;
         loop0:
         while(true)
         {
            if(_loc3_)
            {
               if(§7o§.controlScheme != param1)
               {
                  break;
               }
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(_loc3_)
                     {
                        §§push(int(§"C§.§&!#§.indexOf(param1,0)));
                        if(_loc4_)
                        {
                           break;
                        }
                        §§push(1);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§push(int(§§pop()));
                           if(!_loc4_)
                           {
                              _loc2_ = §§pop();
                              if(!_loc3_)
                              {
                                 break loop0;
                              }
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 break;
                              }
                           }
                           §§push(int(§"C§.§&!#§.length));
                        }
                        if(§§pop() < §§pop())
                        {
                           break loop1;
                        }
                        if(_loc4_)
                        {
                           break loop0;
                        }
                     }
                     §§push(0);
                     if(_loc3_)
                     {
                        break;
                     }
                     addr009e:
                     _loc2_ = §§pop();
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     break loop0;
                  }
                  §§goto(addr009e);
               }
            }
            break loop1;
         }
      }
      
      public static function §0z§() : void
      {
         Save.§@!A§().§1!R§(§"C§.§=t§,int(§"C§.§&!#§.indexOf(§7o§.controlScheme,0)));
      }
   }
}

