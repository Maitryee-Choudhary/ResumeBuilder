class Profile < ApplicationRecord
    has_one_attached :avatar

    has_many(:educations, dependent: :destroy)
    accepts_nested_attributes_for(:educations , reject_if: :reject_education_create, allow_destroy: true)

    has_many(:projects, dependent: :destroy)
    accepts_nested_attributes_for(:projects , reject_if: :reject_project_create, allow_destroy: true)

    belongs_to :user
        
    def reject_education_create(education)
        education[:degree].blank? or education[:school].blank? or education[:start].blank? or education[:end].blank?
    end

    def reject_project_create(project)
        project[:title].blank? or project[:url].blank? or project[:techstack].blank? or project[:description].blank?
    end

end