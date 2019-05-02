require 'rails_helper'

RSpec.describe 'Submissions API', type: :request do 
    let!(:submissions) { create_list(:submission, 10) }
    let(:submission_id) { submissions.first.id }

    describe 'POST /submissions' do 
        let(:valid_attributes) { {submission: { first_name: 'John', last_name: 'Dorian', 
        email: 'jd@example.com', slogan: 'just do it' } } }

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
            before { post '/submissions', params: { submission: { first_name: 'Foobar' } } }

            it 'returns status code 422' do
                expect(response).to have_http_status(422)
            end

            it 'returns a validation failure message' do
                expect(response.body)
                  .to match(/Validation failed: Last name can't be blank/)
            end

        end

        context 'when email is invalid' do 
            before { post '/submissions', params: { submission: { first_name: "Rachel", last_name: "Green",  email: "hello@gmail", slogan: "We werent on a break" } } }

            it 'returns status code 422' do
                expect(response).to have_http_status(422)
            end

            it 'returns a validation failure message' do
                expect(response.body)
                  .to match(/Validation failed: Email is invalid/)
            end
        end

        context 'when slogan is too long' do 
            before { post '/submissions', params: { submission: { first_name: "Rachel", last_name: "Green",  email: "hello@email.com", slogan: "#{'a' * 51}" } } }

            it 'returns status code 422' do
                expect(response).to have_http_status(422)
            end

            it 'returns a validation failure message' do
                expect(response.body)
                  .to include("Validation failed: Slogan is too long (maximum is 50 characters)")
            end
        end

    end
end