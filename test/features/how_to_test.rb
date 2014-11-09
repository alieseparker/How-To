require 'test_helper'

feature 'List Page' do
  scenario 'should make a list' do
    visit root_path

    click_on 'New List'
    fill_in 'Title', with: 'Ingredients'
    click_on 'Create List'

    page.must_have_content 'List was successfully created'
  end

  scenario 'should make a step' do
    visit root_path

    click_on 'New List'
    fill_in 'Title', with: 'Ingredients'
    click_on 'Create List'
    click_on 'New Step'
    fill_in 'Body', with: 'Tomatoes'
    click_on 'Write Step'

    page.must_have_content 'Step was successfully created'
  end
end
