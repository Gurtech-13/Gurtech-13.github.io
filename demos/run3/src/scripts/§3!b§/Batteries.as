package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.menu.§1!?§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§4!R§;
   
   public class Batteries extends §+Z§
   {
      
      public static var §2#§:* = {"fields":{"child":{"fade":null}}};
      
      public var student:§^s§;
      
      public var skater:§^s§;
      
      public var child:§^s§;
      
      public function Batteries()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super(§>K§.§?t§,2,null,null,null,§+!"§.CUSTOM(§1!?§.§"F§.§0!S§));
               if(!_loc2_)
               {
                  break;
               }
               §§push(§§findproperty(frames));
               §§push(frame0);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(_loc1_)
               {
                  break;
               }
            }
            name = "Batteries";
            break;
         }
      }
      
      override public function unloadLevel() : void
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
                  tunnel = null;
                  if(!_loc2_)
                  {
                     skater = null;
                     if(_loc2_)
                     {
                        break;
                     }
                  }
                  student = null;
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               child = null;
               if(!_loc2_)
               {
                  break loop0;
               }
               break;
            }
            return;
         }
         sprites.length = 0;
         break loop1;
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc7_)
            {
               skater = new §^s§(§9_§,§'O§.skater,false,null,false,null);
               if(!_loc8_)
               {
                  break;
               }
            }
            sprites.push(skater);
            break;
         }
         §§push(§!^§.pathName);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(_loc8_)
            {
               skater.goesTo = new § !N§(_loc2_,1);
               if(!_loc8_)
               {
                  break;
               }
               student = new §^s§(§9_§,§'O§.student,false,null,false,null);
               if(_loc7_)
               {
                  break;
               }
            }
            sprites.push(student);
            break;
         }
         §§push(§!^§.pathName);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(_loc8_)
         {
            student.goesTo = new § !N§(_loc4_,1);
            while(true)
            {
               if(_loc8_)
               {
                  child = new §^s§(§9_§,§'O§.child,true,null,false,null);
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               sprites.push(child);
               break;
            }
         }
         §§push(§!^§.pathName);
         if(_loc8_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         var _loc6_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc5_);
         if(!_loc7_)
         {
            child.goesTo = new § !N§(_loc6_,2);
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §4!R§.§1!A§(0,-1.5707963267948966,0,tunnel.§<!M§.§,t§);
         tunnel.§<!M§.reset();
         tunnel.§<!M§.§6!&§(130,-75,0);
         tunnel.display(0);
         while(true)
         {
            if(_loc2_)
            {
               student.§9E§(2,2);
               student.spritesheet.§,=§(70);
               if(_loc3_)
               {
                  break;
               }
            }
            skater.§9E§(1,2);
            break;
         }
         skater.spritesheet.§,=§(77);
         if(!_loc3_)
         {
            child.§9E§(15,25.5);
            while(true)
            {
               if(!_loc3_)
               {
                  child.spritesheet.§,=§(119);
                  if(_loc2_)
                  {
                     var _temp_1:* = dialog;
                     §§push(_temp_1);
                     §§push(_temp_1.§[Y§);
                     if(_loc2_)
                     {
                        §§push(§§pop() * 0.8);
                     }
                     §§pop().§[Y§ = §§pop();
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
               }
               loop2:
               while(true)
               {
                  §§push(dialog);
                  §§push("All I\'m saying is, they mean the same thing, and everyone\'s already familiar with batteries.");
                  §§push(-200);
                  §§push(-320);
                  if(!_loc3_)
                  {
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(-1);
                           if(!_loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00eb:
                                    §§push(null);
                                    break loop2;
                                 }
                                 break;
                              }
                              §§push(-1);
                              if(_loc3_)
                              {
                                 break loop3;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           addr010e:
                           §§push(-1 / 2.5);
                           break loop2;
                        }
                        §§push(-1);
                        if(_loc2_)
                        {
                           break;
                        }
                        §§goto(addr010e);
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr00eb);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1400 == null ? null : int(Math.round(1400 / 2.5)),null,null);
               break;
            }
         }
         var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc3_)
         {
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("But \"power cells\" sounds so much smarter!");
                     §§push(320);
                     §§push(-160);
                     if(!_loc3_)
                     {
                        §§push(-1);
                        if(!_loc2_)
                        {
                           break loop5;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              §§push(null);
                              break loop6;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(-1);
                              break loop5;
                           }
                        }
                     }
                     §§push(-1);
                     if(!_loc3_)
                     {
                        break;
                     }
                     break loop5;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1000 == null ? null : int(Math.round(1000 / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop6;
         }
         _loc1_ = new § 6§(student.§<!U§());
         if(_loc2_)
         {
            loop8:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Who cares about sounding smart? Just talk normally.");
                  §§push(-200);
                  §§push(-40);
                  if(_loc2_)
                  {
                     §§push(-1);
                     if(!_loc2_)
                     {
                        break loop8;
                     }
                     if(§§pop() == null)
                     {
                        if(!_loc3_)
                        {
                           §§push(null);
                           break;
                        }
                     }
                     else
                     {
                        §§push(-1);
                        if(_loc3_)
                        {
                           break loop8;
                        }
                        if(§§pop() >= 0)
                        {
                           §§push(-1);
                           break loop8;
                        }
                     }
                  }
                  §§push(-1);
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop8;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1200 == null ? null : int(Math.round(1200 / 2.5)),0,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop9;
         }
      }
   }
}

