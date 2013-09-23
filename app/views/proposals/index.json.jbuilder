json.array!(@proposals) do |proposal|
  json.extract! proposal, 
  json.url proposal_url(proposal, format: :json)
end
