module ApplicationHelper
  def pannel_list( pannel_obj )
    render partial: 'layouts/pannel_list', locals:{ pannel_list: pannel_obj}
  end

  def panel(title = nil, &block)
    render "layouts/panel", title: title, content: capture(&block)
  end

  def cc_time(tar)
      t,bt = Time.at(tar),Time.now.to_i-tar
      case bt
      when 0..60
        "刚刚"
      when 0..3600
        "#{bt / 60} 分钟前"
      when 3600..3600*24
        "#{bt / 3600} 小时前"
      when 3600*24..3600*24*2
        "昨日 #{t.strftime('%H:%M')}"
      when 3600*24*2..3600*24*7
        "#{bt / 86400} 天前"
      # when 3600*24*7..3600*24*365
      #   "#{bt / 2592000} 月前"
      else
        t.strftime('%Y-%m-%d')
      end
  end

  def hide_phone(str)
    if str.length > 6
      str[3..6] = "****"
    end
    str
  end


  def truncate_u(text, length = 20, truncate_string = "...")
    l=0
    char_array=text.unpack("U*")
    char_array.each_with_index do |c,i|
      l = l+ (c<127 ? 0.5 : 1)
      if l>=length
        return char_array[0..i].pack("U*")+(i<char_array.length-1 ? truncate_string : "")
      end
    end
    return text
  end

  def flash_message
    html = ""
    if flash[:notice]
      html << %{<div class="notice bg-success">#{flash[:notice]}</div>}
    end
    if flash[:alert]
      html << %{<div class="notice bg-warning">#{flash[:alert]}</div>}
    end
    if flash[:error]
      html << %{<div class="notice bg-danger">#{flash[:error]}</div>}
    end
    return sanitize(html)
  end
end
