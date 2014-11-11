json.array!(@info_queries) do |info_query|
  json.extract! info_query, :id, :is_owner, :user_size, :oppo_size, :user_loc, :oppo_loc, :law_issue, :tech_area, :judge1, :judge2, :judge3
  json.url info_query_url(info_query, format: :json)
end
