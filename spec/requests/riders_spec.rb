require 'rails_helper'

RSpec.describe 'Riders API', type: :request do
    let!(:riders) { create_list(:rider, 20) }
    let(:rider_id) { riders.first.id }

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

    describe 'GET /todos/:id' do
        before { get "/riders/#{rider_id}"}

        context 'when the record exists' do
            it 'returns the rider' do
              expect(json).not_to be_empty
              expect(json['id']).to eq(rider_id)
            end

            it 'returns status code 200' do
                expect(response).to have_http_status(200)
            end
        end

        context 'when the record does not exist' do
            let(:rider_id) { 100 }
      
            it 'returns status code 404' do
              expect(response).to have_http_status(404)
            end
      
            it 'returns a not found message' do
              expect(response.body).to match(/Couldn't find Rider/)
            end
        end

    end

end