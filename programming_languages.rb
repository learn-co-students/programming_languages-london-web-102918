def reformat_languages(languages)
  languages_reformatted = {}
  languages.each do |style, language|
    language.each do |name, type|
      languages_reformatted[name] = type
      languages_reformatted[name][:style] = []
      languages_reformatted[name][:style] << style
     end
  end
  languages_reformatted[:javascript][:style] << :oo
  languages_reformatted
end

#there must be a better way to add :oo to the javascript array