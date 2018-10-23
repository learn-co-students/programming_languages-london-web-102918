def reformat_languages(languages)
  new_hash = {}
  languages.each do|style, language|
    language.each do|name, attribute|
      new_hash[name] = attribute
      new_hash[name][:style] = []
      new_hash[name][:style] << style
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end
