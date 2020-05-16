# == Schema Information
#
# Table name: managers
#
#  id              :integer          not null, primary key
#  name            :string(50)
#  email           :string(100)
#  password_digest :string(100)
#  supper          :boolean          default(FALSE)
#  disabled        :boolean          default(FALSE)
#  created_at      :datetime
#  updated_at      :datetime
#

class Manager < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email
  validates :email, uniqueness: true
  # has_and_belongs_to_many :permissions
  include OmniAuth::Identity::SecurePassword
  has_secure_password

  has_many :users
  has_many :activities
  has_many :item_categories
  has_many :products
  has_many :books
  has_many :nodes
  has_many :notes
  has_many :donates
  has_many :wizcms_link_categories, class_name: 'WizcmsLink::Category'
  has_many :wizcms_article_categories, class_name: 'WizcmsArticle::ArticleCategory'

  after_create :data_init

  def data_init
    self.wizcms_article_categories.new({parent_id: 0, cite_key: "activity_article", name: "活动报道", published: true, brief: "请不要修改这个分类"}).save
    self.item_categories.new({name: '图书', parent_id: 0, cite_key: 'book'}).save
    self.item_categories.new({name: '商品', parent_id: 0, cite_key: 'product'}).save
    self.item_categories.new({name: '活动', parent_id: 0, cite_key: 'activity'}).save
    self.wizcms_link_categories.new({name: '活动', parent_id: 0, cite_key: 'course'}).save
  end

  def self.find_by_auth_key(key)
    where(email: key, disabled: true ).first
  end
  def self.auths
    tables = ActiveRecord::Base.connection.tables
    # wizcms_article_article_categories
    # wizcms_article_articles
    # wizcms_article_pages
    # wizcms_link_categories
    # wizcms_link_links
    tables.each_with_index do |tt,index|
      case tt
      when 'wizcms_link_categories'
        tables[index] = 'categories'
      when 'wizcms_link_links'
        tables[index] = 'links'
      when 'wizcms_article_article_categories'
        tables[index] = 'article_categories'
      when 'wizcms_article_articles'
        tables[index] = 'articles'
      end
    end
    tables.delete_at(tables.index('kindeditor_assets'))
    tables.delete_at(tables.index('schema_migrations'))
    tables.delete_at(tables.index('wizcms_article_pages'))
    p tables
    tables
  end

end
