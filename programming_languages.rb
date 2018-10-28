def reformat_languages(languages)
  new_hash = {}
  languages.each do |lang_value, languages|
    languages.each do |language, type|
      type.each do |attribute, value|

        if new_hash[language].nil?
          new_hash[language] = {}
        end

          new_hash[language][:style] ||= []
          new_hash[language][:style] << lang_value

        if new_hash[language][attribute].nil?
          new_hash[language][attribute] = value
        end
      end
    end
  end
  new_hash
end
