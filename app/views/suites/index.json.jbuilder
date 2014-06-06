json.array!(@suites) do |suite|
  json.extract! suite, :id
  json.url suite_url(suite, format: :json)
end
