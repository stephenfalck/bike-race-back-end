require 'rails_helper'

RSpec.describe 'Submissions API', type: :request do 
    let!(:submissions) { create_list(:submission, 10) }
    let(:submission_id) { submissions.first.id }

    describe 'POST /submissions' do 
        let(:valid_attributes) { {first_name: 'John', last_name: 'Dorian', 
        email: 'jd@example.com', slogan: 'just do it' } }

        context 'when the request is valid' do
            before { post '/submissions', params: valid_attributes }

            it 'creates a submission' do
                expect(json['first_name']).to eq('John')
            end

            it 'returns status code 201' do
                expect(response).to have_http_status(201)
            end

        end

        context 'when the request is invalid' do
            before { post '/submissions', params: { first_name: 'Foobar' } }

            it 'returns status code 422' do
                expect(response).to have_http_status(422)
            end

            it 'returns a validation failure message' do
                expect(response.body)
                  .to match(/Validation failed: Last name can't be blank/)
            end

        end

    end
end