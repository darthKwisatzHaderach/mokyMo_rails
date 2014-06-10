json.array!(@case_steps) do |case_step|
  json.extract! case_step, :id
  json.url case_step_url(case_step, format: :json)
end
