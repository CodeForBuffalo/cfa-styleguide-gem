require 'spec_helper'

feature 'Pages' do
  scenario 'can load root page' do
    visit root_path

    expect(page.status_code).to eq 200
    expect(page).to have_content('CfA Styleguide')
  end

  scenario 'can load styleguide' do
    visit '/cfa/styleguide'

    expect(page.status_code).to eq 200
    expect(page).to have_content('Atoms')
  end

  scenario 'can load styleguide cbo dashboard' do
    visit '/cfa/styleguide/cbo-dashboard'

    expect(page.status_code).to eq 200
    expect(page).to have_content('Assister dashboard')
  end

  scenario 'can load styleguide cbo analytics' do
    visit '/cfa/styleguide/cbo-analytics'

    expect(page.status_code).to eq 200
    expect(page).to have_content('Overall numbers')
  end

  scenario 'can load styleguide current' do
    visit '/cfa/styleguide/current'

    expect(page.status_code).to eq 200
    expect(page).to have_content('The legal stuff')
  end

  scenario 'can load styleguide custom docs' do
    visit '/cfa/styleguide/custom-docs'

    expect(page.status_code).to eq 200
    expect(page).to have_content('First, we’ll need to figure out what proof you need to submit.')
  end
end
