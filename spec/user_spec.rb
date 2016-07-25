require('spec_helper')

describe(User) do
  it("downcases the user inputs") do
    new_user = User.create({:first_name => "CHARLIE", :last_name => "Magmar", :track => "Ruby", :transportation => "Bike"})
    expect(new_user.first_name()).to(eq("charlie"))
  end
end
