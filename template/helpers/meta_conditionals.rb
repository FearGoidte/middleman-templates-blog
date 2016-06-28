def meta_title
  if @title
    meta_title = @title
  elsif current_resource.data.title
    meta_title = current_resource.data.title
  else
    meta_title = data.settings.site.name
  end
  meta_title = strip_tags(meta_title)
end
def meta_description
  if @description
    meta_description = @description
  elsif current_resource.data.description
    meta_description = current_resource.data.description
  else
    meta_description = data.settings.site.description
  end
  meta_description = strip_tags(meta_description)
end
