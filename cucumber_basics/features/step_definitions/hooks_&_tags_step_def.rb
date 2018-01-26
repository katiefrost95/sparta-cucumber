Given("have a before hook in place") do
  expect(@users).to be_kind_of(Array)
end

Then("I can validate the information in the before hook") do
  expect(@environment).to eq('development')
  expect(@users[0]).to eq('Dave')
  expect(@users[1]).to eq('Susan')
  expect(@users[2]).to eq('Jamie')
end
