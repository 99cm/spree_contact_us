require 'rails_helper'
require 'generators/spree_contact_us/install/install_generator'

RSpec.describe SpreeContactUs::Generators::InstallGenerator do

  include GeneratorSpec::TestCase
  destination File.expand_path("../../../../../dummy", __FILE__)

  before do
    run_generator
  end

  it "creates initializer file" do
    assert_file "config/initializers/spree_contact_us.rb"
  end

end
