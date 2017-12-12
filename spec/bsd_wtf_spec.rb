RSpec.describe BsdWtf do
  it "has a version number" do
    expect(BsdWtf::VERSION).not_to be nil
  end

  it "translates wtf" do
    expect(BsdWtf.wtf("wtf").to_json).to eq("{\"success\":[{\"acronym\":\"WTF\",\"definition\":\"where's the food\"}],\"failure\":[]}")
  end
end
