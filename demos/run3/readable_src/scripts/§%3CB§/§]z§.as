package §<B§
{
   import §!!$§.§ 6§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§4$§;
   import §[!P§.§30§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Save;
   import com.player03.run3.api.§4!b§;
   import com.player03.run3.api.News;
   import com.player03.run3.menu.§[!<§;
   import com.player03.run3.menu.§[I§;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§1!;§;
   import flash.Boot;
   import flash.display.Shape;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §]z§ extends §6!_§
   {
      
      public static var init__:Boolean;
      
      public static var §?!G§:§1!;§;
      
      public var §8K§:int;
      
      public function §]z§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc1_)
               {
                  if(Boolean(§2K§))
                  {
                     break;
                  }
                  if(!_loc1_)
                  {
                     break loop0;
                  }
               }
               §2K§ = function():Number
               {
                  var _temp_1:* = true;
                  var _loc3_:Boolean = false;
                  var _loc4_:Boolean = _temp_1;
                  var _loc1_:* = NaN;
                  var _loc2_:* = null as §1!;§;
                  if(_loc4_)
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
                              §§push(true);
                              if(!_loc3_)
                              {
                                 if(News.§@!A§().§8,§ != null)
                                 {
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§pop();
                                          if(!_loc4_)
                                          {
                                             break loop2;
                                          }
                                          §§push(News.§@!A§().§8,§);
                                          if(!_loc4_)
                                          {
                                             break loop1;
                                          }
                                          §§push(int(§§pop().length));
                                          if(!_loc4_)
                                          {
                                             break loop0;
                                          }
                                          §§push(§§pop() == 0);
                                          if(_loc3_)
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
                                 if(!_loc3_)
                                 {
                                    §§push(0);
                                    break loop0;
                                 }
                                 break;
                              }
                              §§push(News.§@!A§().§8,§);
                              break loop1;
                           }
                        }
                        §§push(int(News.§@!A§().§8,§.length));
                        if(_loc4_)
                        {
                           §§push(§§pop() - 1);
                        }
                        §§push(Number(§§pop()[§§pop()].timestamp.getTime()));
                        if(!_loc3_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc1_ = §§pop();
                        break loop2;
                     }
                     return §§pop();
                  }
                  _loc2_ = §]z§.§?!G§;
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        §§push(_loc1_);
                        if(!_loc4_)
                        {
                           break;
                        }
                        if(§§pop() > Number(Save.§@!A§().get(_loc2_.§=-§,Number(_loc2_.§ -§))))
                        {
                           if(_loc4_)
                           {
                              §§push(§8K§);
                              if(_loc4_)
                              {
                                 if(§§pop() < 41.3)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(§§findproperty(§8K§));
                                       §§push(§8K§);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() * 3);
                                       }
                                       §§pop().§8K§ = §§pop();
                                    }
                                    addr0108:
                                    §§push(41.3);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() / §8K§);
                                    }
                                    break;
                                 }
                                 §§push(1);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr012c);
                                 }
                              }
                              return §§pop();
                           }
                           §§goto(addr0108);
                        }
                        else
                        {
                           §§push(1);
                        }
                        addr012c:
                        return §§pop();
                     }
                     §§goto(addr0108);
                  }
                  return §§pop();
               };
               if(!_loc2_)
               {
                  break;
               }
               break loop0;
            }
            §8K§ = 1;
            if(_loc1_)
            {
               break;
            }
            §§goto(addr0066);
         }
         §§push(this);
         §§push(null);
         §§push(§#_§);
         if(_loc1_)
         {
            §§push(§§pop());
         }
         §§pop().super(§§pop(),§§pop(),"News");
         addr0066:
      }
      
      public function §#_§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            §[!<§.§@!A§().§4X§(§[I§.§@!A§());
         }
         §§push(News.§@!A§().§8,§);
         §§push(int(News.§@!A§().§8,§.length));
         if(!_loc5_)
         {
            §§push(§§pop() - 1);
         }
         §§push(Number(§§pop()[§§pop()].timestamp.getTime()));
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:§1!;§ = §]z§.§?!G§;
         if(!_loc5_)
         {
            while(true)
            {
               if(_loc2_ > Number(Save.§@!A§().get(_loc3_.§=-§,Number(_loc3_.§ -§))))
               {
                  if(_loc4_)
                  {
                     §§push(§]z§.§?!G§);
                     §§push(News.§@!A§().§8,§);
                     §§push(int(News.§@!A§().§8,§.length));
                     if(_loc4_)
                     {
                        §§push(§§pop() - 1);
                     }
                     §§pop().§?F§(Number(§§pop()[§§pop()].timestamp.getTime()));
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  §0!#§.§@!A§().§"j§(6);
                  if(_loc5_)
                  {
                     break;
                  }
               }
               §8K§ = 1;
               break;
            }
         }
      }
   }
}

