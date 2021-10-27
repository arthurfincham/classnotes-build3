module NotesHelper
  def format_date(note)
    note.date.strftime("#{note.date.day.ordinalize} %b %Y")
  end

  def short_format_date(note)
    note.date.strftime("%a #{note.date.day.ordinalize} %b")
  end

  def table_header(url)
    if url.include? 'tags'
      request[:tag].parameterize(separator: '_')
    elsif url.include? 'notes/new'
      'New Note'
    elsif url.include? 'notes' && 'edit'
      "##{@note.id}"
    else
      'All Notes'
    end
  end

  def format_title(note)
    note.title.parameterize(separator: '_').downcase if note.title
  end

  def format_tags(note)
    note.tag_list.map do |tag|
      tag.parameterize(separator: '_').downcase
    end
  end

  def show_tag_toggle(url)
    if url.include? 'notes/new'
      false
    elsif url.include? 'notes' && 'edit'
      false
    else
      true
    end
  end
end
