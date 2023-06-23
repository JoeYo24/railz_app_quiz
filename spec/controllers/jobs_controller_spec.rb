require 'rails_helper'

RSpec.describe JobsController, type: :controller do
    describe "post #create" do
        it "creates a new job" do
            Job.create(url: "test", employer_name: "test", employer_description: "test", job_title: "test", job_description: "test", years_of_experience: 1, education_requirement: "test", industry: "test", base_salary: 1, employment_type_id: 1)
            expect(Job.count).to eq(1)
        end
    end
    
    describe "get #index" do
        it "displays all jobs" do
            Job.create(url: "test", employer_name: "test", employer_description: "test", job_title: "test", job_description: "test", years_of_experience: 1, education_requirement: "test", industry: "test", base_salary: 1, employment_type_id: 1)
            expect(Job.all).to eq(
                {
                    "jobs": [
                        {
                            "url": null,
                            "employer_name": null,
                            "employer_description": null,
                            "job_title": null,
                            "job_description": null,
                            "years_of_experience": null,
                            "education_requirement": null,
                            "industry": null,
                            "base_salary": null,
                            "employment_type_id": null,
                            "created_at": "2023-06-23T20:55:58.333Z"
                        }
                    ]
                }
            )
        end
    end
    
    describe "get #show" do 
        it "displays a single job by id" do
            Job.find_by(id: 2)
            expect(response.body).to eq({
                "job": {
                    "id": 2,
                    "url": "test",
                    "employer_name": "test",
                    "employer_description": "test",
                    "job_title": "test",
                    "job_description": "test",
                    "years_of_experience": 1,
                    "education_requirement": "test",
                    "industry": "test",
                    "base_salary": 1,
                    "employment_type_id": 1,
                    "created_at": "2023-06-23T21:11:41.958Z"
                }
            })
        end
    end
end
