RSpec.describe BsdWtf do
  it "has a version number" do
    expect(BsdWtf::VERSION).not_to be nil
  end

  it "translates lol" do
    expect(BsdWtf.wtf("lol").to_json).to eq("{\"success\":[{\"acronym\":\"LOL\",\"definition\":\"laughing out loud\"}],\"failure\":[]}")
  end
end
