def reformat_languages(languages)
  new_hash = {}
  languages.map do |lang, type|
    type.map do |type, style|
      new_hash[type] ||= style
      new_hash[type][:style] ||= []
      new_hash[type][:style] << lang
    end
  end
  new_hash
end
