package lime.graphics
{
   import §8![§.§<O§;
   import lime.app.§;Y§;
   import lime.app.§?!5§;
   import lime.ui.Window;
   
   public class Renderer
   {
      
      public var window:Window;
      
      public var type:§2!0§;
      
      public var onRender:§?!5§ = new §?!5§();
      
      public var §8!]§:§;Y§ = new §;Y§();
      
      public var §#!O§:§?!5§ = new §?!5§();
      
      public var context:RenderContext;
      
      public var §6l§:§<O§ = new §<O§(this);
      
      public function Renderer(param1:Window)
      {
         window = param1;
         window.§^!]§ = this;
      }
      
      public function flip() : void
      {
         §6l§.flip();
      }
      
      public function create() : void
      {
         §6l§.create();
      }
   }
}

