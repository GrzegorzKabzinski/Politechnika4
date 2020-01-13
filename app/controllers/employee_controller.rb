class EmployeeController < ApplicationController
  def index
    employee_response = Faraday.new.get("https://adm.edu.p.lodz.pl/user/users.php?search=#{params[:search_phrase]}").body.html_safe
    page = Nokogiri::HTML.parse(employee_response)
    @full_names = []
    @roles = []
    @affiliations = []
    page.css('div.user-info').css('a').css('h3').each do |full_name|
      @full_names << full_name.text
    end
    page.css('div.user-info').css('h4').each do |role|
      @roles << role.text
    end
    page.css('div.user-info').css('div.extra-info').css('ul').css('li').css('span.item-content').each do |affiliation|
      @affiliations << affiliation.text
    end
    @profile_links = []
    page.css('div.user-profile').css('div.user-info').css('a').each do |profile_link|
      @profile_links << profile_link['href'] if profile_link.text == 'Profil publiczny'
    end
    @workers = []
    @full_names.each_with_index do |employees, index|
      employee = Employee.new
      employee.full_name = employees
      employee.role = @roles[index]
      employee.affiliation = @affiliations[index]
      employee.link = @profile_links[index]
      @workers << employee
    end

    render :'employee/index'
  end

  def vcard
    vcard = VCardigan.create
    full_name = params[:full_name]
    vcard.name full_name.split.first, full_name.split.second
    vcard.fullname full_name
    send_data vcard.to_s, :filename => "#{full_name}.vcf"
  end
end
