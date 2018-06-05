require 'rails_helper'

RSpec.feature 'Index' do
    scenario 'loading index page' do
      visit 'main/index'
      expect(page).to have_content('Hello')
    end
  end

