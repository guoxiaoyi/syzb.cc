require 'yaml'

class AdminMenu

  # def initialize(args)
  #   
  # end

  @menu = YAML.load_file( File.join( Rails.root, 'config', 'admin_menu.yml' ) )
  @index = nil
  @roots = []
  def self.menu
    @menu
  end

  def self.menu_index
    return @index if @index
    @index = {}
    @menu["admin_menu"].each do |m|
      mi = Menu.new(m)
      @index[ mi.model ] = mi
      mi.submenu.each do |sm|
        smi = Menu.new(sm)
        mi.children.push smi
        smi.parent = mi
        @index[ smi.model ] = smi unless @index[ smi.model ]
      end
      @roots.push mi
    end
    @index
  end

  def self.get_current( controller_name )
    menu_index[controller_name.singularize]
  end

  def self.get_submenu( controller_name )
    curmenu = get_current( controller_name )
    return [] unless curmenu
    if curmenu.parent
      curmenu.parent.children
    else
      curmenu.children
    end
  end

  def self.roots
    menu_index
    @roots
  end

end

class Menu
  attr_accessor :parent, :children
  attr_accessor :model, :submenu, :engine
  def initialize( mh = {} )
    @model = mh["model"]
    @submenu = mh["submenu"] || []
    @children = []
    @parent = nil
    @engine = mh["engine"] || "main_app"
  end


  def current( controller_name )
    @model.pluralize == controller_name
  end

  def root_current?( controller_name )
    return true if current( controller_name )
    @children.collect{|cm| true if cm.current( controller_name )  }.compact.size > 0
  end

  def name
    if @engine == "main_app"
      @model.classify.constantize.model_name.human
    else
      "#{@engine.classify}::#{@model.classify}".constantize.model_name.human
    end
  rescue
    @model
  end

  def human
    name
  end

  def pluralize
    @model.pluralize
  end

  def engine
    @engine
  end

end
