class SubmissionsController < ApplicationController

    def create
        @submission = Submission.create!(submission_params)
        json_response(@submission, :created)
    end

    private

  def submission_params
    params.permit(:first_name, :last_name, :email, :slogan )
  end

end
