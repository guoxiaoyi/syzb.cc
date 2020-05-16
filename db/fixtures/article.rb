# WizcmsArticle::ArticleCategory.seed(:id,
#   {id: 1, name: '论坛动态', custom_order: '', parent_id: 0, brief: 'bbs', published: 1, cite_key: 'bbs'},
#   {id: 2, name: '研究成果', custom_order: '', parent_id: 0, brief: 'study', published: 1, cite_key: 'study'},
#   {id: 3, name: '媒体动态', custom_order: '', parent_id: 0, brief: 'news', published: 1, cite_key: 'news'},
#   {id: 4, name: '高端视点', custom_order: '', parent_id: 0, brief: 'see', published: 1, cite_key: 'see'},
#   {id: 5, name: '工作动态', custom_order: '', parent_id: 0, brief: 'work', published: 1, cite_key: 'work'}
# )
# WizcmsArticle::Page.seed(:id,
#   {id: 1, title: '组织机构', content: '组织机构组织机构', published: 1, cite_key: 'organ', keywords: '', brief: 'organ', parent_id: ''},
#   {id: 2, title: '学术委员会', content: '联系我们联系我们', published: 1, cite_key: 'learning', keywords: '', brief: 'learning', parent_id: ''},
#   {id: 3, title: '企业委员会', content: '联系我们联系我们', published: 1, cite_key: 'enterprise', keywords: '', brief: 'enterprise', parent_id: ''},
#   {id: 4, title: '联系我们', content: '联系我们联系我们', published: 1, cite_key: 'contact_us', keywords: '', brief: 'contact_us', parent_id: ''}
# )
# WizcmsArticle::Article.seed(:id,
#   {id: 1, title: '韩总统府拟26日向国会提交新总理提名人任命案', author: '管理员', published: 1, brief: '【环球网综合报道】据韩联社5月22日报道，韩国总统府青瓦台发言人闵庚旭22日表示，青瓦台计划26日向', content: "<p>　　【环球网综合报道】据韩联社5月22日报道，韩国总统府青瓦台发言人闵庚旭22日表示，青瓦台计划26日向国会提交新任国务总理提名人黄教安的任命案和人事听证提请。</p>
# <p>　　分析认为，青瓦台选择26日向国会提交黄教安的任命案是希望批准程序能在韩国总统朴槿惠6月访美前完成。据韩国《人事听证会法》规定，国会人事听证特别委员会应从任命案提交之日起15天内结束听证会，国会所有审查程序应在20天内完成。</p>
# <p>　　据了解，人事听证报告需在听证会结束3天内提交给韩国国会议长并获得国会全体会议批准。韩国国务总理任命批准程序较部门部长任命批准程序更为严格。</p>", article_category_id: '1', published_at: Time.now},
#   {id: 2, title: '生成文章数据-分类1-标题2', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '1', published_at: Time.now},
#   {id: 3, title: '生成文章数据-分类1-标题3', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '1', published_at: Time.now},
#   {id: 4, title: '生成文章数据-分类1-标题4', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '1', published_at: Time.now},
#   {id: 5, title: '生成文章数据-分类1-标题5', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '1', published_at: Time.now},
#   {id: 6, title: '生成文章数据-分类1-标题6', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '1', published_at: Time.now},
#   {id: 7, title: '生成文章数据-分类2-标题1', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '2', published_at: Time.now},
#   {id: 8, title: '生成文章数据-分类2-标题2', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '2', published_at: Time.now},
#   {id: 9, title: '生成文章数据-分类2-标题3', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '2', published_at: Time.now},
#   {id: 10, title: '生成文章数据-分类2-标题4', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '2', published_at: Time.now},
#   {id: 11, title: '生成文章数据-分类2-标题5', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '2', published_at: Time.now},
#   {id: 12, title: '生成文章数据-分类2-标题6', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '2', published_at: Time.now},
#   {id: 13, title: '生成文章数据-分类3-标题1', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '3', published_at: Time.now},
#   {id: 14, title: '生成文章数据-分类3-标题2', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '3', published_at: Time.now},
#   {id: 15, title: '生成文章数据-分类3-标题3', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '3', published_at: Time.now},
#   {id: 16, title: '生成文章数据-分类3-标题4', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '3', published_at: Time.now},
#   {id: 17, title: '生成文章数据-分类3-标题5', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '3', published_at: Time.now},
#   {id: 18, title: '生成文章数据-分类3-标题6', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '3', published_at: Time.now},
#   {id: 19, title: '生成文章数据-分类4-标题1', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '4', published_at: Time.now},
#   {id: 20, title: '生成文章数据-分类4-标题2', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '4', published_at: Time.now},
#   {id: 21, title: '生成文章数据-分类4-标题3', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '4', published_at: Time.now},
#   {id: 22, title: '生成文章数据-分类4-标题4', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '4', published_at: Time.now},
#   {id: 23, title: '生成文章数据-分类4-标题5', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '4', published_at: Time.now},
#   {id: 24, title: '生成文章数据-分类5-标题6', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '5', published_at: Time.now},
#   {id: 25, title: '生成文章数据-分类5-标题1', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '5', published_at: Time.now},
#   {id: 26, title: '生成文章数据-分类5-标题2', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '5', published_at: Time.now},
#   {id: 27, title: '生成文章数据-分类5-标题3', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '5', published_at: Time.now},
#   {id: 28, title: '生成文章数据-分类5-标题4', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '5', published_at: Time.now},
#   {id: 29, title: '生成文章数据-分类5-标题5', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '5', published_at: Time.now},
#   {id: 30, title: '生成文章数据-分类5-标题6', author: '管理员', published: 1, brief: '文章的简介文章的简介文章的简介文章的简介文章的简介', content: "生成文章数据内容生成文章数据内容生成文章数据内容生成文章数据内容", article_category_id: '5', published_at: Time.now}
# )
ProductCategory.seed(:id,
  {id: 1, en_title: "SKATEBOARD", zh_title: "滑板", cid: 0},
  {id: 2, en_title: "BASEBALL/ SOFTBALL BAT", zh_title: "球棒", cid: 0},

  {id: 3, en_title: "BLANK DECKS", zh_title: "光板板片", cid: 1},
  {id: 4, en_title: "DOUBLE KICK CONCAVE DECK", zh_title: "双翘凹板", cid: 3},
  {id: 5, en_title: "LONGBOARD DECK", zh_title: "长板", cid: 3},
  {id: 6, en_title: "FISH DECK", zh_title: "鱼板", cid: 3},
  {id: 7, en_title: "CRUISER DECK", zh_title: "巡洋舰板", cid: 3},

  {id: 8, en_title: "DECKS", zh_title: "滑板板片", cid: 1},
  {id: 9, en_title: "DOUBLE KICK CONCAVE DECK", zh_title: "双翘凹板", cid: 8},
  {id: 10, en_title: "LONGBOARD DECK", zh_title: "长板", cid: 8},
  {id: 11, en_title: "FISH DECK", zh_title: "鱼板", cid: 8},
  {id: 12, en_title: "CRUISER DECK", zh_title: "巡洋舰板", cid: 8},

  {id: 13, en_title: "COMPLETE SKATEBOARD", zh_title: "成品滑板", cid: 1},
  {id: 14, en_title: "DOUBLE KICK CONCAVE SKATEBOARD", zh_title: "双翘凹板", cid: 13},
  {id: 15, en_title: "LONGBOARD SKATEBOARD", zh_title: "长板", cid: 13},
  {id: 16, en_title: "FISH SKATEBOARD", zh_title: "鱼板", cid: 13},
  {id: 17, en_title: "CRUISER SKATEBOARD", zh_title: "巡洋舰板", cid: 13},

  {id: 18, en_title: "ACCESSORIES", zh_title: "滑板配件", cid: 1},
  {id: 19, en_title: "Grip Tape", zh_title: "防滑砂纸", cid: 18},
  {id: 20, en_title: "Truck", zh_title: "滑板支架", cid: 18},
  {id: 21, en_title: "PU Wheel", zh_title: "PU 滑板轮子", cid: 18},
  {id: 22, en_title: "Bearing", zh_title: "滑板轴承", cid: 18},
  {id: 23, en_title: "Wax", zh_title: "滑板蜡块", cid: 18},
  {id: 24, en_title: "Tool", zh_title: "滑板工具", cid: 18},

  {id: 25, en_title: "Pro Bat", zh_title: "职业棒", cid: 2},
  {id: 26, en_title: "Fungo Bat", zh_title: "教练棒", cid: 2},
  {id: 27, en_title: "Training Bat", zh_title: "练习棒", cid: 2},
  {id: 28, en_title: "Adult Bat", zh_title: "成人棒", cid: 2},
  {id: 29, en_title: "Youth Bat", zh_title: "少年棒", cid: 2},
  {id: 30, en_title: "Trophy Bat", zh_title: "练习棒", cid: 2},
  {id: 31, en_title: "Glove Shaping Mallet", zh_title: "手套塑形锤", cid: 2}
)