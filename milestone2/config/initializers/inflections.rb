# Be sure to restart your server when you modify this file.

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular 'involve','involves'
  inflect.irregular 'en_banc_review','en_banc_reviews'
  inflect.irregular 'supreme_court_review','supreme_court_reviews'
  inflect.irregular 'rule','rules'
  inflect.irregular 'chambers_at','chambers_ats'
  inflect.irregular 'chief_judge','chief_judges'
  inflect.irregular 'court','courts'
  inflect.irregular 'judge','judges'
  inflect.irregular 'party','parties'
  inflect.irregular 'case','cases'
  inflect.irregular 'tech_judge','tech_judges'
end

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
