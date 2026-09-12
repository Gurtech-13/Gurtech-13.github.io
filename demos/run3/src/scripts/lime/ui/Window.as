package lime.ui
{
   import §8![§.§[!]§;
   import flash.display.Stage;
   import lime.app.§!T§;
   import lime.app.§,!4§;
   import lime.app.§39§;
   import lime.app.§=!Q§;
   import lime.app.§=K§;
   import lime.app.§?!5§;
   import lime.app.§?8§;
   import lime.app.Application;
   import lime.graphics.Renderer;
   
   public class Window
   {
      
      public var stage:Stage;
      
      public var §^!]§:Renderer;
      
      public var §0%§:§?8§ = new §?8§();
      
      public var §'q§:§39§ = new §39§();
      
      public var §0!Z§:§?!5§ = new §?!5§();
      
      public var §1!§:§!T§ = new §!T§();
      
      public var §#N§:§,!4§ = new §,!4§();
      
      public var §-u§:§,!4§ = new §,!4§();
      
      public var §!!?§:§=!Q§ = new §=!Q§();
      
      public var §2F§:§,!4§ = new §,!4§();
      
      public var §6J§:§,!4§ = new §,!4§();
      
      public var §04§:§=!Q§ = new §=!Q§();
      
      public var §19§:§?!5§ = new §?!5§();
      
      public var §+m§:§?!5§ = new §?!5§();
      
      public var §9![§:§=K§ = new §=K§();
      
      public var §7U§:§=K§ = new §=K§();
      
      public var §8!+§:§?!5§ = new §?!5§();
      
      public var § $§:§?!5§ = new §?!5§();
      
      public var § !D§:§?!5§ = new §?!5§();
      
      public var §0g§:§?!5§ = new §?!5§();
      
      public var §-W§:§?8§ = new §?8§();
      
      public var §&h§:§?!5§ = new §?!5§();
      
      public var §+!O§:§?!5§ = new §?!5§();
      
      public var §]!$§:§?!5§ = new §?!5§();
      
      public var §9;§:§?!5§ = new §?!5§();
      
      public var id:int = -1;
      
      public var config:Object;
      
      public var §6l§:§[!]§;
      
      public var application:Application;
      
      public var §[!R§:int = 0;
      
      public var §=!'§:int = 0;
      
      public var § !?§:int = 0;
      
      public var §#§:String = "";
      
      public var §+!8§:Number = 1;
      
      public var §>!C§:Boolean;
      
      public var §8n§:int = 0;
      
      public var §^!!§:Boolean = false;
      
      public var §6!G§:Boolean;
      
      public function Window(param1:Object = undefined)
      {
         config = param1;
         if(param1 != null)
         {
            if(Reflect.hasField(param1,"width"))
            {
               § !?§ = param1.width;
            }
            if(Reflect.hasField(param1,"height"))
            {
               §8n§ = param1.height;
            }
            if(Reflect.hasField(param1,"x"))
            {
               §=!'§ = param1.x;
            }
            if(Reflect.hasField(param1,"y"))
            {
               §[!R§ = param1.y;
            }
            if(Reflect.hasField(param1,"fullscreen"))
            {
               §^!!§ = param1.fullscreen;
            }
            if(Reflect.hasField(param1,"borderless"))
            {
               §6!G§ = param1.borderless;
            }
            if(Reflect.hasField(param1,"resizable"))
            {
               §>!C§ = param1.resizable;
            }
            if(Reflect.hasField(param1,"title"))
            {
               §#§ = param1.title;
            }
         }
         §6l§ = new §[!]§(this);
      }
      
      public function §"!§(param1:int) : int
      {
         resize(param1,§8n§);
         return § !?§;
      }
      
      public function §&s§(param1:int) : int
      {
         resize(§ !?§,param1);
         return §8n§;
      }
      
      public function resize(param1:int, param2:int) : void
      {
         §6l§.resize(param1,param2);
         § !?§ = param1;
         §8n§ = param2;
      }
      
      public function create(param1:Application) : void
      {
         application = param1;
         §6l§.create(param1);
         if(§^!]§ != null)
         {
            §^!]§.create();
         }
      }
      
      public function close() : void
      {
         §6l§.close();
      }
   }
}

