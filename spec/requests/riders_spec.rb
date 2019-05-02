require 'rails_helper'

RSpec.describe 'Riders API', type: :request do
    let!(:riders) { create_list(:rider, 20) }

    describe 'GET/riders' do 
        before { get '/riders' }

        it 'returns riders' do
            expect(json).not_to be_empty
            expect(json.size).to eq(20)
        end

        it 'returns status code 200' do
            expect(response).to have_http_status(200)
        end
    end

end