require 'rails_helper'

RSpec.describe Todo do
  describe 'validations' do
    it { is_expected.to define_enum_for(:status).with_values([:incomplete, :complete]) }
    it { is_expected.to validate_presence_of(:title) }
  end
end
