require 'rails_helper'

RSpec.describe Rider, type: :model do
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:city_of_origin) }
  it { should validate_presence_of(:state_of_origin) }
  it { should validate_presence_of(:longitude) }
  it { should validate_presence_of(:latitude) }
end
