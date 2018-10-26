# WHAT I'M GIVEN:
languages = {
  oo: {
    ruby: {
      type: 'interpreted'
    },
    javascript: {
      type: 'interpreted'
    },
    python: {
      type: 'interpreted'
    },
    java: {
      type: 'compiled'
    }
  },
  functional: {
    clojure: {
      type: 'compiled'
    },
    erlang: {
      type: 'compiled'
    },
    scala: {
      type: 'compiled'
    },
    javascript: {
      type: 'interpreted'
    }

  }
}

# WHAT I NEED:
# {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :javascript => {
#     :type => "interpreted",
#     :style => [:oo, :functional]
#   },
#   :python => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :java => {
#     :type => "compiled",
#     :style => [:oo]
#   },
#   :clojure => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :erlang => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :scala => {
#     :type => "compiled",
#     :style => [:functional]
#   }
# }

def create_new_hash(languages)
  new_hash = {}
  languages.values[0].keys.each do |lang_name|
    # puts languages[:oo][lang_name][:type]
    new_hash[lang_name] = { type: languages[:oo][lang_name][:type], style: [] }
  end
  languages.values[1].keys.each do |lang_name|
    # puts languages[:functional][lang_name][:type]
    new_hash[lang_name] = { type: languages[:functional][lang_name][:type], style: [] }
  end
  new_hash
end

def reformat_languages(languages)
  # your code here
  new_hash = create_new_hash(languages)

  new_hash.each do |lang_name, _atts|
    if languages[:oo].key?(lang_name) && languages[:functional].key?(lang_name)
      new_hash[lang_name][:style] << :functional
      new_hash[lang_name][:style] << :oo
    elsif languages[:oo].key?(lang_name)
      new_hash[lang_name][:style] << :oo
    elsif languages[:functional].key?(lang_name)
      new_hash[lang_name][:style] << :functional
    end
    new_hash
  end
end

reformat_languages(languages)
